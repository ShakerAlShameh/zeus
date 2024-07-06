import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
