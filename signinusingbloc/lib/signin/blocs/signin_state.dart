abstract class SignInState {}

class SignInInvalidState extends SignInState {}

class SignInInitialState extends SignInState {}

class SignValidState extends SignInState {}

class SignInErrorState extends SignInState {
  final String errorMessage;
  SignInErrorState(this.errorMessage);
}

class SignInLoadingState extends SignInState{}