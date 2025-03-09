import 'package:flutter/cupertino.dart';
import 'Dots.dart';
import 'OffersPageView.dart';

class Offercardssection extends StatefulWidget {
  const Offercardssection({super.key});

  @override
  State<Offercardssection> createState() => _OffercardssectionState();
}

class _OffercardssectionState extends State<Offercardssection> {
  late PageController pageController;
  int currentPageIndex=0;
  @override
  void initState() {
    pageController=PageController();
    pageController.addListener((){
      currentPageIndex=pageController.page!.round();
      setState(() {

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Offerspageview(pageController: pageController,),
            const SizedBox(height: 19,),
            Dots(currantPageIndex: currentPageIndex,),
          ],
        ),
    );
  }
}

