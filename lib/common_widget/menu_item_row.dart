import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class MenuItemRow extends StatelessWidget {
  final Map cObj;
  final VoidCallback? onTap;
  const MenuItemRow({super.key, required this.cObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              cObj['image'].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cObj['name'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 8),
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
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            cObj['type'].toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: TColor.white, fontSize: 11),
                          ),
                          Text(
                            ' .  ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            cObj['food_type'].toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: TColor.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
