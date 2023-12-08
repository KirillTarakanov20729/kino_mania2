import 'package:firebase_auth/firebase_auth.dart';

Future<bool> registerUser(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    User? user = userCredential.user;
    return true;
  } catch (e) {
    return false;
  }
}
