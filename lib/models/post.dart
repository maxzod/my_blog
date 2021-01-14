import 'package:flutter/cupertino.dart';

class Post {
  final int id;
  final String title;
  final String content;
  final DateTime createdAt;
  Post({
    @required this.id,
    @required this.title,
    @required this.content,
    @required this.createdAt,
  });
  static fromJson(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      createdAt: DateTime.parse(map['content']),
    );
  }
}
