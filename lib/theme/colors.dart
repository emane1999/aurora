import 'package:flutter/material.dart';

import 'all_color.dart';

// Surface Themes
const ColorThemes SURFACE_BASE = ColorThemes(light: GRAY_50, dark: GRAY_800);
const ColorThemes SURFACE_PRIMARY = ColorThemes(
  light: GRAY_275,
  dark: GRAY_700,
);
const ColorThemes SURFACE_SELECTED = ColorThemes(
  light: GRAY_300,
  dark: GRAY_600,
);
const ColorThemes SURFACE_DISABLED = ColorThemes(
  light: GRAY_200,
  dark: GRAY_400,
);
const ColorThemes SURFACE_NAV = ColorThemes(
  light: OCEAN_BLUE_300,
  dark: OCEAN_BLUE_50,
);

// Text Themes
const ColorThemes TEXT_PRIMARY = ColorThemes(light: NAVY_50, dark: GRAY_50);
const ColorThemes TEXT_SECONDARY = ColorThemes(light: NAVY_100, dark: NAVY_100);
const ColorThemes TEXT_TERTIARY = ColorThemes(light: NAVY_100, dark: NAVY_100);
const ColorThemes TEXT_ERROR = ColorThemes(light: RED_100, dark: RED_50);
const ColorThemes TEXT_DISABLED = ColorThemes(light: GRAY_400, dark: GRAY_550);

// Border Themes
const ColorThemes BORDER_PRIMARY = ColorThemes(light: GRAY_300, dark: GRAY_400);
const ColorThemes BORDER_SECONDARY = ColorThemes(
  light: GRAY_600,
  dark: GRAY_500,
);
const ColorThemes BORDER_ICON = ColorThemes(light: NAVY_300, dark: GRAY_50);
const ColorThemes BORDER_BUTTON = ColorThemes(
  light: ORANGE_300,
  dark: ORANGE_200,
);
const ColorThemes BORDER_DISABLED = ColorThemes(
  light: GRAY_300,
  dark: GRAY_450,
);

// Scrollbar Theme
const ColorThemes SCROLLBAR_PRIMARY = ColorThemes(
  light: GRAY_450,
  dark: GRAY_400,
);

class ColorThemes {
  final Color light;
  final Color dark;

  const ColorThemes({required this.light, required this.dark});
}
