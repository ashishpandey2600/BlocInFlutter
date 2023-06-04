import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:signinusingbloc/signin/blocs/signin_event.dart';
import 'package:signinusingbloc/signin/blocs/signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInstate> {
  SignInBloc() : super(SignInInitialState()) {
    on<SignInTExtChangeEvent>((event, emit) { 
      if (event.emailValue == "" || EmailValidator.validate(event,emailValue)==false) {
        emit(SignInErrorState("Please enter a valid email address"));
      }
    });
    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInErrorState("Sign in succes full"));
    });
  }
}
