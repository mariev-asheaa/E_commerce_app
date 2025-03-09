import 'package:flutter/cupertino.dart';
import 'BottomNavBar.dart';
import 'Categories.dart';
import 'HomeHeader.dart';
import 'OfferCardsSection.dart';
import 'ProductsGridView.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Homeheader(),
                  Offercardssection(),
                  Categories(),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Productsgridview(),
            ),
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 630,
          child: Bottomnavbar(),
        ),
      ],
    );
  }
}

