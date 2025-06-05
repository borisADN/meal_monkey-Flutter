import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(const Duration(seconds: 3), () {
    navigateToWelcome();
    // });
  }

  void navigateToWelcome() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
      context,
MaterialPageRoute(builder: (context) => const WelcomeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/splash_bg.png',
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/app_logo.png',
            width: media.width * 0.7,
            height: media.height * 0.7,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
