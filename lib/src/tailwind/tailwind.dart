// ignore_for_file: constant_identifier_names

import '../attr.dart';

part 'modifier.dart';
part 'tailwindcss.dart';

class TailwindClassAttr extends ClassAttr {
  const TailwindClassAttr(String value) : super(value);
}

const Z10 = TailwindClassAttr('-z-10');
const Z20 = TailwindClassAttr('-z-20');
const Z30 = TailwindClassAttr('-z-30');
const Z40 = TailwindClassAttr('-z-40');
const Z50 = TailwindClassAttr('-z-50');
