part of 'tailwind.dart';

extension TailwindAttrExtension on TailwindAttr {
  TailwindAttr get sm {
    return TailwindAttr('sm:$value');
  }

  TailwindAttr get md {
    return TailwindAttr('md:$value');
  }

  TailwindAttr get lg {
    return TailwindAttr('lg:$value');
  }

  TailwindAttr get hover {
    return TailwindAttr('hover:$value');
  }

  TailwindAttr get active {
    return TailwindAttr('active:$value');
  }

  TailwindAttr get dark {
    return TailwindAttr('dark:$value');
  }

  TailwindAttr get focusVisible {
    return TailwindAttr('focus-visible:$value');
  }

  TailwindAttr get groupHover {
    return TailwindAttr('group-hover:$value');
  }

  TailwindAttr get opacity10 {
    return TailwindAttr('$value/10');
  }

  TailwindAttr get opacity20 {
    return TailwindAttr('$value/20');
  }

  TailwindAttr get opacity30 {
    return TailwindAttr('$value/30');
  }

  TailwindAttr get opacity40 {
    return TailwindAttr('$value/40');
  }

  TailwindAttr get opacity50 {
    return TailwindAttr('$value/50');
  }

  TailwindAttr get opacity60 {
    return TailwindAttr('$value/60');
  }

  TailwindAttr get opacity70 {
    return TailwindAttr('$value/70');
  }

  TailwindAttr get opacity80 {
    return TailwindAttr('$value/80');
  }

  TailwindAttr get opacity90 {
    return TailwindAttr('$value/90');
  }
}

final allModifiers = <String, TailwindAttr Function(TailwindAttr)>{
  'sm': (t) => t.sm,
  'md': (t) => t.md,
  'lg': (t) => t.lg,
  'hover': (t) => t.hover,
  'active': (t) => t.active,
  'dark': (t) => t.dark,
  'focusVisible': (t) => t.focusVisible,
  'groupHover': (t) => t.groupHover,
  'opacity10': (t) => t.opacity10,
  'opacity20': (t) => t.opacity20,
  'opacity30': (t) => t.opacity30,
  'opacity40': (t) => t.opacity40,
  'opacity50': (t) => t.opacity50,
  'opacity60': (t) => t.opacity60,
  'opacity70': (t) => t.opacity70,
  'opacity80': (t) => t.opacity80,
  'opacity90': (t) => t.opacity90,
};
