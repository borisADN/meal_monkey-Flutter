import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/category_cell.dart';
import 'package:food_delivery_app/common_widget/most_popular_cell.dart';
import 'package:food_delivery_app/common_widget/popular_restaurants_row.dart';
import 'package:food_delivery_app/common_widget/recent_items_row.dart';
import 'package:food_delivery_app/common_widget/round_texfield.dart';
import 'package:food_delivery_app/common_widget/view_all_title_row.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List catArray = [
    {'image': 'assets/images/cat_offer.png', 'name': 'Offres'},
    {'image': 'assets/images/cat_sri.png', 'name': 'Togo'},
    {'image': 'assets/images/cat_3.png', 'name': 'Benin'},
    {'image': 'assets/images/cat_4.png', 'name': 'Cameroun'},
  ];

  List popArray = [
    {
      'image': 'assets/images/res_1.png',
      'name': 'Akume',
      'rate': '3.6',
      'rating': '751',
      'type': 'cafe',
      'food_type': 'orientale',
    },
    {
      'image': 'assets/images/res_2.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': 'cafe',
      'food_type': 'orientale',
    },
    {
      'image': 'assets/images/res_3.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': '',
      'food_type': 'orientale',
    },
  ];

  List mostPopArray = [
    {
      'image': 'assets/images/m_res_1.png',
      'name': 'Akume',
      'rate': '3.6',
      'rating': '751',
      'type': 'cafe',
      'food_type': 'orientale',
    },
    {
      'image': 'assets/images/m_res_2.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': 'cafe',
      'food_type': 'orientale',
    },
  ];

  List recArray = [
    {
      'image': 'assets/images/item_1.png',
      'name': 'Akume',
      'rate': '3.6',
      'rating': '751',
      'type': 'orientale',
      'food_type': 'orientale',
    },
    {
      'image': 'assets/images/item_2.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': 'cafe',
      'food_type': 'orientale',
    },
    {
      'image': 'assets/images/item_3.png',
      'name': 'Burger King',
      'rate': '4.9',
      'rating': '152',
      'type': 'cafe',
      'food_type': 'orientale',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bonjour , Séphora !',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Point de livraison',
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Position Actuelle',
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 25),
                        Image.asset(
                          'assets/images/dropdown.png',
                          width: 12,
                          height: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
              SizedBox(height: 30),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: catArray.length,
                  itemBuilder: (context, index) {
                    var cObj = catArray[index] as Map? ?? {};
                    return CategoryCell(cObj: cObj);
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: 'Restaurants Populaires',
                  onPressed: () {},
                ),
              ),

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: popArray.length,
                itemBuilder: (context, index) {
                  var pObj = popArray[index] as Map? ?? {};
                  return PopularRestaurantsRow(cObj: pObj);
                },
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: 'Les plus populaires',
                  onPressed: () {},
                ),
              ),

              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: mostPopArray.length,
                  itemBuilder: (context, index) {
                    var mObj = mostPopArray[index] as Map? ?? {};
                    return MostPopularCell(cObj: mObj);
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: 'Elements récents',
                  onPressed: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: recArray.length,
                itemBuilder: (context, index) {
                  var rObj = recArray[index] as Map? ?? {};
                  return RecentItemsRow(cObj: rObj);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
