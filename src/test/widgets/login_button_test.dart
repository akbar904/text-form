
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_auth_app/widgets/login_button.dart';

void main() {
	group('LoginButton Widget Tests', () {
		testWidgets('renders LoginButton with correct text', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: LoginButton(),
					),
				),
			);

			expect(find.text('Login'), findsOneWidget);
		});

		testWidgets('invokes callback when button is pressed', (WidgetTester tester) async {
			var buttonPressed = false;

			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: LoginButton(
							onPressed: () {
								buttonPressed = true;
							},
						),
					),
				),
			);

			await tester.tap(find.byType(ElevatedButton));
			await tester.pump();

			expect(buttonPressed, isTrue);
		});

		testWidgets('LoginButton is disabled when isEnabled is false', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: LoginButton(
							isEnabled: false,
						),
					),
				),
			);

			final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
			expect(button.onPressed, isNull);
		});

		testWidgets('LoginButton is enabled when isEnabled is true', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: LoginButton(
							isEnabled: true,
						),
					),
				),
			);

			final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
			expect(button.onPressed, isNotNull);
		});
	});
}
