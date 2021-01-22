import 'package:flutter/material.dart';
import 'package:my_blog/views/page.template.dart';

class NotFoundPage extends StatelessWidget {
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
              '404 :/ ',
              style: TextStyle(
                  fontSize: 90, fontWeight: FontWeight.bold, color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
