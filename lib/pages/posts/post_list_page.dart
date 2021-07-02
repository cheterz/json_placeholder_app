import 'package:flutter/material.dart';
import 'package:json_placeholder_app/controllers/post_controller.dart';
import 'package:json_placeholder_app/models/post.dart';
import 'package:json_placeholder_app/pages/posts/post_list_item.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

// Здесь все довольно очевидно
class PostListPage extends StatefulWidget {
  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends StateMVC {
  late PostController _controller;

  _PostListPageState() : super(PostController()) {
    _controller = controller as PostController;
  }

  @override
  void initState() {
    super.initState();
    _controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post List Page"),
        ),
        body: _buildContent());
  }

  Widget _buildContent() {
    // первым делом получаем текущее состояние
    final state = _controller.currentState;
    if (state is PostResultLoading) {
      // загрузка
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is PostResultFailure) {
      // ошибка
      return Center(
        child: Text(state.error,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.red)),
      );
    } else {
      // отображаем список постов
      final posts = (state as PostResultSuccess).postList.posts;
      return Padding(
        padding: EdgeInsets.all(10),
        // ListView.builder создает элемент списка
        // только когда он видим на экране
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return PostListItem(posts[index]);
          },
        ),
      );
    }
  }

  // элемент списка

}
