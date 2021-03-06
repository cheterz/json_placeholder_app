import '../data/repository.dart';
import '../models/post.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class PostController extends ControllerMVC {
  final Repository repo = new Repository();
  PostController();
  PostResult currentState = PostResultLoading();

  void init() async {
    try {
      final postList = await repo.fetchPosts();
      setState(() => currentState = PostResultSuccess(postList));
    } catch (error) {
      setState(() => currentState = PostResultFailure("no internet"));
    }
  }
  void addPost(Post post,void Function(PostAdd) callback) async {
    try{
      final result = await repo.addPost(post);
      callback(result);

    } catch (error){
      callback(PostAddFailure());
    }
  }
}
