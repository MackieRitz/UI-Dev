import 'dart:async';
import 'package:esy_labs/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:esy_labs/screens/splash/components/body.dart';
import 'package:esy_labs/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, checkFirstSeen);
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _introSeen = (prefs.getBool('intro_seen') ?? false);
    
    Navigator.pop(context);
    if (_introSeen) {
      Navigator.pushNamed(context, SignInScreen.routeName);
    } else {
      await prefs.setBool('intro_seen', true);
      Navigator.pushNamed(context, SplashScreen.routeName);
    }
  }


  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
