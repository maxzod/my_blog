import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_blog/config/colors.dart';
import 'package:my_blog/config/env.dart';
import 'package:my_blog/routes/router.gr.dart';
import 'package:my_blog/views/page.template.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:auto_route/auto_route.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlogPageTemplate(
        body: Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.08,
        vertical: size.height * 0.015,
      ),
      child: ListView.builder(
        itemCount: BlogConfig.posts.length,
        itemBuilder: (_, int index) {
          return OutlineButton(
            onPressed: () {
              context.router
                  .push(BlogPostRoute(id: BlogConfig.posts[index].id));
            },
            child: Card(
              color: BlogColors.cardsColor,
              child: Center(
                child: Container(
                  height: size.height * 0.23,
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.03,
                    vertical: size.height * 0.02,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CachedNetworkImage(
                              imageUrl: BlogConfig.posts[index].imageUrl,
                              fit: BoxFit.fill,
                              height: size.height * 0.20,
                              width: size.width * 0.20),
                          Text(
                            timeago.format(
                              BlogConfig.posts[index].createdAt,
                            ),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.01),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: BlogColors.buttonsColor,
                              child: Text(
                                BlogConfig.posts[index].title,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              BlogConfig.posts[index].desc,
                              maxLines: 3,
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
