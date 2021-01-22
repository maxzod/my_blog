import 'package:my_blog/models/post.dart';

abstract class BlogConfig {
  static const LOGO_URL = '';
  static const BLOG_NAME = 'AHMED MASOUD';
  static const SUPPORTED_LOCALES = [
    'en',
  ];

  // social media links
  static const GITHUB = 'https://www.github.com/maxzod';
  static const FACEBOOK = 'https://www.facebook.com/maxzod66';
  static const TWITTER = 'https://www.twitter.com/maxzod66';
  static const PHONE_NUMBER = '1210601410';
  static const WHATTSAPP =
      'https://wa.me/20' + PHONE_NUMBER; // change countery key if outside egypt

  static const GITHUB_SOURCE = GITHUB + '/my_blog';
  static final List<Post> posts = [
    Post(
      id: 1,
      createdAt: DateTime(2021, 1, 14),
      desc: 'project todos',
      imageUrl:
          "https://images.pexels.com/photos/7376/startup-photos.jpg?auto=compress&cs=tinysrgb&dpr=2&h=250&w=250",
      title: "blog todos",
    )
  ];
}
