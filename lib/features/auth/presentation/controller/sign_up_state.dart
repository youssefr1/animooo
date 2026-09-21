part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpChangePasswordVisibility
    extends SignUpState {}

final class SignUpError extends SignUpState {
  final String message;

  SignUpError(this.message);
}
