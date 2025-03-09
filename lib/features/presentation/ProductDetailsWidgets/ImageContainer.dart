
import 'package:e_commerce_screen/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String image;
  final bool isTapped ;
  const ImageContainer({super.key, required this.image, required this.isTapped,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: isTapped?Border.all(color: ksecondary ):Border.all(color: kprimary ),

          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Image(image: NetworkImage(image)),
      ),
    );
  }
}
class AssetImageContainer extends StatelessWidget {
  final String image;
  final bool isTapped ;
  const AssetImageContainer({super.key, required this.image, required this.isTapped,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        height: 55,
        width: 80,
        decoration: BoxDecoration(
          border: isTapped?Border.all(color: ksecondary ):Border.all(color: kprimary ),

          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Image(image: AssetImage(image)),
      ),
    );
  }
}