import 'dart:convert';

import 'package:jaspr/jaspr.dart' as jaspr;
import 'package:jaspr/server.dart' as server;

abstract class StaticComponent {
  void generate(StringBuffer buffer);
}

class StaticDomComponent extends jaspr.DomComponent implements StaticComponent {
  const StaticDomComponent({
    super.key,
    required super.tag,
    super.id,
    super.classes,
    super.styles,
    super.attributes,
    super.events,
    super.child,
    super.children,
  });

  @override
  void generate(StringBuffer buffer) {
    buffer.write('<$tag');
    if (id != null) {
      buffer.write(' id="$id"');
    }
    if (classes != null && classes!.isNotEmpty) {
      buffer.write(' class="$classes"');
    }
    if (attributes != null && attributes!.isNotEmpty) {
      for (final attribute in attributes!.entries) {
        buffer.write(' ${attribute.key}="${attribute.value}"');
      }
    }
    buffer.write('>');
    if (children.isNotEmpty) {
      for (final child in children) {
        if (child is StaticComponent) {
          (child as StaticComponent).generate(buffer);
        } else {
          throw '$child is not a StaticComponent';
        }
      }
    }
    buffer.write('</$tag>');
  }
}

abstract class StaticStatelessComponent extends jaspr.StatelessComponent
    implements StaticComponent {
  @override
  void generate(StringBuffer buffer) {
    for (final child in build(_fakeBuildContext)) {
      if (child is StaticComponent) {
        (child as StaticComponent).generate(buffer);
      } else {
        throw '$child is not a StaticComponent';
      }
    }
  }
}

class Text extends jaspr.Text implements StaticComponent {
  Text(super.text);

  @override
  void generate(StringBuffer buffer) {
    buffer.write(htmlEscape.convert(text));
  }
}

class FakeBuildContext implements jaspr.BuildContext {
  @override
  jaspr.AppBinding get binding => server.ServerAppBinding();

  @override
  jaspr.Component get component => jaspr.div([]);

  @override
  bool get debugDoingBuild => false;

  @override
  T? dependOnInheritedComponentOfExactType<T extends jaspr.InheritedComponent>(
      {Object? aspect}) {
    return null;
  }

  @override
  jaspr.InheritedComponent dependOnInheritedElement(
      jaspr.InheritedElement ancestor,
      {Object? aspect}) {
    throw 'not implemented';
  }

  @override
  void dispatchNotification(jaspr.Notification notification) {}

  @override
  T? findAncestorStateOfType<T extends jaspr.State<jaspr.StatefulComponent>>() {
    return null;
  }

  @override
  jaspr.InheritedElement? getElementForInheritedComponentOfExactType<
      T extends jaspr.InheritedComponent>() {
    return null;
  }

  @override
  void visitAncestorElements(bool Function(jaspr.Element element) visitor) {}

  @override
  void visitChildElements(jaspr.ElementVisitor visitor) {}
}

final _fakeBuildContext = FakeBuildContext();
