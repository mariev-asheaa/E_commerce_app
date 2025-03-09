import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/button.dart';
import '../../../core/constants.dart';
import '../../models/productDetailsModel.dart';
import 'IconContaner.dart';

class Productspecification extends StatelessWidget {
  const Productspecification({super.key, required this.productDetailsModel, });
  final ProductDetailsModel productDetailsModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: IconContaner(icon: Icons.article,color: ksecondary,bgcolor: kprimary,),
              ),
              Text('Product Specification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 50,),
              Icon(Icons.arrow_forward_ios),

            ],
          ),
          const Divider(thickness: 1,height:0,indent: 50,endIndent: 50,),
          //coloravatar(),
          const SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                Text('\$${productDetailsModel.price ?? 0}',style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(width: 40,),
                const button( label: 'Add To Cart', color: ksecondary, textcolor: Colors.white,height: 60,width: 225,),

              ],
            ),
          )
        ],
      ),
    );
  }
}

