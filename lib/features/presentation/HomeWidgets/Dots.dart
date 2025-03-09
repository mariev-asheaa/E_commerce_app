import 'package:flutter/cupertino.dart';

import 'DotIndicator.dart';

class Dots extends StatelessWidget {
  const Dots({super.key, required this.currantPageIndex});
  final int currantPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(2, (index)=>
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Dotindicator(isActive: index==currantPageIndex),
          )
      ),
    );
  }
}
