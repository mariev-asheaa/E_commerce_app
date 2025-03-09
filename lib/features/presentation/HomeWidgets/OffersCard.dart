import 'package:e_commerce_screen/core/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Offerscard extends StatelessWidget {
  const Offerscard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 280/135,
      child: Container(
        decoration: ShapeDecoration(
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            )
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('30% Off',style: Styles.textStyle30bold,),
              Text('On your first shopping',style: Styles.textStyle20,)
            ],
          ),
        ),
      ),
    );
  }
}

