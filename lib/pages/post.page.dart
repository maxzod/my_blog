import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:my_blog/views/page.template.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogPostPage extends StatelessWidget {
  final int id;
  BlogPostPage(@PathParam('id') this.id);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlogPageTemplate(
      body: FutureBuilder(
        future: rootBundle.loadString('/assets/posts/$id.md'),
        builder: (_, AsyncSnapshot snap) {
          if (snap.hasData) {
            return Markdown(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.10,
              ),
              selectable: true,
              data: snap.data,
              checkboxBuilder: (bool isCheked) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      // horizontal: size.width * 0.0,
                      ),
                  child: Checkbox(
                    onChanged: (val) {},
                    activeColor: Colors.black,
                    value: isCheked,
                  ),
                );
              },
              styleSheet:
                  MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
                h1: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
                h1Align: WrapAlignment.center,
                h2: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                a: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
                p: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                code: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTapLink: (String text, String href, String title) {
                launch(href);
              },
            );
          } else if (snap.hasError) {
            return Center(
              child: Text(
                '404',
                style: TextStyle(
                    fontSize: 90,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
