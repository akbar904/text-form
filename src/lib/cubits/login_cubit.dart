
import 'package:bloc/bloc.dart';

class LoginState {
	final String email;

	LoginState({
		this.email = '',
	});

	LoginState copyWith({
		String? email,
	}) {
		return LoginState(
			email: email ?? this.email,
		);
	}
}

class LoginCubit extends Cubit<LoginState> {
	LoginCubit() : super(LoginState());

	void updateEmail(String email) {
		emit(state.copyWith(email: email));
	}
}
