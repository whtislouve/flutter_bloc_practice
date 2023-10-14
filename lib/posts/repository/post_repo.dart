import 'package:dio/dio.dart';
import 'package:flutter_bloc_practice/posts/api/dio_client.dart';

import '../models/post.dart';

abstract class _PostRepository {
  Future getPostsFromServer();
}

class PostRepository implements _PostRepository {
  final DioClient _dioClient = DioClient();
  Response? response;
  List postData = [];
  @override
  Future getPostsFromServer() async {
    try {
      response =
          await _dioClient.dio.get(_dioClient.dio.options.baseUrl + "post");
      postData = response?.data.map((post) => Post.fromJson(post)).toList();
    } on DioException catch (e) {
      throw {e};
    }
  }
}
