
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_auth_app/main.dart';

class MockLoginCubit extends MockCubit<LoginState> implements LoginCubit {}

void main() {
	group('MyApp', () {
		testWidgets('renders LoginScreen', (tester) async {
			await tester.pumpWidget(MyApp());
			expect(find.text('Email'), findsOneWidget);
			expect(find.text('Password'), findsOneWidget);
			expect(find.text('Login'), findsOneWidget);
		});
	});
}
