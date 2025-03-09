
import 'package:e_commerce_screen/features/models/productDetailsModel.dart';
import 'package:e_commerce_screen/features/presentation/ProductDetailsWidgets/rating_container.dart';
import 'package:flutter/cupertino.dart';

class Productinfo extends StatelessWidget {
  const Productinfo({super.key, required this.productDetailsModel});
    final ProductDetailsModel productDetailsModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(productDetailsModel.title??'',style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
              ),
              rating(rate: "${productDetailsModel.rating ?? 0}",)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(productDetailsModel.description??'',style:
          const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
            ,),
        ),
      ],
    );
  }
}
