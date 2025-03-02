import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'all_color.dart';
import 'colors.dart';

class GlobalThemData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  ThemeData lightThemeData = themeData(
    lightTheme(_lightColorScheme, _lightFocusColor),
  );

  ThemeData darkThemeData = themeData(
    lightTheme(_darkColorScheme, _darkFocusColor),
  );

  static ThemeData themeData(ThemeData themeData) {
    return themeData;
  }

  static ThemeData lightTheme(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      cardColor: colorScheme.surfaceContainerHigh,
      shadowColor: SHADOWs,
      colorScheme: colorScheme,
      focusColor: focusColor,
      primaryColor: colorScheme.primary,
      dividerTheme: DividerThemeData(
        color: TURQUOISE_500,
        thickness: 2,
        space: 10,
        endIndent: 250,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsetsDirectional.only(
            start: 16.w,
            top: 4.w,
            end: 16.w,
            bottom: 4.w,
          ),
          foregroundColor: BORDER_PRIMARY.light,
          backgroundColor: colorScheme.surfaceContainerHigh,
          side: BorderSide(color: BORDER_PRIMARY.light),
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: EdgeInsetsDirectional.only(
            start: 24.w,
            top: 8.w,
            end: 24.w,
            bottom: 8.w,
          ),
          foregroundColor: colorScheme.primary,
          backgroundColor: Colors.transparent,
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: OCEAN_BLUE_20,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontSize: 12.sp,
              color: colorScheme.onSecondary,
              fontWeight: FontWeight.w500,
              fontFamily: 'Sora',
            );
          }
          return TextStyle(
            fontSize: 12.sp,
            color: colorScheme.primary,
            fontWeight: FontWeight.w300,
            fontFamily: 'Sora',
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: colorScheme.onSecondary);
          }

          return IconThemeData(color: colorScheme.primary);
        }),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 18.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w900,
          fontFamily: 'Nunito',
        ),
        displaySmall: TextStyle(
          fontSize: 18.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w600,
          fontFamily: 'Sora',
        ),
        displayMedium: TextStyle(
          fontSize: 32.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w600,
          fontFamily: 'AllRoundGothic',
        ),
        headlineLarge: TextStyle(
          fontSize: 34.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w800,
          fontFamily: 'Nunito',
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w700,
          fontFamily: 'AllRoundGothic',
        ),
        titleMedium: TextStyle(
          fontSize: 24.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w400,
          fontFamily: 'Sora',
        ),
        labelLarge: TextStyle(
          fontSize: 16.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w400,
          fontFamily: 'Sora',
        ),
        labelMedium: TextStyle(
          fontSize: 14.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w300,
          fontFamily: 'Sora',
        ),
        labelSmall: TextStyle(
          fontSize: 12.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w300,
          fontFamily: 'Sora',
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: colorScheme.primary,
        unselectedLabelColor: colorScheme.onSurfaceVariant,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        focusColor: colorScheme.onTertiary,
        iconColor: colorScheme.onSurface,
        errorStyle: TextStyle(
          fontSize: 12.sp,
          color: colorScheme.onError,
          fontWeight: FontWeight.w300,
          fontFamily: 'Sora',
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.onSurfaceVariant),
          borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colorScheme.error, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colorScheme.onTertiary, width: 1.2),
        ),
        hintStyle: TextStyle(
          fontSize: 12.sp,
          color: colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w300,
          fontFamily: 'Sora',
        ),
        fillColor: colorScheme.surfaceContainerHigh,
        contentPadding: EdgeInsets.all(8),
      ),
    );
  }

  // Dark Theme data
  static ThemeData darkTheme(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      focusColor: focusColor,
      primaryColor: colorScheme.primary,
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: OCEAN_BLUE_20,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontSize: 12.sp,
              color: colorScheme.onSecondary,
              fontWeight: FontWeight.w500,
              fontFamily: 'Sora',
            );
          }
          return TextStyle(
            fontSize: 12.sp,
            color: colorScheme.primary,
            fontWeight: FontWeight.w300,
            fontFamily: 'Sora',
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: colorScheme.onSecondary);
          }

          return IconThemeData(color: colorScheme.primary);
        }),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.onPrimary,
          alignment: Alignment.center,
          maximumSize: Size(103, 41),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: TURQUOISE_500,
        thickness: 2,
        space: 10,
        indent: 16,
        endIndent: 256,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 18.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w900,
          fontFamily: 'Nunito',
        ),
        displayMedium: TextStyle(
          fontSize: 32.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w600,
          fontFamily: 'AllRoundGothic',
        ),
        displaySmall: TextStyle(
          fontSize: 18.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w600,
          fontFamily: 'Sora',
        ),
        headlineLarge: TextStyle(
          fontSize: 34.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w800,
          fontFamily: 'Nunito',
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w700,
          fontFamily: 'AllRoundGothic',
        ),
        titleMedium: TextStyle(
          fontSize: 24.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w700,
          fontFamily: 'Sora',
        ),
        labelLarge: TextStyle(
          fontSize: 16.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w400,
          fontFamily: 'Sora',
        ),
        labelMedium: TextStyle(
          fontSize: 14.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w300,
          fontFamily: 'Sora',
        ),
        labelSmall: TextStyle(
          fontSize: 12.sp,
          color: colorScheme.primary,
          fontWeight: FontWeight.w300,
          fontFamily: 'Sora',
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: colorScheme.onPrimary,
          fixedSize: Size(103, 60),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(backgroundColor: colorScheme.onPrimary),
      ),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: colorScheme.onSurface,
        errorStyle: TextStyle(
          fontSize: 12.sp,
          color: colorScheme.onError,
          fontWeight: FontWeight.w300,
          fontFamily: 'Sora',
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: BORDER_PRIMARY.dark),
          borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
        ),
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w400,
          fontFamily: 'Sora',
        ),
        fillColor: colorScheme.onSurfaceVariant,
        contentPadding: EdgeInsets.all(8),
      ),
    );
  }

  static final ColorScheme _lightColorScheme = ColorScheme(
    primary: TEXT_PRIMARY.light,
    onPrimary: SKY_BLUE_250,
    onPrimaryContainer: GRAY_50,
    secondary: NAVY_200,
    onSecondary: TEXT_SECONDARY.light,
    onSecondaryContainer: SURFACE_PRIMARY.light,
    onTertiary: TEXT_TERTIARY.light,
    error: Colors.redAccent,
    onError: TEXT_ERROR.light,
    surface: SURFACE_BASE.light,
    onSurface: SURFACE_DISABLED.light,
    surfaceContainerHigh: SURFACE_PRIMARY.light,
    onSurfaceVariant: TEXT_DISABLED.light,
    shadow: SHADOW,
    brightness: Brightness.light,
  );
  static final ColorScheme _darkColorScheme = ColorScheme(
    primary: TEXT_PRIMARY.dark,
    onPrimary: SKY_BLUE_250,
    onPrimaryContainer: GRAY_50,
    secondary: NAVY_200,
    onSecondary: TechnoWhite,
    onSecondaryContainer: SURFACE_PRIMARY.dark,
    tertiary: TEXT_SECONDARY.light,
    onTertiary: TEXT_TERTIARY.dark,
    surface: SURFACE_BASE.dark,
    onSurface: SURFACE_DISABLED.dark,
    onSurfaceVariant: TEXT_DISABLED.dark,
    surfaceContainerHigh: SURFACE_PRIMARY.dark,
    error: Colors.redAccent,
    onError: TEXT_ERROR.dark,
    shadow: SHADOW,
    brightness: Brightness.dark,
  );
}
