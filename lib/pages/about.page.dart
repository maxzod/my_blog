import 'package:flutter/material.dart';
import 'package:my_blog/views/page.template.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlogPageTemplate(
      body: Card(
        color: Color(0xFF30475e),
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.10,
          vertical: size.height * 0.20,
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.05,
            ),
            child: Text(
              'senior law student at Mansoura university and freelancer [mobile apps]' +
                  '\n' +
                  'recently started to learn node Js, you can know more about me throw my blog',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
