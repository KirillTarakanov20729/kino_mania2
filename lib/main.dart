import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


import 'package:flutter/material.dart';
import 'Pages/Auth/LoginPage.dart';
import 'Seeders/DataSeeder.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}



