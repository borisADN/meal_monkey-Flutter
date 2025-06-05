import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class RecentItemsRow extends StatelessWidget {
  final Map cObj;
  final VoidCallback? onTap;
  const RecentItemsRow({super.key, required this.cObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cObj['image'].toString(),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cObj['name'].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        cObj['type'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        ' .  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: TColor.primary, fontSize: 11),
                      ),
                      Text(
                        cObj['food_type'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/rate.png',
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        cObj['rate'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: TColor.primary, fontSize: 11),
                      ),
                      SizedBox(width: 8),
                      Text(
                        cObj['type'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
