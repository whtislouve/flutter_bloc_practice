import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/app/posts/bloc/post_bloc.dart';

import '../repository/index.dart';
import 'post_list.dart';

class PostPage extends StatelessWidget {
  PostPage({super.key});
  PostRepository postRepo = PostRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: BlocProvider(
        create: (_) => PostBloc(postRepo: postRepo)..add(PostEvent.initial()),
        child: PostList(),
      ),
    );
  }
}
