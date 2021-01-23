import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:my_blog/config/colors.dart';
import 'package:my_blog/config/env.dart';
import 'package:my_blog/config/page.transation.dart';
import 'package:my_blog/routes/router.gr.dart';
// import 'package:url_strategy/url_strategy.dart';

void removeHash() {
  bool isWeb = true;
  if (isWeb) {
    setUrlStrategy(PathUrlStrategy());
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  removeHash();
  // setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _router = BlogRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: BlogColors.backgroudColor,
        // disable  navigation animation for all devices
        pageTransitionsTheme: NoTransitionsOnWeb(),
        // textTheme: GoogleFonts.cairoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      title: BlogConfig.BLOG_NAME,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
