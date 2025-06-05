import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class ViewAllTitleRow extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const ViewAllTitleRow({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: Text(
                        'Voir tout',
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                );
  }
}