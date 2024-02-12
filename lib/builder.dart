import 'package:build/build.dart';
import 'package:jaspr_wrapper/jaspr_wrapper.dart';

Builder tailwindBuilder(BuilderOptions options) => TailwindBuilder();

class TailwindBuilder implements Builder {
  @override
  Future build(BuildStep buildStep) async {
    // Each [buildStep] has a single input.
    var inputId = buildStep.inputId;

    // Create a new target [AssetId] based on the old one.
    var contents = await buildStep.readAsString(inputId);
    contents = contents.replaceAll('\n', '');

    final attrs = List<TailwindAttr>.empty(growable: true);
    for (final a in allTailwindAttrs.entries) {
      if (contents.contains(a.key)) {
        attrs.add(a.value);
        for (final b in getModifiedTailwindAttr(contents, a.value, a.key)) {
          attrs.add(b);
        }
      }
    }

    // If there is no tailwind attribute, don't write anything.
    if (attrs.isEmpty) {
      return;
    }

    final outputId = AssetId(
      inputId.package,
      inputId.path
          .replaceFirst('lib/', 'lib/tailwind/')
          .replaceFirst('.dart', '.tailwind.dart'),
    );

    // Write out the new asset.
    await buildStep.writeAsString(
        outputId, '// ${attrs.map((a) => a.value).join('\n// ')}');
  }

  @override
  final buildExtensions = const {
    "^lib/{{}}.dart": ["lib/tailwind/{{}}.tailwind.dart"]
  };
}

Iterable<TailwindAttr> getModifiedTailwindAttr(
    String contents, TailwindAttr attr, String attrStr) sync* {
  for (final m in allModifiers.entries) {
    if (contents.contains('$attrStr.${m.key}')) {
      yield m.value(attr);
      yield* getModifiedTailwindAttr(
          contents, m.value(attr), '$attrStr.${m.key}');
    }
  }
}
