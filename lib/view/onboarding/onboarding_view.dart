import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:food_delivery_app/view/main_tabview/main_tabview.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int selectedPage = 0;
  PageController pageController = PageController();

  List pageArr = [
    {
      'title': ' Un monde de saveurs à portée de main',
      'subtitle':
          'Laissez vos papilles voyager : commandez vos plats préférés\nou découvrez de nouvelles recettes à savourer\nsans bouger de chez vous.',
      'image': 'assets/images/on_boarding_1.png',
    },
    {
      'title': 'Livraison Rapide',
      'subtitle':
          'Commandez, détendez-vous… on s’occupe du reste !\nVos repas arrivent vite, prêts à être savourés.',
      'image': 'assets/images/on_boarding_2.png',
    },
    {
      'title': 'Suivi en temps reel',
      'subtitle':
          'Du clic à la livraison, vous gardez un œil sur tout.\nSuivi précis, tranquillité assurée.',
      'image': 'assets/images/on_boarding_3.png',
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        selectedPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj['image'].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: media.width * 0.2),
                  Text(
                    pObj['title'].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: media.width * 0.05),
                  Text(
                    pObj['subtitle'].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: media.width * 0.3),
                ],
              );
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: media.height * 0.6),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    pageArr.map((e) {
                      var index = pageArr.indexOf(e);
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color:
                              selectedPage == index
                                  ? TColor.primary
                                  : TColor.placeholder,
                          shape: BoxShape.circle,
                        ),
                      );
                    }).toList(),
              ),
              SizedBox(height: media.height * 0.25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                  onPressed: () {
                    if (selectedPage >= 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainTabView(),
                        ),
                      );
                    } else {
                      setState(() {
                        selectedPage++;
                        pageController.animateToPage(
                          selectedPage,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceInOut,
                        );
                      });
                    }
                  },
                  title: 'Suivant',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
