import 'package:facebook_ui_clone/models/models.dart';

class Post {
  final User user;
  final String? caption;
  final String timeAgo;
  final String? imageUrl;
  final int? likes;
  final int? comments;
  final int? shares;

  const Post({
    required this.user,
    this.caption,
    required this.timeAgo,
    this.imageUrl,
    this.likes,
    this.comments,
    this.shares,
  });
}
