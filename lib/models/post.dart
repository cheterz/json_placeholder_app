class Post {
  late final int _id;
  late final int _userId;
  late final String _title;
  late final String _body;

  int get userId => _userId;
  int get id => _id;
  String get title => _title;
  String get body => _body;

  Post.fromJSON(Map<String, dynamic> json)
      : this._userId = json["userId"],
        this._id = json["id"],
        this._title = json["title"],
        this._body = json["body"];
}

class PostList {
  final List<Post> posts = [];
  PostList.fromJSON(List<dynamic> jsonItems) {
    for (var jsonItem in jsonItems) {
      posts.add(Post.fromJSON(jsonItem));
    }
  }
}

abstract class PostResult {}

class PostResultSuccess extends PostResult {
  late final PostList postList;
  PostResultSuccess(this.postList);
}

class PostResultFailure extends PostResult {
  late final String error;
  PostResultFailure(this.error);
}

class PostResultLoading extends PostResult {
  PostResultLoading();
}
