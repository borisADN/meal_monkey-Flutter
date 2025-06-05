import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/tab_button.dart';
import 'package:food_delivery_app/view/home/home_view.dart';
import 'package:food_delivery_app/view/menu/menu_view.dart';
import 'package:food_delivery_app/view/more/more_view.dart';
import 'package:food_delivery_app/view/offer/offer_view.dart';
import 'package:food_delivery_app/view/profile/profile_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectedTabIndex = 2;
  PageStorageBucket bucket = PageStorageBucket();
  Widget selectPageView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: selectPageView),
      backgroundColor: Color(0xfff5f5f5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          backgroundColor:
              selectedTabIndex == 2 ? TColor.primary : TColor.placeholder,
          onPressed: () {
            if (selectedTabIndex != 2) {
              // setState(() {
              selectedTabIndex = 2;
              selectPageView = HomeView();
              // });
            } else {}

            if (mounted) {
              setState(() {});
            }
          },
          shape: CircleBorder(),

          // child: Container(
          //   width: 60,
          //   height: 60,
          //   alignment: Alignment.center,
          child: Image.asset(
            'assets/images/tab_home.png',
            width: 30,
            height: 30,
            // fit: BoxFit.contain,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        // color: TColor.white,
        surfaceTintColor: TColor.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                onTap: () {
                  if (selectedTabIndex != 0) {
                    selectedTabIndex = 0;
                    selectPageView = MenuView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "menu",
                icon: 'assets/images/tab_menu.png',
                isSelected: selectedTabIndex == 0,
              ),
              TabButton(
                onTap: () {
                  if (selectedTabIndex != 1) {
                    selectedTabIndex = 1;
                    selectPageView = OfferView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Offres",
                icon: 'assets/images/tab_offer.png',
                isSelected: selectedTabIndex == 1,
              ),
              SizedBox(height: 40, width: 40),
              TabButton(
                onTap: () {
                  if (selectedTabIndex != 3) {
                    selectedTabIndex = 3;
                    selectPageView = ProfileView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Profile",
                icon: 'assets/images/tab_profile.png',
                isSelected: selectedTabIndex == 3,
              ),
              TabButton(
                onTap: () {
                  if (selectedTabIndex != 4) {
                    selectedTabIndex = 4;
                    selectPageView = MoreView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Plus",
                icon: 'assets/images/tab_more.png',
                isSelected: selectedTabIndex == 4,
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
