import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_icon_button.dart';
import 'package:food_delivery_app/view/more/my_order_view.dart';

class ItemDetailsView extends StatefulWidget {
  const ItemDetailsView({super.key});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  int price = 8500;
  int quantity = 1;
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/detail_top.png',
            width: media.width,
            height: media.width,
            fit: BoxFit.cover,
          ),

          Container(
            width: media.width,
            height: media.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(height: media.width - 60),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: TColor.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 35),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                // child:
                                // Center(
                                child: Text(
                                  'Pizza Margherita',
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  // ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IgnorePointer(
                                          ignoring: true,
                                          child: RatingBar.builder(
                                            initialRating: 3.2,
                                            minRating: 1,
                                            itemSize: 20,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0,
                                            ),
                                            itemBuilder:
                                                (context, _) => Icon(
                                                  Icons.star,
                                                  color: TColor.primary,
                                                ),
                                            onRatingUpdate: (rating) {
                                              // print(rating);
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '  4 etoiles',
                                          style: TextStyle(
                                            color: TColor.primary,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '$price FCFA',
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 31,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        // SizedBox(height: 3),
                                        // Text(
                                        //   'par personne',
                                        //   style: TextStyle(
                                        //     color: TColor.primaryText,
                                        //     fontSize: 11,
                                        //     fontWeight: FontWeight.w500,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                // child:
                                // Center(
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  // ),
                                ),
                              ),
                              SizedBox(height: 8),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                // child:
                                // Center(
                                child: Text(
                                  'Classique et savoureuse, la Margherita séduit avec sa sauce tomate parfumée, sa mozzarella fondante et ses feuilles de basilic frais. Un délice simple aux couleurs de l’Italie.',
                                  style: TextStyle(
                                    color: TColor.secondaryText,
                                    fontSize: 13,
                                  ),
                                  // ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                // child:
                                // Center(
                                child: Divider(
                                  color: TColor.secondaryText.withOpacity(0.4),
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                // child:
                                // Center(
                                child: Text(
                                  'Commander',
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  // ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: TColor.textfield,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isExpanded: true,
                                      items:
                                          ["small", "Big"].map((e) {
                                            return DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                e,
                                                style: TextStyle(
                                                  color: TColor.primaryText,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                      onChanged: (val) {},
                                      hint: Text(
                                        "- Sélectionner votre portion -",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: TColor.textfield,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isExpanded: true,
                                      items:
                                          ["small", "Big"].map((e) {
                                            return DropdownMenuItem(
                                              value: e,
                                              child: Text(
                                                e,
                                                style: TextStyle(
                                                  color: TColor.primaryText,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                      onChanged: (val) {},
                                      hint: Text(
                                        "- Choisissez vos ingredients -",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                // child:
                                // Center(
                                child: Row(
                                  children: [
                                    Text(
                                      'Nombre de Plats',
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      // ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: () {
                                        quantity--;
                                        if (quantity < 1) {
                                          quantity = 1;
                                        }
                                        setState(() {
                                          // quantity--;
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        height: 25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: TColor.primary,
                                          borderRadius: BorderRadius.circular(
                                            12.5,
                                          ),
                                        ),
                                        child: Text(
                                          '-',
                                          style: TextStyle(
                                            color: TColor.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      height: 25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: TColor.primary,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          12.5,
                                        ),
                                      ),
                                      child: Text(
                                        quantity.toString(),
                                        style: TextStyle(
                                          color: TColor.primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    InkWell(
                                      onTap: () {
                                        quantity++;

                                        setState(() {
                                          // quantity--;
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        height: 25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: TColor.primary,
                                          borderRadius: BorderRadius.circular(
                                            12.5,
                                          ),
                                        ),
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            color: TColor.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 220,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Container(
                                      width: media.width * 0.25,

                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: TColor.primary,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                              bottom: 8,
                                              top: 8,
                                              left: 10,
                                              right: 20,
                                            ),
                                            width: media.width - 80,
                                            height: 120,
                                            decoration: BoxDecoration(
                                              color: TColor.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(35),
                                                bottomLeft: Radius.circular(35),
                                                topRight: Radius.circular(10),
                                                bottomRight: Radius.circular(
                                                  10,
                                                ),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 12,
                                                  offset: Offset(0, 4),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'prix total',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: TColor.primaryText,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Text(
                                                  '${quantity * price} Fcfa',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: TColor.primaryText,
                                                    fontSize: 21,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                SizedBox(
                                                  width: 130,
                                                  height: 25,
                                                  child: RoundIconButton(
                                                    onPressed: () {},
                                                    title: 'Ajouter',
                                                    icon:
                                                        'assets/images/shopping_add.png',
                                                    color: TColor.primary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: TColor.white,
                                              borderRadius:
                                                  BorderRadius.circular(22.5),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 4,
                                                  offset: Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                            alignment: Alignment.center,
                                            child: Center(
                                              child: Image.asset(
                                                'assets/images/shopping_cart.png',
                                                width: 20,
                                                height: 20,
                                                color: TColor.primary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                    ],
                  ),
                  Container(
                    height: media.width - 20,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 4),
                    child: InkWell(
                      onTap: () {
                        isFav = !isFav;
                        setState(() {});
                      },
                      child: Image.asset(
                        isFav
                            ? 'assets/images/favorites_btn.png'
                            : 'assets/images/favorites_btn_2.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          'assets/images/btn_back.png',
                          width: 20,
                          height: 20,
                          color: TColor.white,
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
                          color: TColor.white,
                        ),
                      ),
                    ],
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
