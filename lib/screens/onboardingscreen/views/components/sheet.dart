import 'package:flutter/cupertino.dart';

import 'package:university_ecommerce_app/screens/onboardingscreen/models/onboarding_model.dart';
import 'onboarding_card.dart';

class Sheet extends StatelessWidget {
  final onchange;
  const Sheet(
      {@required this.onchange});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: sliderCards.length,
      itemBuilder: (context, index) {
        return sliderCards[index];
      },
      onPageChanged: onchange,
      controller: controller,
    );
  }
}
