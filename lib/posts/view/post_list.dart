import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/posts/bloc/post_bloc.dart';

class PostList extends StatelessWidget {
  PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(builder: (context, state) {
      return state.when(
          initial: () => Center(),
          success: (List postList) => ListView.builder(
                itemCount: postList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(postList[index].title),
                  );
                },
              ),
          failure: (String error) => Text(error));
      // switch (state.status) {
      //   case PostStatus.failure:
      //     return const Center(
      //       child: Text("Failed to fetch posts"),
      //     );
      //   case PostStatus.initial:
      //     return const Center(
      //       child: CircularProgressIndicator(),
      //     );
      //   case PostStatus.success:
      //     return ListView.builder(
      //         itemCount: state.posts.length,
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text(state.posts[index].title),
      //           );
      //         });
      // }
    });
  }
}
