
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_auth_app/models/user_model.dart';

void main() {
	group('User Model Tests', () {
		test('User model can be instantiated', () {
			// Arrange
			final email = 'test@example.com';
			final password = 'password123';

			// Act
			final user = User(email: email, password: password);

			// Assert
			expect(user.email, email);
			expect(user.password, password);
		});

		test('User model can be serialized to JSON', () {
			// Arrange
			final user = User(email: 'test@example.com', password: 'password123');
			final expectedJson = {
				'email': 'test@example.com',
				'password': 'password123',
			};

			// Act
			final userJson = user.toJson();

			// Assert
			expect(userJson, expectedJson);
		});

		test('User model can be deserialized from JSON', () {
			// Arrange
			final userJson = {
				'email': 'test@example.com',
				'password': 'password123',
			};

			// Act
			final user = User.fromJson(userJson);

			// Assert
			expect(user.email, userJson['email']);
			expect(user.password, userJson['password']);
		});
	});
}

class User {
	final String email;
	final String password;

	User({required this.email, required this.password});

	Map<String, dynamic> toJson() {
		return {
			'email': email,
			'password': password,
		};
	}

	factory User.fromJson(Map<String, dynamic> json) {
		return User(
			email: json['email'],
			password: json['password'],
		);
	}
}
