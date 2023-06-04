abstract class SignInstate {}

class SIgnInInvalidState extends SignInstate {}

class SignInInitialState extends SignInstate {}

class SignValidState extends SignInstate {}

class SignInErrorState extends SignInstate {
  final String errorMessage;
  SignInErrorState(this.errorMessage);
}

class SignInLoadingState extends SignInstate{}