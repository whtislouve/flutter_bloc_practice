// import 'package:equatable/equatable.dart';

part of 'post_bloc.dart';

// sealed class PostEvent extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// final class PostFetched extends PostEvent {}

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.initial() = PostInitialEvent;
  // const factory PostEvent.success() = PostSuccessEvent;
  // const factory PostEvent.failure() = PostFailureEvent;
}
