import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/menu_item_row.dart';
import 'package:food_delivery_app/common_widget/round_texfield.dart';
import 'package:food_delivery_app/view/menu/item_details_view.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';

class MenuItemsView extends StatefulWidget {
  final Map data;
  const MenuItemsView({super.key, required this.data});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  List menuItemsArray = [
    {
      'image': 'assets/images/dess_1.png',
      'name': 'Akume',
      'rate': '3.6',
      'rating': '751',
      'type': 'cafe',
      'food_type': 'Dessert',
    },
    {
      'image': 'assets/images/dess_2.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': 'cafe',
      'food_type': 'Dessert',
    },
    {
      'image': 'assets/images/dess_3.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': '',
      'food_type': 'Dessert',
    },
    {
      'image': 'assets/images/dess_4.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': '',
      'food_type': 'Dessert',
    },
    {
      'image': 'assets/images/dess_4.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': '',
      'food_type': 'Dessert',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        'assets/images/btn_back.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        widget.data['name'].toString(),
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
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

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextField(
                  hintText: 'Rechercher',
                  keyboardType: TextInputType.text,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      'assets/images/search.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: menuItemsArray.length,
                itemBuilder: (context, index) {
                  var data = menuItemsArray[index] as Map? ?? {};
                  return MenuItemRow(
                    cObj: data,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetailsView(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
