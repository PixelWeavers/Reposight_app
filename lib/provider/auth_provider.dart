import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:reposight/services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();

  User? _user;

  User? get user => _user;

  set user(User? value) {
    _user = value;
    notifyListeners();
  }

  // Initialize with current user
  Future<void> initialize() async {
    final user = await _authService.userStream.first;
    _user = user;
    notifyListeners();
  }

  // Sign up
  Future<void> signUp(String email, String password) async {
    final credential = await _authService.signUp(email, password);
    if (credential != null) {
      _user = credential.user;
      notifyListeners();
    }
  }

  // Sign in
  Future<void> signIn(String email, String password) async {
    final credential = await _authService.signIn(email, password);
    if (credential != null) {
      _user = credential.user;
      notifyListeners();
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _authService.signOut();
    _user = null;
    notifyListeners();
  }
}