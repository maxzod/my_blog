import 'package:flutter/material.dart';
import 'package:my_blog/routes/router.gr.dart';
import 'package:my_blog/views/fotter.dart';
import 'package:my_blog/views/header.dart';
import 'package:my_blog/widgets/header.item.dart';
import 'package:auto_route/auto_route.dart';

class BlogPageTemplate extends StatelessWidget {
  final Widget body;
  BlogPageTemplate({@required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          children: [
            HeaderItem(
              route: BlogRoute.name,
              title: 'blog',
              onClick: () => context.router.replace(BlogRoute()),
            ),
            HeaderItem(
              route: AboutRoute.name,
              title: 'about',
              onClick: () => context.router.replace(AboutRoute()),
            ),
            HeaderItem(
              route: ContactRoute.name,
              title: 'contact',
              onClick: () => context.router.replace(ContactRoute()),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          BlogHeader(),
          Expanded(child: body),
          BlogFotter(),
        ],
      ),
    );
  }
}
