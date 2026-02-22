import '../models/user_model.dart';

/// Mock authentication service.
/// Accepts any email and password (as long as they're not empty).
class AuthService {
  /// Simulates a network call for login.
  /// Returns a [User] on success, throws on failure.
  Future<User> login(String email, String password) async {
    // Simulate network latency
    await Future.delayed(const Duration(seconds: 1));

    if (email.isEmpty || password.isEmpty) {
      throw Exception('Email and password are required.');
    }

    // Accept any valid email format
    if (!_isValidEmail(email)) {
      throw Exception('Please enter a valid email address.');
    }

    // Extract name from email (before @)
    final name = email.split('@').first;

    return User(email: email, name: name);
  }

  /// Simple email validation
  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }
}
