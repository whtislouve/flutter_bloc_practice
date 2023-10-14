import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc_practice/posts/repository/post_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../models/post.dart';
part 'post_bloc.freezed.dart';
part 'post_events.dart';
part 'post_states.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.postRepo}) : super(PostState.initial()) {
    on<PostInitialEvent>((event, emit) async {
      if (state is _PostInitialState) {
        try {
          await postRepo.getPostsFromServer();
          emit(PostState.success(posts: postRepo.postData));
        } catch (e) {
          emit(PostState.failure(errorText: "Something went wrong"));
        }
      }
    });
  }

  PostRepository postRepo;

  // Future<void> _onPostFetched(
  //     PostFetched event, Emitter<PostState> emit) async {
  //   try {
  //     if (state.status == PostStatus.initial) {
  //       await postRepo.getPostsFromServer();

  //       return emit(state.copyWith(
  //           status: PostStatus.success,
  //           posts: postRepo.postData,
  //           hasReachedMax: false));
  //     }
  //   } catch (_) {
  //     emit(state.copyWith(status: PostStatus.failure));
  //   }
  // }
}
