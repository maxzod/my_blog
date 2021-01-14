import 'package:flutter/material.dart';
import 'package:my_blog/views/fotter.dart';
import 'package:my_blog/views/header.dart';

class BlogPageTemplate extends StatelessWidget {
  final Widget body;
  BlogPageTemplate({@required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
