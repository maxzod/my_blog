import 'package:flutter/material.dart';
import 'package:my_blog/config/colors.dart';
import 'package:my_blog/config/config.dart';
import 'package:my_blog/routes/router.gr.dart';
import 'package:my_blog/widgets/header.item.dart';
import 'package:auto_route/auto_route.dart';

class BlogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headerHeight = AppBar().preferredSize.height;
    final size = MediaQuery.of(context).size;
    return // header
        Container(
      height: headerHeight,
      width: size.width,
      color: BlogColors.headrFotterColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Row(
          children: [
            Text(
              Config.BLOG_NAME,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
              // style: TextS,
            ),
            Spacer(),
            HeaderItem(
                route: HomeRoute.name,
                title: 'home',
                onClick: () => context.router.push(HomeRoute())),
            HeaderItem(
              route: BlogRoute.name,
              title: 'blog',
              onClick: () => context.router.push(BlogRoute()),
            ),
            HeaderItem(
              route: AboutRoute.name,
              title: 'about',
              onClick: () => context.router.push(AboutRoute()),
            ),
            HeaderItem(
              route: ContactRoute.name,
              title: 'contact',
              onClick: () => context.router.push(ContactRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
