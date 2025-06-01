import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toku_learning_app/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, 'home'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appcolor6,
      body: Column(
        children: [
          Spacer(),
          Image.asset('assets/images/splash/Logo.png'),

          Image.asset('assets/images/splash/learn.png'),

          Lottie.asset('assets/animation/Animation - 1743122133155.json'),
        ],
      ),
    );
  }
}
