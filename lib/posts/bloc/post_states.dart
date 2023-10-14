part of "post_bloc.dart";

enum PostStatus { initial, success, failure }

// class PostState extends Equatable {
//   PostState({
//     this.status = PostStatus.initial,
//     this.posts = const <Post>[],
//     this.hasReachedMax = false,
//   });

//   final PostStatus status;
//   final bool hasReachedMax;
//   final List posts;

//   PostState copyWith({PostStatus? status, bool? hasReachedMax, List? posts}) {
//     return PostState(
//         status: status ?? this.status,
//         hasReachedMax: hasReachedMax ?? this.hasReachedMax,
//         posts: posts ?? this.posts);
//   }

//   @override
//   List<Object> get props => [status, posts, hasReachedMax];
// }

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _PostInitialState;
  const factory PostState.success({required List posts}) = _PostSuccessState;
  const factory PostState.failure({required String errorText}) =
      _PostFailureState;
}
