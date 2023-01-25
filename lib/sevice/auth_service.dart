import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // Declare FirebaseAuth
  FirebaseAuth _auth = FirebaseAuth.instance;


  // Declare Register Function
  Future<void> RegisterActor(String _email,String _password) async {
    try {
      final Credential = await _auth.createUserWithEmailAndPassword(
        email: _email, 
        password: _password
        );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'not safe-password') {
        print('The Password Your is insecure.');
      } else if (e.code == 'email-already-in-use'){
        print('The account already exists  email.');
      }
    } cath (e) {
      print(e);
    }
  }

  static register(String text, String text2) {}



  // Declare Login Function



}