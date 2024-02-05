abstract class Attr {
  const Attr();
  String get name;
  String get value;
}

class BasicAttr extends Attr {
  @override
  final String name;
  @override
  final String value;

  const BasicAttr(this.name, this.value);
}

class ClassAttr extends BasicAttr {
  const ClassAttr(String value) : super('class', value);
}

class HrefAttr extends BasicAttr {
  const HrefAttr(String value) : super('href', value);
}

class SrcAttr extends BasicAttr {
  const SrcAttr(String value) : super('src', value);
}

class AltAttr extends BasicAttr {
  const AltAttr(String value) : super('alt', value);
}
