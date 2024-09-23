
import 'package:bloc/bloc.dart';

class LoginState {
	final String email;
	final String password;

	LoginState({
		this.email = '',
		this.password = '',
	});

	LoginState copyWith({
		String? email,
		String? password,
	}) {
		return LoginState(
			email: email ?? this.email,
			password: password ?? this.password,
		);
	}
}

class LoginCubit extends Cubit<LoginState> {
	LoginCubit() : super(LoginState());

	void updateEmail(String email) {
		emit(state.copyWith(email: email));
	}

	void updatePassword(String password) {
		emit(state.copyWith(password: password));
	}
}
