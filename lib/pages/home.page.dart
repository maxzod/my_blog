import 'package:flutter/material.dart';
import 'package:my_blog/views/page.template.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlogPageTemplate(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to my blog .' +
                '\n' +
                "i'm a mobile app Developer" +
                '\n' +
                'I hope you can find something useful in this Blog . ',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
