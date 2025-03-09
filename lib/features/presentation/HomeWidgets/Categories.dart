import 'package:e_commerce_screen/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/styles.dart';
import '../../cubits/get products/get_product_cubit.dart';
import '../../generated/assets.dart';
import '../ProductDetailsWidgets/ImageContainer.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int index=0;
  final List<String> categories = ["beauty", "fragrances", "furniture", "groceries"];
  @override
  void initState() {
    BlocProvider.of<GetProductCubit>(context).getProducts(category: categories[0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 15,),
         Text('Categories',style: Styles.textStyle20.copyWith(
           color: ksecondary
         ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: (){
                  setState(() {
                    index=0;
                  });
                  BlocProvider.of<GetProductCubit>(context).getProducts(category: categories[0]);
                },
                child: Column(
                  children: [
                    AssetImageContainer(image: Assets.assetsMakeover, isTapped: index==0),
                    const Text('Beauty')
                  ],
                )),
            InkWell(
                onTap: (){
                  setState(() {
                    index=1;
                  });
                  BlocProvider.of<GetProductCubit>(context).getProducts(category: categories[1]);
                },
                child: Column(
                  children: [
                    AssetImageContainer(image: Assets.assetsPerfume, isTapped: index==1),
                    const Text('Fragrances')
                  ],
                )),
            InkWell(
                onTap: (){
                  setState(() {
                    index=2;
                  });
                  BlocProvider.of<GetProductCubit>(context).getProducts(category: categories[2]);
                },
                child: Column(
                  children: [
                    AssetImageContainer(image: Assets.assetsArmchair, isTapped: index==2),
                    const Text('Furniture')
                  ],
                )),
            InkWell(
                onTap: (){
                  setState(() {
                    index=3;
                  });
                  BlocProvider.of<GetProductCubit>(context).getProducts(category: categories[3]);
                },
                child: Column(
                  children: [
                    AssetImageContainer(image: Assets.assetsDiet, isTapped: index==3),
                    const Text('Groceries')
                  ],
                )),
          ],
        )
      ],
    );
  }
}
