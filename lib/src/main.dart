import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sijalur_app/firebase_options.dart';
// import 'package:sijalur_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:sijalur_app/src/features/authentication/screens/splashscreen/splash_screen.dart';
import 'package:sijalur_app/src/utils/theme/theme.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

