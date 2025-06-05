import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/login/login_view.dart';
import 'package:food_delivery_app/view/login/signup_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/welcome_top_shape.png',
                width: media.width,
              ),
              Image.asset(
                'assets/images/app_logo.png',
                width: media.width * 0.7,
                height: media.height * 0.2,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: media.width * 0.1),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Decouvrez les meilleurs mets de plus 1000 restaurants de votre ville et faites vous livrez en quelques minutes !',
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          SizedBox(height: media.width * 0.1),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                );
              },
              title: 'Se connecter',
            ),
          ),
          SizedBox(height: media.width * 0.07),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              type: RoundButtonType.textPrimary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupView()),
                );
              },
              title: 'Créer un compte',
            ),
          ),
        ],
      ),
    );
  }
}
