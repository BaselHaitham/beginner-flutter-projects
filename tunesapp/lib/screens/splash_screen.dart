import 'package:flutter/material.dart';
import 'package:tunesapp/core/utils/appstyles.dart';
import 'package:tunesapp/screens/tune_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => TuneScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: size.height * 0.4),
            Container(
              alignment: Alignment.center,
              height: size.height * 0.05,
              width: size.width * 0.4,
              color: Colors.black,
              child: Text('Tunes App', style: AppStyles.splashStyle(context)),
            ),
          ],
        ),
      ),
    );
  }
}
