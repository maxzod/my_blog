import 'package:flutter/cupertino.dart';

class Post {
  final int id;
  final String title;
  final String desc;
  final String imageUrl;
  final DateTime createdAt;
  Post({
    @required this.id,
    @required this.title,
    @required this.desc,
    @required this.imageUrl,
    @required this.createdAt,
  });
  static fromJson(Map<String, dynamic> map) {
    return Post(
      title: map['title'],
      id: map['id'],
      desc: map['desc'],
      imageUrl: map['imageUrl'],
      createdAt: map['createdAt'],
    );
  }
}
