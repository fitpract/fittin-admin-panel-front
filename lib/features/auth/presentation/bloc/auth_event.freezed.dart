// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) authUsernameChanged,
    required TResult Function(String password) authPasswordChanged,
    required TResult Function() authSubmitted,
    required TResult Function() showAuthWarning,
    required TResult Function() toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? authUsernameChanged,
    TResult? Function(String password)? authPasswordChanged,
    TResult? Function()? authSubmitted,
    TResult? Function()? showAuthWarning,
    TResult? Function()? toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? authUsernameChanged,
    TResult Function(String password)? authPasswordChanged,
    TResult Function()? authSubmitted,
    TResult Function()? showAuthWarning,
    TResult Function()? toggleRememberMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUsernameChanged value) authUsernameChanged,
    required TResult Function(AuthPasswordChanged value) authPasswordChanged,
    required TResult Function(AuthSubmitted value) authSubmitted,
    required TResult Function(ShowAuthWarning value) showAuthWarning,
    required TResult Function(ToggleRememberMe value) toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult? Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult? Function(AuthSubmitted value)? authSubmitted,
    TResult? Function(ShowAuthWarning value)? showAuthWarning,
    TResult? Function(ToggleRememberMe value)? toggleRememberMe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult Function(AuthSubmitted value)? authSubmitted,
    TResult Function(ShowAuthWarning value)? showAuthWarning,
    TResult Function(ToggleRememberMe value)? toggleRememberMe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthUsernameChangedImplCopyWith<$Res> {
  factory _$$AuthUsernameChangedImplCopyWith(_$AuthUsernameChangedImpl value,
          $Res Function(_$AuthUsernameChangedImpl) then) =
      __$$AuthUsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$AuthUsernameChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthUsernameChangedImpl>
    implements _$$AuthUsernameChangedImplCopyWith<$Res> {
  __$$AuthUsernameChangedImplCopyWithImpl(_$AuthUsernameChangedImpl _value,
      $Res Function(_$AuthUsernameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$AuthUsernameChangedImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthUsernameChangedImpl implements AuthUsernameChanged {
  const _$AuthUsernameChangedImpl(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.authUsernameChanged(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUsernameChangedImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUsernameChangedImplCopyWith<_$AuthUsernameChangedImpl> get copyWith =>
      __$$AuthUsernameChangedImplCopyWithImpl<_$AuthUsernameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) authUsernameChanged,
    required TResult Function(String password) authPasswordChanged,
    required TResult Function() authSubmitted,
    required TResult Function() showAuthWarning,
    required TResult Function() toggleRememberMe,
  }) {
    return authUsernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? authUsernameChanged,
    TResult? Function(String password)? authPasswordChanged,
    TResult? Function()? authSubmitted,
    TResult? Function()? showAuthWarning,
    TResult? Function()? toggleRememberMe,
  }) {
    return authUsernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? authUsernameChanged,
    TResult Function(String password)? authPasswordChanged,
    TResult Function()? authSubmitted,
    TResult Function()? showAuthWarning,
    TResult Function()? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (authUsernameChanged != null) {
      return authUsernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUsernameChanged value) authUsernameChanged,
    required TResult Function(AuthPasswordChanged value) authPasswordChanged,
    required TResult Function(AuthSubmitted value) authSubmitted,
    required TResult Function(ShowAuthWarning value) showAuthWarning,
    required TResult Function(ToggleRememberMe value) toggleRememberMe,
  }) {
    return authUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult? Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult? Function(AuthSubmitted value)? authSubmitted,
    TResult? Function(ShowAuthWarning value)? showAuthWarning,
    TResult? Function(ToggleRememberMe value)? toggleRememberMe,
  }) {
    return authUsernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult Function(AuthSubmitted value)? authSubmitted,
    TResult Function(ShowAuthWarning value)? showAuthWarning,
    TResult Function(ToggleRememberMe value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (authUsernameChanged != null) {
      return authUsernameChanged(this);
    }
    return orElse();
  }
}

abstract class AuthUsernameChanged implements AuthEvent {
  const factory AuthUsernameChanged(final String username) =
      _$AuthUsernameChangedImpl;

  String get username;
  @JsonKey(ignore: true)
  _$$AuthUsernameChangedImplCopyWith<_$AuthUsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthPasswordChangedImplCopyWith<$Res> {
  factory _$$AuthPasswordChangedImplCopyWith(_$AuthPasswordChangedImpl value,
          $Res Function(_$AuthPasswordChangedImpl) then) =
      __$$AuthPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$AuthPasswordChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthPasswordChangedImpl>
    implements _$$AuthPasswordChangedImplCopyWith<$Res> {
  __$$AuthPasswordChangedImplCopyWithImpl(_$AuthPasswordChangedImpl _value,
      $Res Function(_$AuthPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$AuthPasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthPasswordChangedImpl implements AuthPasswordChanged {
  const _$AuthPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.authPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPasswordChangedImplCopyWith<_$AuthPasswordChangedImpl> get copyWith =>
      __$$AuthPasswordChangedImplCopyWithImpl<_$AuthPasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) authUsernameChanged,
    required TResult Function(String password) authPasswordChanged,
    required TResult Function() authSubmitted,
    required TResult Function() showAuthWarning,
    required TResult Function() toggleRememberMe,
  }) {
    return authPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? authUsernameChanged,
    TResult? Function(String password)? authPasswordChanged,
    TResult? Function()? authSubmitted,
    TResult? Function()? showAuthWarning,
    TResult? Function()? toggleRememberMe,
  }) {
    return authPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? authUsernameChanged,
    TResult Function(String password)? authPasswordChanged,
    TResult Function()? authSubmitted,
    TResult Function()? showAuthWarning,
    TResult Function()? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (authPasswordChanged != null) {
      return authPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUsernameChanged value) authUsernameChanged,
    required TResult Function(AuthPasswordChanged value) authPasswordChanged,
    required TResult Function(AuthSubmitted value) authSubmitted,
    required TResult Function(ShowAuthWarning value) showAuthWarning,
    required TResult Function(ToggleRememberMe value) toggleRememberMe,
  }) {
    return authPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult? Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult? Function(AuthSubmitted value)? authSubmitted,
    TResult? Function(ShowAuthWarning value)? showAuthWarning,
    TResult? Function(ToggleRememberMe value)? toggleRememberMe,
  }) {
    return authPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult Function(AuthSubmitted value)? authSubmitted,
    TResult Function(ShowAuthWarning value)? showAuthWarning,
    TResult Function(ToggleRememberMe value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (authPasswordChanged != null) {
      return authPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class AuthPasswordChanged implements AuthEvent {
  const factory AuthPasswordChanged(final String password) =
      _$AuthPasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$AuthPasswordChangedImplCopyWith<_$AuthPasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSubmittedImplCopyWith<$Res> {
  factory _$$AuthSubmittedImplCopyWith(
          _$AuthSubmittedImpl value, $Res Function(_$AuthSubmittedImpl) then) =
      __$$AuthSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSubmittedImpl>
    implements _$$AuthSubmittedImplCopyWith<$Res> {
  __$$AuthSubmittedImplCopyWithImpl(
      _$AuthSubmittedImpl _value, $Res Function(_$AuthSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSubmittedImpl implements AuthSubmitted {
  const _$AuthSubmittedImpl();

  @override
  String toString() {
    return 'AuthEvent.authSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) authUsernameChanged,
    required TResult Function(String password) authPasswordChanged,
    required TResult Function() authSubmitted,
    required TResult Function() showAuthWarning,
    required TResult Function() toggleRememberMe,
  }) {
    return authSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? authUsernameChanged,
    TResult? Function(String password)? authPasswordChanged,
    TResult? Function()? authSubmitted,
    TResult? Function()? showAuthWarning,
    TResult? Function()? toggleRememberMe,
  }) {
    return authSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? authUsernameChanged,
    TResult Function(String password)? authPasswordChanged,
    TResult Function()? authSubmitted,
    TResult Function()? showAuthWarning,
    TResult Function()? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (authSubmitted != null) {
      return authSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUsernameChanged value) authUsernameChanged,
    required TResult Function(AuthPasswordChanged value) authPasswordChanged,
    required TResult Function(AuthSubmitted value) authSubmitted,
    required TResult Function(ShowAuthWarning value) showAuthWarning,
    required TResult Function(ToggleRememberMe value) toggleRememberMe,
  }) {
    return authSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult? Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult? Function(AuthSubmitted value)? authSubmitted,
    TResult? Function(ShowAuthWarning value)? showAuthWarning,
    TResult? Function(ToggleRememberMe value)? toggleRememberMe,
  }) {
    return authSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult Function(AuthSubmitted value)? authSubmitted,
    TResult Function(ShowAuthWarning value)? showAuthWarning,
    TResult Function(ToggleRememberMe value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (authSubmitted != null) {
      return authSubmitted(this);
    }
    return orElse();
  }
}

abstract class AuthSubmitted implements AuthEvent {
  const factory AuthSubmitted() = _$AuthSubmittedImpl;
}

/// @nodoc
abstract class _$$ShowAuthWarningImplCopyWith<$Res> {
  factory _$$ShowAuthWarningImplCopyWith(_$ShowAuthWarningImpl value,
          $Res Function(_$ShowAuthWarningImpl) then) =
      __$$ShowAuthWarningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowAuthWarningImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowAuthWarningImpl>
    implements _$$ShowAuthWarningImplCopyWith<$Res> {
  __$$ShowAuthWarningImplCopyWithImpl(
      _$ShowAuthWarningImpl _value, $Res Function(_$ShowAuthWarningImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowAuthWarningImpl implements ShowAuthWarning {
  const _$ShowAuthWarningImpl();

  @override
  String toString() {
    return 'AuthEvent.showAuthWarning()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowAuthWarningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) authUsernameChanged,
    required TResult Function(String password) authPasswordChanged,
    required TResult Function() authSubmitted,
    required TResult Function() showAuthWarning,
    required TResult Function() toggleRememberMe,
  }) {
    return showAuthWarning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? authUsernameChanged,
    TResult? Function(String password)? authPasswordChanged,
    TResult? Function()? authSubmitted,
    TResult? Function()? showAuthWarning,
    TResult? Function()? toggleRememberMe,
  }) {
    return showAuthWarning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? authUsernameChanged,
    TResult Function(String password)? authPasswordChanged,
    TResult Function()? authSubmitted,
    TResult Function()? showAuthWarning,
    TResult Function()? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (showAuthWarning != null) {
      return showAuthWarning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUsernameChanged value) authUsernameChanged,
    required TResult Function(AuthPasswordChanged value) authPasswordChanged,
    required TResult Function(AuthSubmitted value) authSubmitted,
    required TResult Function(ShowAuthWarning value) showAuthWarning,
    required TResult Function(ToggleRememberMe value) toggleRememberMe,
  }) {
    return showAuthWarning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult? Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult? Function(AuthSubmitted value)? authSubmitted,
    TResult? Function(ShowAuthWarning value)? showAuthWarning,
    TResult? Function(ToggleRememberMe value)? toggleRememberMe,
  }) {
    return showAuthWarning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult Function(AuthSubmitted value)? authSubmitted,
    TResult Function(ShowAuthWarning value)? showAuthWarning,
    TResult Function(ToggleRememberMe value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (showAuthWarning != null) {
      return showAuthWarning(this);
    }
    return orElse();
  }
}

abstract class ShowAuthWarning implements AuthEvent {
  const factory ShowAuthWarning() = _$ShowAuthWarningImpl;
}

/// @nodoc
abstract class _$$ToggleRememberMeImplCopyWith<$Res> {
  factory _$$ToggleRememberMeImplCopyWith(_$ToggleRememberMeImpl value,
          $Res Function(_$ToggleRememberMeImpl) then) =
      __$$ToggleRememberMeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleRememberMeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ToggleRememberMeImpl>
    implements _$$ToggleRememberMeImplCopyWith<$Res> {
  __$$ToggleRememberMeImplCopyWithImpl(_$ToggleRememberMeImpl _value,
      $Res Function(_$ToggleRememberMeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleRememberMeImpl implements ToggleRememberMe {
  const _$ToggleRememberMeImpl();

  @override
  String toString() {
    return 'AuthEvent.toggleRememberMe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleRememberMeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) authUsernameChanged,
    required TResult Function(String password) authPasswordChanged,
    required TResult Function() authSubmitted,
    required TResult Function() showAuthWarning,
    required TResult Function() toggleRememberMe,
  }) {
    return toggleRememberMe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? authUsernameChanged,
    TResult? Function(String password)? authPasswordChanged,
    TResult? Function()? authSubmitted,
    TResult? Function()? showAuthWarning,
    TResult? Function()? toggleRememberMe,
  }) {
    return toggleRememberMe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? authUsernameChanged,
    TResult Function(String password)? authPasswordChanged,
    TResult Function()? authSubmitted,
    TResult Function()? showAuthWarning,
    TResult Function()? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (toggleRememberMe != null) {
      return toggleRememberMe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUsernameChanged value) authUsernameChanged,
    required TResult Function(AuthPasswordChanged value) authPasswordChanged,
    required TResult Function(AuthSubmitted value) authSubmitted,
    required TResult Function(ShowAuthWarning value) showAuthWarning,
    required TResult Function(ToggleRememberMe value) toggleRememberMe,
  }) {
    return toggleRememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult? Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult? Function(AuthSubmitted value)? authSubmitted,
    TResult? Function(ShowAuthWarning value)? showAuthWarning,
    TResult? Function(ToggleRememberMe value)? toggleRememberMe,
  }) {
    return toggleRememberMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUsernameChanged value)? authUsernameChanged,
    TResult Function(AuthPasswordChanged value)? authPasswordChanged,
    TResult Function(AuthSubmitted value)? authSubmitted,
    TResult Function(ShowAuthWarning value)? showAuthWarning,
    TResult Function(ToggleRememberMe value)? toggleRememberMe,
    required TResult orElse(),
  }) {
    if (toggleRememberMe != null) {
      return toggleRememberMe(this);
    }
    return orElse();
  }
}

abstract class ToggleRememberMe implements AuthEvent {
  const factory ToggleRememberMe() = _$ToggleRememberMeImpl;
}
