import 'package:flutter/material.dart';
import 'package:flashchat_flutter/screens/welcome_screen.dart';
import 'package:flashchat_flutter/screens/login_screen.dart';
import 'package:flashchat_flutter/screens/registration_screen.dart';
import 'package:flashchat_flutter/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyLarge: TextStyle(color: Colors.white),
      //   ),
      // ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
      home: WelcomeScreen(),
    );
  }
}
