import 'package:auto_route/auto_route.dart';
import 'package:my_blog/pages/about.page.dart';
import 'package:my_blog/pages/blog.page.dart';
import 'package:my_blog/pages/contact.page.dart';
import 'package:my_blog/pages/not.found.page.dart';
import 'package:my_blog/pages/post.page.dart';
import 'package:my_blog/pages/home.page.dart';
// flutter packages pub run build_runner watch

@MaterialAutoRouter(
  // Replace Page with Router ex HomeScreenPage will be => HomeScreenRouter
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(path: '/blog', page: BlogPage),
    MaterialRoute(path: '/about', page: AboutPage),
    MaterialRoute(path: '/contact', page: ContactPage),
    MaterialRoute(path: '/posts/:id', page: BlogPostPage),
    MaterialRoute(
      path: '*',
      page: NotFoundPage,
    ),
  ],
)
class $BlogRouter {}
