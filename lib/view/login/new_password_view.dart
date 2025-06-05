import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_texfield.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
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
                textAlign: TextAlign.center,
                'Nouveau mot de passe',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                'Renseignez votre nouveau mot de passe !',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 25),
              RoundTextField(
                obscureText: true,
                hintText: 'Nouveau mot de passe',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 25),
              RoundTextField(
                obscureText: true,
                hintText: 'Confirmer le mot de passe',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 20),
              RoundButton(title: 'Confirmer', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
