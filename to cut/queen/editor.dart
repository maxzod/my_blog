import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart';

class QueenEditior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('queen editor'),
      ),
      body: FutureBuilder(
        // future: getData(),
        future: rootBundle.loadString('readme.md'),
        builder: (_, AsyncSnapshot snap) {
          if (snap.hasData) {
            return Directionality(
              textDirection: TextDirection.ltr,
              child: Markdown(
                // controller: controller,

                selectable: true,
                data: snap.data,
                // '# simple blog web application # [See Live Demo](https://maxland-a4698.web.app/) # Screenshots  # To-Do - [x] remove # from the url - [x] add loading splash screen - [x] add routes guards - [x] connect with firebase - [x] use .env (wont use it i will go with dart class instead for less package consumption) - [ ] add finished projects section - [ ] make the ui adaptive - [ ] add prism syntax highlighter - [ ] add firebase analytics navigation observer to the MaterialApp  # To-Do UI - [x] login - [ ] add post - [ ] read post - [x] error 404 # To-Test - [ ] navigate inside page (not possible i need to learn more about MaterialApp builder CONTEXT )       the error msg : RouteData operation requested with a context that does not include an RouteData.',
                styleSheet: MarkdownStyleSheet(
                    // h1: TextStyle(color: Colors.blue, fontSize: 40),
                    // checkbox: TextStyle(color: Colors.black, fontSize: 40),
                    ),
              ),
            );
          } else if (snap.hasError) {
            return Center(
              child: Text(snap.error.toString()),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
