
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:com.example.simple_auth_app/cubits/login_cubit.dart';

class MockLoginCubit extends MockCubit<LoginState> implements LoginCubit {}

void main() {
	group('LoginCubit', () {
		late LoginCubit loginCubit;

		setUp(() {
			loginCubit = LoginCubit();
		});

		tearDown(() {
			loginCubit.close();
		});

		test('initial state is LoginState', () {
			expect(loginCubit.state, equals(LoginState()));
		});

		blocTest<LoginCubit, LoginState>(
			'emits state with updated email when updateEmail is called',
			build: () => loginCubit,
			act: (cubit) => cubit.updateEmail('test@example.com'),
			expect: () => [LoginState(email: 'test@example.com')],
		);

		blocTest<LoginCubit, LoginState>(
			'emits state with updated password when updatePassword is called',
			build: () => loginCubit,
			act: (cubit) => cubit.updatePassword('password123'),
			expect: () => [LoginState(password: 'password123')],
		);
	});
}
