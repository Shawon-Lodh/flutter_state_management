import 'package:flutter/material.dart';

enum KColor {
  primary,
  secondary,
  bug,
  chocolate,
  dragon,
  electric,
  fairy,
  fighting,
  fire,
  flying,
  ghost,
  normal,
  grass,
  ground,
  ice,
  poison,
  psychic,
  rock,
  steel,
  water,
  grayDark,
  grayLight,
  grayMedium,
  grayBackground,
  white
}

extension KColorExtention on KColor {
  Color get color {
    switch (this) {
      case KColor.primary:
        return Color(0xffDC0A2D);
      case KColor.secondary:
        return Color(0xffDC0A2D);
      case KColor.bug:
        return Color(0xffA7B723);
      case KColor.chocolate:
        return Color(0xff75574C);
      case KColor.dragon:
        return Color(0xff7037FF);
      case KColor.electric:
        return Color(0xffF9CF30);
      case KColor.fairy:
        return Color(0xffE69EAC);
      case KColor.fighting:
        return Color(0xffC12239);
      case KColor.fire:
        return Color(0xffF57D31);
      case KColor.flying:
        return Color(0xffA891EC);
      case KColor.ghost:
        return Color(0xff70559B);
      case KColor.normal:
        return Color(0xffAAA67F);
      case KColor.grass:
        return Color(0xff74CB48);
      case KColor.ground:
        return Color(0xffDEC16B);
      case KColor.ice:
        return Color(0xff9AD6DF);
      case KColor.poison:
        return Color(0xffA43E9E);
      case KColor.psychic:
        return Color(0xffFB5584);
      case KColor.rock:
        return Color(0xffB69E31);
      case KColor.steel:
        return Color(0xffB7B9D0);
      case KColor.water:
        return Color(0xff6493EB);
      case KColor.grayDark:
        return Color(0xff212121);
      case KColor.grayLight:
        return Color(0xffE0E0E0);
      case KColor.grayMedium:
        return Color(0xff666666);
      case KColor.grayBackground:
        return Color(0xffEFEFEF);
      case KColor.white:
        return Colors.white;
    default:
      return Color(0xffDC0A2D);
    }
  }


  MaterialColor get swatch {
    return MaterialColor(
      color.value, // Use the integer value of the color
      <int, Color>{
        50: color.withOpacity(0.1),
        100: color.withOpacity(0.2),
        200: color.withOpacity(0.3),
        300: color.withOpacity(0.4),
        400: color.withOpacity(0.5),
        500: color.withOpacity(0.6),
        600: color.withOpacity(0.7),
        700: color.withOpacity(0.8),
        800: color.withOpacity(0.9),
        900: color,
      },
    );
  }
}
