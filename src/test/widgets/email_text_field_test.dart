
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_auth_app/widgets/email_text_field.dart';

void main() {
	group('EmailTextField Widget Tests', () {
		testWidgets('renders EmailTextField with correct hint text', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: EmailTextField(),
					),
				),
			);

			// Verify that the EmailTextField widget is present in the widget tree
			final emailTextFieldFinder = find.byType(TextField);
			expect(emailTextFieldFinder, findsOneWidget);

			// Verify that the TextField has the correct hint text
			final hintTextFinder = find.text('Enter your email');
			expect(hintTextFinder, findsOneWidget);
		});

		testWidgets('renders EmailTextField with email keyboard type', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: EmailTextField(),
					),
				),
			);

			// Verify that the TextField has keyboardType set to TextInputType.emailAddress
			final emailTextFieldFinder = find.byType(TextField);
			final textFieldWidget = tester.widget<TextField>(emailTextFieldFinder);
			expect(textFieldWidget.keyboardType, TextInputType.emailAddress);
		});

		testWidgets('renders EmailTextField with email input decoration', (WidgetTester tester) async {
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: EmailTextField(),
					),
				),
			);

			// Verify that the TextField has decoration set with a labelText
			final emailTextFieldFinder = find.byType(TextField);
			final textFieldWidget = tester.widget<TextField>(emailTextFieldFinder);
			expect(textFieldWidget.decoration?.labelText, 'Email');
		});
	});
}
