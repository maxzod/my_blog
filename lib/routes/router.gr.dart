// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../pages/home.page.dart' as _i2;
import '../pages/blog.page.dart' as _i3;
import '../pages/about.page.dart' as _i4;
import '../pages/contact.page.dart' as _i5;
import '../pages/post.page.dart' as _i6;

class BlogRouter extends _i1.RootStackRouter {
  BlogRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.HomePage());
    },
    BlogRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.BlogPage());
    },
    AboutRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.AboutPage());
    },
    ContactRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.ContactPage());
    },
    BlogPostRoute.name: (entry) {
      var route = entry.routeData.as<BlogPostRoute>();
      return _i1.MaterialPageX(entry: entry, child: _i6.BlogPostPage(route.id));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/', routeBuilder: (match) => HomeRoute.fromMatch(match)),
        _i1.RouteConfig<BlogRoute>(BlogRoute.name,
            path: '/blog', routeBuilder: (match) => BlogRoute.fromMatch(match)),
        _i1.RouteConfig<AboutRoute>(AboutRoute.name,
            path: '/about',
            routeBuilder: (match) => AboutRoute.fromMatch(match)),
        _i1.RouteConfig<ContactRoute>(ContactRoute.name,
            path: '/contact',
            routeBuilder: (match) => ContactRoute.fromMatch(match)),
        _i1.RouteConfig<BlogPostRoute>(BlogPostRoute.name,
            path: '/posts/:id',
            routeBuilder: (match) => BlogPostRoute.fromMatch(match))
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class BlogRoute extends _i1.PageRouteInfo {
  const BlogRoute() : super(name, path: '/blog');

  BlogRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'BlogRoute';
}

class AboutRoute extends _i1.PageRouteInfo {
  const AboutRoute() : super(name, path: '/about');

  AboutRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AboutRoute';
}

class ContactRoute extends _i1.PageRouteInfo {
  const ContactRoute() : super(name, path: '/contact');

  ContactRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ContactRoute';
}

class BlogPostRoute extends _i1.PageRouteInfo {
  BlogPostRoute({this.id})
      : super(name, path: '/posts/:id', params: {'id': id});

  BlogPostRoute.fromMatch(_i1.RouteMatch match)
      : id = match.pathParams.getInt('id'),
        super.fromMatch(match);

  final int id;

  static const String name = 'BlogPostRoute';
}
