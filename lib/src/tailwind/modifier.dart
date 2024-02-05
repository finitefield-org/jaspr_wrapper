part of 'tailwind.dart';

extension TailwindClassAttrExtension on TailwindClassAttr {
  TailwindClassAttr get sm {
    return TailwindClassAttr('sm:$value');
  }

  TailwindClassAttr get md {
    return TailwindClassAttr('md:$value');
  }

  TailwindClassAttr get lg {
    return TailwindClassAttr('lg:$value');
  }

  TailwindClassAttr get hover {
    return TailwindClassAttr('hover:$value');
  }

  TailwindClassAttr get active {
    return TailwindClassAttr('active:$value');
  }

  TailwindClassAttr get dark {
    return TailwindClassAttr('dark:$value');
  }

  TailwindClassAttr get focusVisible {
    return TailwindClassAttr('focus-visible:$value');
  }

  TailwindClassAttr get groupHover {
    return TailwindClassAttr('group-hover:$value');
  }
}

const group = TailwindClassAttr('group');
