import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learning_dart/pages/home.dart';
import 'package:learning_dart/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    start();
  }

  void start() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    var isLogin = sp.getBool("isLogin") ?? false;
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => isLogin ? const Home() : const Login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          height: 200,
          width: 200,
          image: AssetImage('images/logo.png'),
        ),
      ),
    );
  }
}
