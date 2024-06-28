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
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
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
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
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
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
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
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return codeChanged(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return codeChanged?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
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
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return codeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
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
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
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
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
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
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res,
        _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements PasswordRecoveryEvent {
  const factory ConfirmPasswordChanged(final String confirmPassword) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return submitEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return submitEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
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
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return submitEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return submitEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
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
abstract class _$$SendEmailButtonPressedImplCopyWith<$Res> {
  factory _$$SendEmailButtonPressedImplCopyWith(
          _$SendEmailButtonPressedImpl value,
          $Res Function(_$SendEmailButtonPressedImpl) then) =
      __$$SendEmailButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendEmailButtonPressedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res,
        _$SendEmailButtonPressedImpl>
    implements _$$SendEmailButtonPressedImplCopyWith<$Res> {
  __$$SendEmailButtonPressedImplCopyWithImpl(
      _$SendEmailButtonPressedImpl _value,
      $Res Function(_$SendEmailButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendEmailButtonPressedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendEmailButtonPressedImpl implements SendEmailButtonPressed {
  const _$SendEmailButtonPressedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.sendEmailButtonPressed(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailButtonPressedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailButtonPressedImplCopyWith<_$SendEmailButtonPressedImpl>
      get copyWith => __$$SendEmailButtonPressedImplCopyWithImpl<
          _$SendEmailButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return sendEmailButtonPressed(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return sendEmailButtonPressed?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (sendEmailButtonPressed != null) {
      return sendEmailButtonPressed(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return sendEmailButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return sendEmailButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (sendEmailButtonPressed != null) {
      return sendEmailButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SendEmailButtonPressed implements PasswordRecoveryEvent {
  const factory SendEmailButtonPressed(final String email) =
      _$SendEmailButtonPressedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$SendEmailButtonPressedImplCopyWith<_$SendEmailButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendCodeButtonPressedImplCopyWith<$Res> {
  factory _$$SendCodeButtonPressedImplCopyWith(
          _$SendCodeButtonPressedImpl value,
          $Res Function(_$SendCodeButtonPressedImpl) then) =
      __$$SendCodeButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code});
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
    Object? code = null,
  }) {
    return _then(_$SendCodeButtonPressedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCodeButtonPressedImpl implements SendCodeButtonPressed {
  const _$SendCodeButtonPressedImpl(this.email, this.code);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.sendCodeButtonPressed(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeButtonPressedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

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
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return sendCodeButtonPressed(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return sendCodeButtonPressed?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (sendCodeButtonPressed != null) {
      return sendCodeButtonPressed(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return sendCodeButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return sendCodeButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (sendCodeButtonPressed != null) {
      return sendCodeButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SendCodeButtonPressed implements PasswordRecoveryEvent {
  const factory SendCodeButtonPressed(final String email, final String code) =
      _$SendCodeButtonPressedImpl;

  String get email;
  String get code;
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
  $Res call({String email, String newPassword});
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
    Object? newPassword = null,
  }) {
    return _then(_$ChangePasswordButtonPressedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
  const _$ChangePasswordButtonPressedImpl(this.email, this.newPassword);

  @override
  final String email;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.changePasswordButtonPressed(email: $email, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordButtonPressedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, newPassword);

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
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return changePasswordButtonPressed(email, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return changePasswordButtonPressed?.call(email, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (changePasswordButtonPressed != null) {
      return changePasswordButtonPressed(email, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return changePasswordButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return changePasswordButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
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
          final String email, final String newPassword) =
      _$ChangePasswordButtonPressedImpl;

  String get email;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$ChangePasswordButtonPressedImplCopyWith<_$ChangePasswordButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackButtonPressedImplCopyWith<$Res> {
  factory _$$BackButtonPressedImplCopyWith(_$BackButtonPressedImpl value,
          $Res Function(_$BackButtonPressedImpl) then) =
      __$$BackButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackButtonPressedImplCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res, _$BackButtonPressedImpl>
    implements _$$BackButtonPressedImplCopyWith<$Res> {
  __$$BackButtonPressedImplCopyWithImpl(_$BackButtonPressedImpl _value,
      $Res Function(_$BackButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackButtonPressedImpl implements BackButtonPressed {
  const _$BackButtonPressedImpl();

  @override
  String toString() {
    return 'PasswordRecoveryEvent.backButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submitEmail,
    required TResult Function(String email) sendEmailButtonPressed,
    required TResult Function(String email, String code) sendCodeButtonPressed,
    required TResult Function(String email, String newPassword)
        changePasswordButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return backButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? submitEmail,
    TResult? Function(String email)? sendEmailButtonPressed,
    TResult? Function(String email, String code)? sendCodeButtonPressed,
    TResult? Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return backButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String code)? codeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submitEmail,
    TResult Function(String email)? sendEmailButtonPressed,
    TResult Function(String email, String code)? sendCodeButtonPressed,
    TResult Function(String email, String newPassword)?
        changePasswordButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (backButtonPressed != null) {
      return backButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SubmitEmail value) submitEmail,
    required TResult Function(SendEmailButtonPressed value)
        sendEmailButtonPressed,
    required TResult Function(SendCodeButtonPressed value)
        sendCodeButtonPressed,
    required TResult Function(ChangePasswordButtonPressed value)
        changePasswordButtonPressed,
    required TResult Function(BackButtonPressed value) backButtonPressed,
  }) {
    return backButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(CodeChanged value)? codeChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(SubmitEmail value)? submitEmail,
    TResult? Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult? Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult? Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult? Function(BackButtonPressed value)? backButtonPressed,
  }) {
    return backButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SubmitEmail value)? submitEmail,
    TResult Function(SendEmailButtonPressed value)? sendEmailButtonPressed,
    TResult Function(SendCodeButtonPressed value)? sendCodeButtonPressed,
    TResult Function(ChangePasswordButtonPressed value)?
        changePasswordButtonPressed,
    TResult Function(BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (backButtonPressed != null) {
      return backButtonPressed(this);
    }
    return orElse();
  }
}

abstract class BackButtonPressed implements PasswordRecoveryEvent {
  const factory BackButtonPressed() = _$BackButtonPressedImpl;
}
