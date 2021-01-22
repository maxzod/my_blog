// import 'package:auto_route/auto_route.dart';
// import 'package:my_blog/routes/router.gr.dart';
// import 'package:my_blog/services/auth.dart';

// class AuthGuard extends AutoRouteGuard {
//   @override
//   Future<bool> canNavigate(
//       List<PageRouteInfo> pendingRoutes, StackRouter router) {
//     final bool canNavigate = AuthService().loggendIn;
//     if (!canNavigate) {
//       print('you shall not pass');
//       router.push(HomeRoute());
//     } else {
//       print('you can go');
//     }

//     return Future.value(canNavigate);
//   }
// }
