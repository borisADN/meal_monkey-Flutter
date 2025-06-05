import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class CategoryCell extends StatelessWidget {
  final Map cObj;
  final VoidCallback? onTap;
  const CategoryCell({super.key, required this.cObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cObj['image'].toString(),
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              cObj['name'].toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
