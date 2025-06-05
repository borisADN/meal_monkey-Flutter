import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/common_widget/round_texfield.dart';

class AddCartView extends StatefulWidget {
  const AddCartView({super.key});

  @override
  State<AddCartView> createState() => _AddCartViewState();
}

class _AddCartViewState extends State<AddCartView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      width: media.width,
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      // alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ajouter une autre carte",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close, color: TColor.primaryText, size: 25),
              ),
            ],
          ),
          Divider(color: TColor.secondaryText.withOpacity(0.4), height: 1),
          SizedBox(height: 15),
          RoundTextField(
            hintText: 'Numéro de la carte',
            keyboardType: TextInputType.number,
          ),

          SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Expiration",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                child: RoundTextField(
                  hintText: 'MM',
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(width: 15),
              SizedBox(
                width: 100,
                child: RoundTextField(
                  hintText: 'AAAA',
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          RoundTextField(
            hintText: 'Code de sécurité',
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 15),
          RoundTextField(hintText: 'Nom'),
          SizedBox(height: 15),
          RoundTextField(hintText: 'Prénom'),
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Vous pourriez retirer cette carte!",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                // 21:06
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 25),
          RoundIconButton(
            onPressed: () {},
            title: "Enregistrer",
            icon: "assets/images/add.png",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: TColor.primary,
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
