import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';

import '../../generated/assets.dart';
import 'OffersCard.dart';

class Offerspageview extends StatelessWidget {
  const Offerspageview({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(  //counts the height of each child
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(2, (index)=>Offerscard(
          image:index==0? Assets.assetsOffer1:Assets.assetsOffer2,
        ),
        )
    );
  }
}
