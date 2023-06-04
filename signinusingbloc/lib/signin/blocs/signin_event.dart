abstract class SignInEvent {}

class SignInTExtChangeEvent extends SignInEvent {
  final String emailValue;
  final String passwordValue;
  SignInTExtChangeEvent(this.emailValue, this.passwordValue);
}

class SignInSubmittedEvent extends SignInEvent {
  final String email;
  final String password;
  SignInSubmittedEvent(this.email, this.password);
}
