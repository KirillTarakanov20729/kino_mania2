import 'package:firebase_auth/firebase_auth.dart';


Future<bool> login(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return true;
  } catch (e) {
    // Обработка ошибок при входе
    return false;
  }
}
