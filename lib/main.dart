import 'package:flutter/material.dart';
import 'package:my_blog/config/colors.dart';
import 'package:my_blog/config/config.dart';
import 'package:my_blog/routes/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _router = BlogRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: BlogColors.backgroudColor,
        // textTheme: GoogleFonts.cairoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      title: Config.BLOG_NAME,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
