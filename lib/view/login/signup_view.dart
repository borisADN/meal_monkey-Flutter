import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_texfield.dart';
import 'package:food_delivery_app/view/login/login_view.dart';
import 'package:food_delivery_app/view/login/otp_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              Text(
                'Creation de Compte',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Renseignez vos informations pour vous inscrire!',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 25),
              RoundTextField(hintText: 'Nom', keyboardType: TextInputType.text),
              SizedBox(height: 25),
              RoundTextField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 25),
              RoundTextField(
                hintText: 'Numéro de Telephone',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 25),
              RoundTextField(
                hintText: 'Adresse',
                keyboardType: TextInputType.streetAddress,
              ),
              SizedBox(height: 20),
              RoundTextField(
                obscureText: true,
                hintText: 'Mot de passe',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 20),
              RoundTextField(
                obscureText: true,
                hintText: 'Confirmer le mot de passe',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 25),
              RoundButton(
                title: 'S\'inscrire',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OtpView()),
                  );
                },
              ),

              SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Vous avez deja un compte? ',
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      'Se connecter',
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
