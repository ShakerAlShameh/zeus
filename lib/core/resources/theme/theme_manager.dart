import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors/color_light_manager.dart';
import '../fonts/font_manager.dart';

class ThemeManager {
  static ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorLightManager.primaryColor,
      disabledColor: ColorLightManager.darkGrey,
      primarySwatch: ColorLightManager.primarySwatch,
      cardColor: ColorLightManager.cardColor,
      scaffoldBackgroundColor: ColorLightManager.scaffoldBackgroundColor,
      fontFamily: FontFamilyManager.poppins,
      colorScheme: const ColorScheme.light(
        primary: ColorLightManager.primaryColor,
        onPrimary: ColorLightManager.surface,
        secondary: ColorLightManager.primaryColorLight,
        primaryContainer: ColorLightManager.primaryContainer,
        onPrimaryContainer: ColorLightManager.surface,
        shadow: ColorLightManager.shadow,
        surface: ColorLightManager.surface,
        error: ColorLightManager.error,
        surfaceTint: Colors.transparent,
        brightness: Brightness.light,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
          color: ColorLightManager.darkGrey,
        ),
        headlineMedium: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.normal,
          color: ColorLightManager.darkGrey,
        ),
        headlineSmall: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorLightManager.darkGrey,
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18.sp,
          color: ColorLightManager.lightBlack,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15.sp,
          color: ColorLightManager.black,
        ),
        bodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
          color: ColorLightManager.darkGrey,
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18.sp,
          color: ColorLightManager.black,
        ),
        labelMedium: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: ColorLightManager.black,
        ),
        labelSmall: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10.sp,
          color: ColorLightManager.darkGrey,
        ),
      ),
      primaryTextTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
          color: ColorLightManager.primaryColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.normal,
          color: ColorLightManager.primaryColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorLightManager.primaryColor,
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18.sp,
          color: ColorLightManager.primaryColor,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15.sp,
          color: ColorLightManager.primaryColor,
        ),
        bodySmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
          color: ColorLightManager.primaryColor,
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18.sp,
          color: ColorLightManager.primaryColor,
        ),
        labelMedium: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: ColorLightManager.primaryColor,
        ),
        labelSmall: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10.sp,
          color: ColorLightManager.primaryColor,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        errorStyle: TextStyle(
          color: ColorLightManager.error,
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
        ),
        fillColor: ColorLightManager.surface,
        hoverColor: ColorLightManager.primaryColorLight,
        focusColor: ColorLightManager.primaryColorLight,
        labelStyle: TextStyle(
          fontSize: 18.sp,
          color: ColorLightManager.lightBlack,
          fontWeight: FontWeight.normal,
        ),
        alignLabelWithHint: true,
        floatingLabelStyle:
            TextStyle(fontSize: 20.sp, fontFamily: FontFamilyManager.poppins),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorLightManager.primaryColorLight,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(9.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorLightManager.error,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(9.r),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorLightManager.primaryColorLight,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(9.r),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(9.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorLightManager.secondaryGrey,
            width: 0.8,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(9.r),
        ),
        contentPadding: EdgeInsets.zero,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: ColorLightManager.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.r),
          side: const BorderSide(
            color: ColorLightManager.primaryColor,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
            ),
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return const BorderSide(
                  color: ColorLightManager.softGrey,
                  width: 1,
                  style: BorderStyle.solid,
                );
              }
              return const BorderSide(
                color: ColorLightManager.primaryColor,
                width: 1,
                style: BorderStyle.solid,
              );
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.transparent;
              } else if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primarySwatch.shade100;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primarySwatch.shade300;
              }
              return Colors.transparent;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ColorLightManager.softGrey;
              } else if (states.contains(MaterialState.pressed)) {
                return Colors.white;
              }
              return ColorLightManager.primaryColor;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primarySwatch.shade100;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primarySwatch.shade300;
              }
              return ColorLightManager.surface;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.softGrey,
                );
              } else if (states.contains(MaterialState.hovered)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              } else if (states.contains(MaterialState.pressed)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              }
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorLightManager.primaryColor,
              );
            },
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorLightManager.grey;
            } else if (states.contains(MaterialState.hovered)) {
              return ColorLightManager.primarySwatch.shade700;
            } else if (states.contains(MaterialState.pressed)) {
              return ColorLightManager.primaryColorDark;
            }
            return ColorLightManager.primaryColor;
          },
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return ColorLightManager.primarySwatch.shade700;
            } else if (states.contains(MaterialState.pressed)) {
              return ColorLightManager.primaryColorDark;
            }
            return ColorLightManager.surface;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorLightManager.softGrey;
            } else if (states.contains(MaterialState.hovered)) {
              return ColorLightManager.surface;
            } else if (states.contains(MaterialState.pressed)) {
              return ColorLightManager.surface;
            }
            return ColorLightManager.surface;
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.r),
          ),
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorLightManager.surface,
              );
            } else if (states.contains(MaterialState.hovered)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorLightManager.surface,
              );
            } else if (states.contains(MaterialState.pressed)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorLightManager.surface,
              );
            }
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorLightManager.surface,
            );
          },
        ),
      )),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.transparent;
              } else if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primarySwatch.shade100;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primarySwatch.shade300;
              }
              return Colors.transparent;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primarySwatch.shade100;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primarySwatch.shade300;
              }
              return ColorLightManager.surface;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ColorLightManager.softGrey;
              } else if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primaryColor;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primaryColor;
              }
              return ColorLightManager.primaryColor;
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
            ),
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.softGrey,
                );
              } else if (states.contains(MaterialState.hovered)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              } else if (states.contains(MaterialState.pressed)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              } else if (states.contains(MaterialState.focused)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              }
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorLightManager.primaryColor,
              );
            },
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.transparent;
              } else if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primarySwatch.shade100;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primarySwatch.shade300;
              }
              return Colors.transparent;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primarySwatch;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primarySwatch;
              }
              return ColorLightManager.surface;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ColorLightManager.softGrey;
              } else if (states.contains(MaterialState.hovered)) {
                return ColorLightManager.primaryColor;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorLightManager.primaryColor;
              }
              return ColorLightManager.primaryColor;
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
            ),
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.softGrey,
                );
              } else if (states.contains(MaterialState.hovered)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              } else if (states.contains(MaterialState.pressed)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              } else if (states.contains(MaterialState.focused)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorLightManager.primaryColor,
                );
              }
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorLightManager.primaryColor,
              );
            },
          ),
        ),
      ),
      dividerTheme:
          DividerThemeData(color: ColorLightManager.black, thickness: 1.w));
  static ThemeData get darkTheme => ThemeData();
}
