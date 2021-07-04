import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';

const String SERVER = "https://jsonplaceholder.typicode.com";

class Repository {
  Future<PostList> fetchPosts() async {
    final url = Uri.parse("$SERVER/posts");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return PostList.fromJSON(json.decode(response.body));
    } else {
      throw Exception("failed request");
    }
  }
  Future<PostAdd>addPost(Post post) async {
    final url = Uri.parse("$SERVER/posts");
    final responce = await http.post(url,body: post.toJson());

    if (responce.statusCode == 201){
      return PostAddSuccess();
    } else {
      return PostAddFailure();
    }
  }
}
