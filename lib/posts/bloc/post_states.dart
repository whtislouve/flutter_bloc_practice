part of "post_bloc.dart";

enum PostStatus { initial, success, failure }

class PostState extends Equatable {
  PostState({
    this.status = PostStatus.initial,
    this.posts = const <Post>[],
    this.hasReachedMax = false,
  });

  final PostStatus status;
  final bool hasReachedMax;
  final List posts;

  PostState copyWith({PostStatus? status, bool? hasReachedMax, List? posts}) {
    return PostState(
        status: status ?? this.status,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        posts: posts ?? this.posts);
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
