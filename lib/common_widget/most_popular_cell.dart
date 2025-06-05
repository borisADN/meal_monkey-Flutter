import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class MostPopularCell extends StatelessWidget {
  final Map cObj;
  final VoidCallback? onTap;
  const MostPopularCell({super.key, required this.cObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cObj['image'].toString(),
                width: 220,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              cObj['name'].toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  cObj['type'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.secondaryText, fontSize: 12),
                ),
                Text(
                  ' .  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.primary, fontSize: 12),
                ),
                Text(
                  cObj['food_type'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.secondaryText, fontSize: 12),
                ),
                SizedBox(width: 5),
                Image.asset(
                  'assets/images/rate.png',
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
                Text(
                  cObj['rate'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.primary, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
