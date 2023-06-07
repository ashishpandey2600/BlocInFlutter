import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:signinusingbloc/signin/blocs/signin_event.dart';
import 'package:signinusingbloc/signin/blocs/signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<SignInTExtChangeEvent>((event, emit) {
      if (event.emailValue == "" ||
          EmailValidator.validate(event.emailValue) == false) {
        emit(SignInErrorState("Please enter a valid email address"));
      } else if (event.passwordValue.length < 8) {
        emit(SignInErrorState("Please Enter a valid Password!"));
      } else {
        emit(SignValidState());
      }
    });
    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}
