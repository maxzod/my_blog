import 'package:flutter/material.dart';

/// * pass it to Meaterial App theme to disable web navegation transaitons
class NoTransitionsOnWeb extends PageTransitionsTheme {
  @override
  Widget buildTransitions<T>(
    route,
    context,
    animation,
    secondaryAnimation,
    child,
  ) {
    return child;
    // if (kIsWeb) {
    // //*  disable for web only
    //   return child;
    // }
    // return super.buildTransitions(
    //   route,
    //   context,
    //   animation,
    //   secondaryAnimation,
    //   child,
    // );
  }
}
