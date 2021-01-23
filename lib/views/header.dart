import 'package:flutter/material.dart';
import 'package:flutter_queen/flutter_queen.dart';
import 'package:my_blog/config/colors.dart';
import 'package:my_blog/config/env.dart';
import 'package:my_blog/routes/router.gr.dart';
import 'package:my_blog/widgets/header.item.dart';
import 'package:auto_route/auto_route.dart';

class BlogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return QueenNavBar(
      color: BlogColors.headrFotterColor,
      logo: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
        child: Text(
          BlogConfig.BLOG_NAME,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          // style: TextS,
        ),
      ),
      children: [
        HeaderItem(
            route: HomeRoute.name,
            title: 'home',
            onClick: () => context.router.replace(HomeRoute())),
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
      drawerButtonBuilder: () {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .01),
          child: OutlineButton(
            hoverColor: BlogColors.buttonsColor,
            child: Icon(Icons.menu),
            onPressed: () {
              showDialog(
                  context: context,
                  child: Dialog(
                    child: Container(
                      // color: Colors.amber,
                      height: size.height * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                            onClick: () =>
                                context.router.replace(ContactRoute()),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
          ),
        );
      },
    );
  }
}
