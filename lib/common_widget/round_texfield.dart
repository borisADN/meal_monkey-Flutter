import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;
  const RoundTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.bgColor,
    this.obscureText = false,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(padding: const EdgeInsets.only(left: 15), child: left!),
          Expanded(
            child: TextField(
              obscureText: obscureText,
              autocorrect: false,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: TColor.placeholder,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundTitleTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;
  const RoundTitleTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.bgColor,
    this.obscureText = false,
    this.left,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: bgColor ?? TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(padding: const EdgeInsets.only(left: 15), child: left!),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 55,
                  margin: EdgeInsets.only(top: 8),
// 17:40                   
                  child: TextField(
                    obscureText: obscureText,
                    autocorrect: false,
                    keyboardType: keyboardType,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(left: 20, top: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(color: TColor.placeholder, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
