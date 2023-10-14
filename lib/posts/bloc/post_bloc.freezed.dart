// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInitialEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostInitialEvent value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInitialEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostInitialEventImplCopyWith<$Res> {
  factory _$$PostInitialEventImplCopyWith(_$PostInitialEventImpl value,
          $Res Function(_$PostInitialEventImpl) then) =
      __$$PostInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostInitialEventImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$PostInitialEventImpl>
    implements _$$PostInitialEventImplCopyWith<$Res> {
  __$$PostInitialEventImplCopyWithImpl(_$PostInitialEventImpl _value,
      $Res Function(_$PostInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostInitialEventImpl implements PostInitialEvent {
  const _$PostInitialEventImpl();

  @override
  String toString() {
    return 'PostEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInitialEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostInitialEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostInitialEvent implements PostEvent {
  const factory PostInitialEvent() = _$PostInitialEventImpl;
}

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<dynamic> posts) success,
    required TResult Function(String errorText) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<dynamic> posts)? success,
    TResult? Function(String errorText)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<dynamic> posts)? success,
    TResult Function(String errorText)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostInitialState value)? initial,
    TResult? Function(_PostSuccessState value)? success,
    TResult? Function(_PostFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostInitialStateImplCopyWith<$Res> {
  factory _$$PostInitialStateImplCopyWith(_$PostInitialStateImpl value,
          $Res Function(_$PostInitialStateImpl) then) =
      __$$PostInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostInitialStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostInitialStateImpl>
    implements _$$PostInitialStateImplCopyWith<$Res> {
  __$$PostInitialStateImplCopyWithImpl(_$PostInitialStateImpl _value,
      $Res Function(_$PostInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostInitialStateImpl implements _PostInitialState {
  const _$PostInitialStateImpl();

  @override
  String toString() {
    return 'PostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<dynamic> posts) success,
    required TResult Function(String errorText) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<dynamic> posts)? success,
    TResult? Function(String errorText)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<dynamic> posts)? success,
    TResult Function(String errorText)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostInitialState value)? initial,
    TResult? Function(_PostSuccessState value)? success,
    TResult? Function(_PostFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PostInitialState implements PostState {
  const factory _PostInitialState() = _$PostInitialStateImpl;
}

/// @nodoc
abstract class _$$PostSuccessStateImplCopyWith<$Res> {
  factory _$$PostSuccessStateImplCopyWith(_$PostSuccessStateImpl value,
          $Res Function(_$PostSuccessStateImpl) then) =
      __$$PostSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> posts});
}

/// @nodoc
class __$$PostSuccessStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostSuccessStateImpl>
    implements _$$PostSuccessStateImplCopyWith<$Res> {
  __$$PostSuccessStateImplCopyWithImpl(_$PostSuccessStateImpl _value,
      $Res Function(_$PostSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$PostSuccessStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$PostSuccessStateImpl implements _PostSuccessState {
  const _$PostSuccessStateImpl({required final List<dynamic> posts})
      : _posts = posts;

  final List<dynamic> _posts;
  @override
  List<dynamic> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostState.success(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSuccessStateImplCopyWith<_$PostSuccessStateImpl> get copyWith =>
      __$$PostSuccessStateImplCopyWithImpl<_$PostSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<dynamic> posts) success,
    required TResult Function(String errorText) failure,
  }) {
    return success(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<dynamic> posts)? success,
    TResult? Function(String errorText)? failure,
  }) {
    return success?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<dynamic> posts)? success,
    TResult Function(String errorText)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostInitialState value)? initial,
    TResult? Function(_PostSuccessState value)? success,
    TResult? Function(_PostFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PostSuccessState implements PostState {
  const factory _PostSuccessState({required final List<dynamic> posts}) =
      _$PostSuccessStateImpl;

  List<dynamic> get posts;
  @JsonKey(ignore: true)
  _$$PostSuccessStateImplCopyWith<_$PostSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostFailureStateImplCopyWith<$Res> {
  factory _$$PostFailureStateImplCopyWith(_$PostFailureStateImpl value,
          $Res Function(_$PostFailureStateImpl) then) =
      __$$PostFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$PostFailureStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostFailureStateImpl>
    implements _$$PostFailureStateImplCopyWith<$Res> {
  __$$PostFailureStateImplCopyWithImpl(_$PostFailureStateImpl _value,
      $Res Function(_$PostFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$PostFailureStateImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostFailureStateImpl implements _PostFailureState {
  const _$PostFailureStateImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'PostState.failure(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFailureStateImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFailureStateImplCopyWith<_$PostFailureStateImpl> get copyWith =>
      __$$PostFailureStateImplCopyWithImpl<_$PostFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<dynamic> posts) success,
    required TResult Function(String errorText) failure,
  }) {
    return failure(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<dynamic> posts)? success,
    TResult? Function(String errorText)? failure,
  }) {
    return failure?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<dynamic> posts)? success,
    TResult Function(String errorText)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInitialState value) initial,
    required TResult Function(_PostSuccessState value) success,
    required TResult Function(_PostFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostInitialState value)? initial,
    TResult? Function(_PostSuccessState value)? success,
    TResult? Function(_PostFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInitialState value)? initial,
    TResult Function(_PostSuccessState value)? success,
    TResult Function(_PostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PostFailureState implements PostState {
  const factory _PostFailureState({required final String errorText}) =
      _$PostFailureStateImpl;

  String get errorText;
  @JsonKey(ignore: true)
  _$$PostFailureStateImplCopyWith<_$PostFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
