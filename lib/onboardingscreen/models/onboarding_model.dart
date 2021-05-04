import 'package:flutter/cupertino.dart';
import 'file:///C:/Users/Varoxez/AndroidStudioProjects/university_ecommerce_app/lib/onboardingscreen/views/components/onboarding_card.dart';

int currentPage = 0;
int lang = 0;
final List<String> english = ["", ""];
List<List<String>> language = [
  [
    "Online shoping",
    "we offers to you online payment",
    "Dliver",
    "",
    "kemo",
    "kemo",
    "Online Payment",
    "we  offers to you online  paymennt  by paybal and visa card"
  ],
  [
    "شراء أونلاين",
    "نقدم خدمة الشراء اون لاين ",
    "التوصيل",
    "خدمة التوصيل من البائع للمستخدم",
    "بلاه",
    "بلاه",
    "بلاه",
    "بلاه",
  ]
];


PageController controller = PageController();

List<OnboardingCard> sliderCards = [
  OnboardingCard(
    titleDescriptions: language[lang][0],
    descriptions: language[lang][1],
    animationassest:
    "assets/jsons_Animation/landingpage/53902-online-shopping-and-delivery.json",
  ),
  OnboardingCard(
    titleDescriptions: language[lang][2],
    descriptions: language[lang][3],
    animationassest:
    "assets/jsons_Animation/landingpage/33954-delivery-man-on-the-way.json",
  ),
  OnboardingCard(
    titleDescriptions: language[lang][4],
    descriptions: language[lang][5],
    animationassest:
    "assets/jsons_Animation/landingpage/37960-online-payment.json",
  ),
  OnboardingCard(
    titleDescriptions: language[lang][6],
    descriptions: language[lang][7],
    animationassest:
    "assets/jsons_Animation/landingpage/47956-area-map.json",
  ),
];