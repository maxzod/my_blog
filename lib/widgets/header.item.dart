import 'package:flutter/material.dart';
import 'package:my_blog/config/colors.dart';
import 'package:auto_route/auto_route.dart';

class HeaderItem extends StatelessWidget {
  final String title;
  final void Function() onClick;
  final String route;
  HeaderItem({
    @required this.title,
    @required this.onClick,
    @required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01),
      child: OutlineButton(
        hoverColor: BlogColors.buttonsColor,
        onPressed: () {
          if (context.route.name != route) onClick();
        },
        child: Text(title.toUpperCase()),
      ),
    );
  }
}
