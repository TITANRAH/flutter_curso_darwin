class Publication {
  final User user;
  final String title;
  final DateTime createAd;
  final String imageUrl;
  final int commentCount;
  final int sharesCount;
  final Reaction currentUserReaction;

  Publication({
    required this.currentUserReaction,
    required this.user,
    required this.title,
    required this.createAd,
    required this.imageUrl,
    required this.commentCount,
    required this.sharesCount,
  });
}

class User {
  final String avatar;
  final String username;

  User({
    required this.avatar,
    required this.username,
  });
}

enum Reaction {
  like,
  love,
  laughing,
  sad,
  shocking,
  angry,
}
