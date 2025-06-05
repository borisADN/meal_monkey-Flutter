import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String icon;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const RoundIconButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
    this.fontWeight = FontWeight.w500,
    required this.color,
    this.fontSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          // color: Color(0xFF367fc0),
          color: color,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(icon, width: 15, height: 15, fit: BoxFit.contain),
              SizedBox(width: 10),
              Text(
                // 'Se connecter avec Facebook',
                title,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
