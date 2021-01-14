import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_blog/views/page.template.dart';

class BlogPostPage extends StatelessWidget {
  final int id;
  BlogPostPage(@PathParam('id') this.id);

  @override
  Widget build(BuildContext context) {
    return BlogPageTemplate(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'post :$id',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
