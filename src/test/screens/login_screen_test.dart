
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_auth_app/screens/login_screen.dart';

class MockLoginCubit extends MockCubit<LoginState> implements LoginCubit {}

void main() {
	group('LoginScreen Widget Tests', () {
		testWidgets('should display email and password text fields and login button', (WidgetTester tester) async {
			await tester.pumpWidget(MaterialApp(home: LoginScreen()));

			expect(find.byType(EmailTextField), findsOneWidget);
			expect(find.byType(PasswordTextField), findsOneWidget);
			expect(find.byType(LoginButton), findsOneWidget);
		});
	});

	group('LoginCubit Tests', () {
		late LoginCubit loginCubit;

		setUp(() {
			loginCubit = MockLoginCubit();
		});

		blocTest<LoginCubit, LoginState>(
			'should emit LoginState with updated email when updateEmail is called',
			build: () => loginCubit,
			act: (cubit) => cubit.updateEmail('test@example.com'),
			expect: () => [isA<LoginState>()],
		);

		blocTest<LoginCubit, LoginState>(
			'should emit LoginState with updated password when updatePassword is called',
			build: () => loginCubit,
			act: (cubit) => cubit.updatePassword('password123'),
			expect: () => [isA<LoginState>()],
		);
	});
}
