import 'package:flutter/material.dart';
import 'package:my_blog/config/colors.dart';
import 'package:my_blog/config/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogFotter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headerHeight = AppBar().preferredSize.height;
    final size = MediaQuery.of(context).size;
    return // header
        Container(
      height: headerHeight,
      width: size.width,
      color: BlogColors.headrFotterColor,
      child: Row(
        children: [
          SizedBox(width: size.width * 0.03),
          MaterialButton(
            onPressed: () => launch(Config.GITHUB_SOURCE),
            child: Text('Made With ♥ By Flutter'),
            color: BlogColors.buttonsColor,
          ),
          Spacer(),
          Text(
            'follow me on :'.toUpperCase(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            // style: TextS,
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.githubSquare),
            onPressed: () => launch(Config.GITHUB, enableJavaScript: true),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.twitterSquare),
            onPressed: () => launch(Config.TWITTER),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.facebookSquare),
            onPressed: () => launch(Config.FACEBOOK),
          ),
          SizedBox(width: size.width * 0.05),
        ],
      ),
    );
  }
}
