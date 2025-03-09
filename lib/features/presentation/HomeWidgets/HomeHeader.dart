import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/core/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Homeheader extends StatelessWidget {
  const Homeheader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Welcome To ShopEase!',style: Styles.textStyle30bold.copyWith(
              color: ksecondary
            )),
            const Icon(Icons.shopping_cart,size: 30,color: ksecondary,)
          ],
        ),
      ],
    );
  }
}
