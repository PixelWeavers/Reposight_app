import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService with ChangeNotifier {
final FirebaseAuth _auth = FirebaseAuth.instance;

// Current user stream
Stream<User?> get userStream => _auth.authStateChanges();

// Sign up with email and password
Future<UserCredential?> signUp(String email, String password) async {
  try {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
    return credential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
    return null;
  } catch (e) {
    print(e);
    return null;
  }
}

// Sign in with email and password
Future<UserCredential?> signIn(String email, String password) async {
  try {
    final credential = await _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
    return credential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
    return null;
  } catch (e) {
    print(e);
    return null;
  }
}
// Sign out
Future<void> signOut() async => await _auth.signOut();
}