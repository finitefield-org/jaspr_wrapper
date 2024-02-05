import 'package:jaspr/jaspr.dart';

import '../attr.dart';

part 'content.dart';
part 'forms.dart';
part 'media.dart';
part 'other.dart';
part 'svg.dart';
part 'text.dart';

final _events = events;

String? _attrsToClasses(Set<Attr>? attrs) {
  if (attrs == null) {
    return null;
  }
  final ret = attrs.whereType<ClassAttr>().map((e) => e.value).join(' ');
  return ret.isEmpty ? null : ret;
}

Map<String, String> _attrsToAttributesMap(Set<Attr>? attrs) {
  final ret = <String, String>{};
  if (attrs == null) {
    return ret;
  }
  for (final a in attrs) {
    if (a is ClassAttr) {
      continue;
    }
    if (ret.containsKey(a.name)) {
      throw Exception('Duplicate attribute: ${a.name}');
    }
    ret[a.name] = a.value;
  }
  return ret;
}
