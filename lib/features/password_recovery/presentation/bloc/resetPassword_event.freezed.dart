// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resetPassword_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordRecoveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendCodeButtonPressed,
    required TResult Function(String email, String code, String newPassword)
        changePasswordButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendCodeButtonPressed,
    TResult? Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendCodeButtonPressed,
    TResult Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordRecoveryEventCopyWith<$Res> {
  factory $PasswordRecoveryEventCopyWith(PasswordRecoveryEvent value,
          $Res Function(PasswordRecoveryEvent) then) =
      _$PasswordRecoveryEventCopyWithImpl<$Res, PasswordRecoveryEvent>;
}

/// @nodoc
class _$PasswordRecoveryEventCopyWithImpl<$Res,
        $Val extends PasswordRecoveryEvent>
    implements $PasswordRecoveryEventCopyWith<$Res> {
  _$PasswordRecoveryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendCodeButtonPressed,
    required TResult Function(String email, String code, String newPassword)
        changePasswordButtonPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendCodeButtonPressed,
    TResult? Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendCodeButtonPressed,
    TResult Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements PasswordRecoveryEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeChangedImplCopyWith<$Res> {
  factory _$$CodeChangedImplCopyWith(
          _$CodeChangedImpl value, $Res Function(_$CodeChangedImpl) then) =
      __$$CodeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$CodeChangedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res, _$CodeChangedImpl>
    implements _$$CodeChangedImplCopyWith<$Res> {
  __$$CodeChangedImplCopyWithImpl(
      _$CodeChangedImpl _value, $Res Function(_$CodeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CodeChangedImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeChangedImpl implements CodeChanged {
  const _$CodeChangedImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.codeChanged(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeChangedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeChangedImplCopyWith<_$CodeChangedImpl> get copyWith =>
      __$$CodeChangedImplCopyWithImpl<_$CodeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendCodeButtonPressed,
    required TResult Function(String email, String code, String newPassword)
        changePasswordButtonPressed,
  }) {
    return codeChanged(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendCodeButtonPressed,
    TResult? Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
  }) {
    return codeChanged?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendCodeButtonPressed,
    TResult Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
  }) {
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
  }) {
    return codeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class CodeChanged implements PasswordRecoveryEvent {
  const factory CodeChanged(final String code) = _$CodeChangedImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$CodeChangedImplCopyWith<_$CodeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendCodeButtonPressed,
    required TResult Function(String email, String code, String newPassword)
        changePasswordButtonPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendCodeButtonPressed,
    TResult? Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendCodeButtonPressed,
    TResult Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements PasswordRecoveryEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitEmailImplCopyWith<$Res> {
  factory _$$SubmitEmailImplCopyWith(
          _$SubmitEmailImpl value, $Res Function(_$SubmitEmailImpl) then) =
      __$$SubmitEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitEmailImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res, _$SubmitEmailImpl>
    implements _$$SubmitEmailImplCopyWith<$Res> {
  __$$SubmitEmailImplCopyWithImpl(
      _$SubmitEmailImpl _value, $Res Function(_$SubmitEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitEmailImpl implements SubmitEmail {
  const _$SubmitEmailImpl();

  @override
  String toString() {
    return 'PasswordRecoveryEvent.submitEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendCodeButtonPressed,
    required TResult Function(String email, String code, String newPassword)
        changePasswordButtonPressed,
  }) {
    return submitEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendCodeButtonPressed,
    TResult? Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
  }) {
    return submitEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendCodeButtonPressed,
    TResult Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (submitEmail != null) {
      return submitEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
  }) {
    return submitEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
  }) {
    return submitEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (submitEmail != null) {
      return submitEmail(this);
    }
    return orElse();
  }
}

abstract class SubmitEmail implements PasswordRecoveryEvent {
  const factory SubmitEmail() = _$SubmitEmailImpl;
}

/// @nodoc
abstract class _$$SendCodeButtonPressedImplCopyWith<$Res> {
  factory _$$SendCodeButtonPressedImplCopyWith(
          _$SendCodeButtonPressedImpl value,
          $Res Function(_$SendCodeButtonPressedImpl) then) =
      __$$SendCodeButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendCodeButtonPressedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res,
        _$SendCodeButtonPressedImpl>
    implements _$$SendCodeButtonPressedImplCopyWith<$Res> {
  __$$SendCodeButtonPressedImplCopyWithImpl(_$SendCodeButtonPressedImpl _value,
      $Res Function(_$SendCodeButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendCodeButtonPressedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCodeButtonPressedImpl implements SendCodeButtonPressed {
  const _$SendCodeButtonPressedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.sendCodeButtonPressed(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeButtonPressedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeButtonPressedImplCopyWith<_$SendCodeButtonPressedImpl>
      get copyWith => __$$SendCodeButtonPressedImplCopyWithImpl<
          _$SendCodeButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendCodeButtonPressed,
    required TResult Function(String email, String code, String newPassword)
        changePasswordButtonPressed,
  }) {
    return sendCodeButtonPressed(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendCodeButtonPressed,
    TResult? Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
  }) {
    return sendCodeButtonPressed?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendCodeButtonPressed,
    TResult Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (sendCodeButtonPressed != null) {
      return sendCodeButtonPressed(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
  }) {
    return sendCodeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
  }) {
    return sendCodeButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (sendCodeButtonPressed != null) {
      return sendCodeButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SendCodeButtonPressed implements PasswordRecoveryEvent {
  const factory SendCodeButtonPressed(final String email) =
      _$SendCodeButtonPressedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$SendCodeButtonPressedImplCopyWith<_$SendCodeButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordButtonPressedImplCopyWith<$Res> {
  factory _$$ChangePasswordButtonPressedImplCopyWith(
          _$ChangePasswordButtonPressedImpl value,
          $Res Function(_$ChangePasswordButtonPressedImpl) then) =
      __$$ChangePasswordButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code, String newPassword});
}

/// @nodoc
class __$$ChangePasswordButtonPressedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res,
        _$ChangePasswordButtonPressedImpl>
    implements _$$ChangePasswordButtonPressedImplCopyWith<$Res> {
  __$$ChangePasswordButtonPressedImplCopyWithImpl(
      _$ChangePasswordButtonPressedImpl _value,
      $Res Function(_$ChangePasswordButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? newPassword = null,
  }) {
    return _then(_$ChangePasswordButtonPressedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordButtonPressedImpl implements ChangePasswordButtonPressed {
  const _$ChangePasswordButtonPressedImpl(
      this.email, this.code, this.newPassword);

  @override
  final String email;
  @override
  final String code;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.changePasswordButtonPressed(email: $email, code: $code, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordButtonPressedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordButtonPressedImplCopyWith<_$ChangePasswordButtonPressedImpl>
      get copyWith => __$$ChangePasswordButtonPressedImplCopyWithImpl<
          _$ChangePasswordButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendCodeButtonPressed,
    required TResult Function(String email, String code, String newPassword)
        changePasswordButtonPressed,
  }) {
    return changePasswordButtonPressed(email, code, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendCodeButtonPressed,
    TResult? Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
  }) {
    return changePasswordButtonPressed?.call(email, code, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendCodeButtonPressed,
    TResult Function(String email, String code, String newPassword)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (changePasswordButtonPressed != null) {
      return changePasswordButtonPressed(email, code, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
  }) {
    return changePasswordButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
  }) {
    return changePasswordButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    required TResult orElse(),
  }) {
    if (changePasswordButtonPressed != null) {
      return changePasswordButtonPressed(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordButtonPressed implements PasswordRecoveryEvent {
  const factory ChangePasswordButtonPressed(
          final String email, final String code, final String newPassword) =
      _$ChangePasswordButtonPressedImpl;

  String get email;
  String get code;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$ChangePasswordButtonPressedImplCopyWith<_$ChangePasswordButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
