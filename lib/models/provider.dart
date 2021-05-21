import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final firebase = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();
  bool _isSigningIn;
  GoogleSignInProvider() {
    _isSigningIn = false;
  }

  bool get isSigningIn => _isSigningIn;
  set isSigningIn(bool isSigningIn) {
    _isSigningIn = isSigningIn;
    notifyListeners();
  }

  Future login() async {
      final user = await googleSignIn.signIn();
      if (user == null) {
        _isSigningIn = false;
        return;
      }
      else {
        final googleAuth = await user.authentication;

        final credential = GoogleAuthProvider.credential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
        await firebase.signInWithCredential(credential);

        _isSigningIn = false;
      }
  }
  void logOut() async {
    await googleSignIn.disconnect();
    firebase.signOut();
  }
  Future loginWithEmail() async {
  }
}

