
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_auth_app/widgets/password_text_field.dart';

void main() {
	group('PasswordTextField Widget Tests', () {
		testWidgets('PasswordTextField shows a TextField with obscureText set to true', (WidgetTester tester) async {
			// Arrange
			await tester.pumpWidget(MaterialApp(
				home: Scaffold(
					body: PasswordTextField(),
				),
			));

			// Act
			final textFieldFinder = find.byType(TextField);

			// Assert
			expect(textFieldFinder, findsOneWidget);
			final textFieldWidget = tester.widget<TextField>(textFieldFinder);
			expect(textFieldWidget.obscureText, isTrue);
		});

		testWidgets('PasswordTextField has a labelText of "Password"', (WidgetTester tester) async {
			// Arrange
			await tester.pumpWidget(MaterialApp(
				home: Scaffold(
					body: PasswordTextField(),
				),
			));

			// Act
			final textFieldFinder = find.byType(TextField);

			// Assert
			expect(textFieldFinder, findsOneWidget);
			final textFieldWidget = tester.widget<TextField>(textFieldFinder);
			expect(textFieldWidget.decoration?.labelText, 'Password');
		});
	});
}
