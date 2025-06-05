import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/common_widget/round_texfield.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ImagePicker _picker = ImagePicker();
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyOrderView(),
                          ),
                        );
                      },
                      icon: Image.asset(
                        'assets/images/shopping_cart.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: TColor.placeholder,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                child:
                    _image != null
                        ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            File(_image!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                        : Icon(
                          Icons.person,
                          color: TColor.secondaryText,
                          size: 50,
                        ),
              ),
              TextButton.icon(
                onPressed: () async {
                  _image = await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {});
                },
                icon: Icon(Icons.edit, color: TColor.primary, size: 12),
                label: Text(
                  'Modifier Profil',
                  style: TextStyle(color: TColor.primary, fontSize: 12),
                ),
              ),
              Text(
                'Bonjour Salah',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Se Deconnecter',
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: RoundTitleTextField(
                  title: 'Nom',
                  hintText: 'Entrez votre nom',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: RoundTitleTextField(
                  title: 'Email',
                  hintText: 'Entrez votre email',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: RoundTitleTextField(
                  title: 'Numéro de telephone',
                  hintText: 'Entrez votre numéro de telephone',
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: RoundTitleTextField(
                  title: 'Adresse',
                  hintText: 'Entrez votre adresse',
                  keyboardType: TextInputType.streetAddress,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: RoundTitleTextField(
                  title: 'Mot de passe',
                  hintText: 'Nouveau mot de passe',
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: RoundTitleTextField(
                  title: 'Confirmer le mot de passe',
                  hintText: 'Confirmer le mot de passe',
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundButton(
                  title: 'Enregistrer',
                  onPressed: () {
                    // Navigator.pushNamed(context, '/new_password');
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
