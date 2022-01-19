import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:esy_labs/routes.dart';
import 'package:esy_labs/screens/splash/splash_screen.dart';
import 'package:esy_labs/theme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Esy Labs',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
