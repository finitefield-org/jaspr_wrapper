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

  TailwindClassAttr get opacity10 {
    return TailwindClassAttr('$value/10');
  }

  TailwindClassAttr get opacity20 {
    return TailwindClassAttr('$value/20');
  }

  TailwindClassAttr get opacity30 {
    return TailwindClassAttr('$value/30');
  }

  TailwindClassAttr get opacity40 {
    return TailwindClassAttr('$value/40');
  }

  TailwindClassAttr get opacity50 {
    return TailwindClassAttr('$value/50');
  }

  TailwindClassAttr get opacity60 {
    return TailwindClassAttr('$value/60');
  }

  TailwindClassAttr get opacity70 {
    return TailwindClassAttr('$value/70');
  }

  TailwindClassAttr get opacity80 {
    return TailwindClassAttr('$value/80');
  }

  TailwindClassAttr get opacity90 {
    return TailwindClassAttr('$value/90');
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
