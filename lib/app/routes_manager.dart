import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class RoutesNames {
  static const String homeRoute = '/Home';
}

class RoutesPaths {
  static String homeRoute = '/Home';
}

late StatefulNavigationShell appNavigationShell;
final GoRouter appRouter = GoRouter(
  initialLocation: RoutesPaths.homeRoute,
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: RoutesPaths.homeRoute,
      pageBuilder: (context, state) {
        return TransitionPage(
          key: ValueKey(RoutesPaths.homeRoute),
          child: Scaffold(
            body: Center(
              child: Container(
                  width: 200.h,
                  height: 200.h,
                  color: ResponsiveBreakpoints.of(context).isDesktop
                      ? Colors.red
                      : ResponsiveBreakpoints.of(context).isTablet
                          ? Colors.blue
                          : Theme.of(context).primaryColor),
            ),
          ),
        );
      },
    ),
  ],
);

enum TransitionType { fade, scale }

class TransitionPage extends CustomTransitionPage<void> {
  static final CurveTween curveTween = CurveTween(curve: Curves.easeInOut);
  final TransitionType transitionType;
  TransitionPage({
    required LocalKey super.key,
    required super.child,
    this.transitionType = TransitionType.fade,
  }) : super(
          transitionsBuilder:
              (BuildContext context, animation, secondaryAnimation, child) {
            switch (transitionType) {
              case TransitionType.fade:
                return FadeTransition(
                    opacity: animation.drive(curveTween), child: child);
              case TransitionType.scale:
                return ScaleTransition(
                    scale: animation.drive(curveTween), child: child);
              default:
                return FadeTransition(
                    opacity: animation.drive(curveTween), child: child);
            }
          },
        );
}
