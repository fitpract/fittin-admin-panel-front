// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  bool get showUsernameWarning => throw _privateConstructorUsedError;
  bool get showPasswordWarning => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String username,
      String password,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      bool showUsernameWarning,
      bool showPasswordWarning,
      bool rememberMe,
      String? errorMessage});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? isFailure = null,
    Object? showUsernameWarning = null,
    Object? showPasswordWarning = null,
    Object? rememberMe = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      showUsernameWarning: null == showUsernameWarning
          ? _value.showUsernameWarning
          : showUsernameWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      showPasswordWarning: null == showPasswordWarning
          ? _value.showPasswordWarning
          : showPasswordWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      bool showUsernameWarning,
      bool showPasswordWarning,
      bool rememberMe,
      String? errorMessage});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? isFailure = null,
    Object? showUsernameWarning = null,
    Object? showPasswordWarning = null,
    Object? rememberMe = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      showUsernameWarning: null == showUsernameWarning
          ? _value.showUsernameWarning
          : showUsernameWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      showPasswordWarning: null == showPasswordWarning
          ? _value.showPasswordWarning
          : showPasswordWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.username,
      required this.password,
      required this.isSubmitting,
      required this.isSuccess,
      required this.isFailure,
      required this.showUsernameWarning,
      required this.showPasswordWarning,
      required this.rememberMe,
      this.errorMessage});

  @override
  final String username;
  @override
  final String password;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final bool showUsernameWarning;
  @override
  final bool showPasswordWarning;
  @override
  final bool rememberMe;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthState(username: $username, password: $password, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, showUsernameWarning: $showUsernameWarning, showPasswordWarning: $showPasswordWarning, rememberMe: $rememberMe, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.showUsernameWarning, showUsernameWarning) ||
                other.showUsernameWarning == showUsernameWarning) &&
            (identical(other.showPasswordWarning, showPasswordWarning) ||
                other.showPasswordWarning == showPasswordWarning) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      password,
      isSubmitting,
      isSuccess,
      isFailure,
      showUsernameWarning,
      showPasswordWarning,
      rememberMe,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final String username,
      required final String password,
      required final bool isSubmitting,
      required final bool isSuccess,
      required final bool isFailure,
      required final bool showUsernameWarning,
      required final bool showPasswordWarning,
      required final bool rememberMe,
      final String? errorMessage}) = _$AuthStateImpl;

  @override
  String get username;
  @override
  String get password;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  bool get showUsernameWarning;
  @override
  bool get showPasswordWarning;
  @override
  bool get rememberMe;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
