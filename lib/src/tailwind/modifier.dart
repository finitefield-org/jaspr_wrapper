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

final allModifiers = <String, TailwindClassAttr Function(TailwindClassAttr)>{
  'sm': (t) => t.sm,
  'md': (t) => t.md,
  'lg': (t) => t.lg,
  'hover': (t) => t.hover,
  'active': (t) => t.active,
  'dark': (t) => t.dark,
  'focusVisible': (t) => t.focusVisible,
  'groupHover': (t) => t.groupHover,
};
