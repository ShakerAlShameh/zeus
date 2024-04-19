import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:zeus_card/app/routes_manager.dart';
import '../core/resources/theme/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = const Size(1920, 960);
    return ScreenUtilInit(
      designSize: size,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (secondContext, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: Builder(builder: (_) {
          Size newSize = ResponsiveBreakpoints.of(_).breakpoint.name == MOBILE
              ? const Size(1200, 960)
              : ResponsiveBreakpoints.of(_).breakpoint.name == TABLET
                  ? const Size(1200, 960)
                  : const Size(1920, 960);
          if (size != newSize) {
            size = newSize;
            ScreenUtil.init(context, designSize: size);
          }
          Theme.of(context).switchTheme;
          if (ResponsiveBreakpoints.of(_).breakpoint.name == MOBILE) {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown,
            ]);
          } else {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown,
            ]);
          }
          return MaterialApp.router(
            title: "Zeus Card",
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
              },
            ),
            theme: ThemeManager.lightTheme,
            routerConfig: appRouter,
            debugShowCheckedModeBanner: false,
          );
        }),
      ),
    );
  }
}
