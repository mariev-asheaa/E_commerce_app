import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/get products/get_product_cubit.dart';
import '../../models/ProductItemModel.dart';
import '../views/ProductDetailsView.dart';
import 'ProductItem.dart';

class Productsgridview extends StatefulWidget {
  const Productsgridview({super.key});

  @override
  State<Productsgridview> createState() => _ProductsgridviewState();
}

class _ProductsgridviewState extends State<Productsgridview> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      builder: (context, state) {
        if (state is GetProductLoading) {
          return const Center(child: CircularProgressIndicator(),);
        }
        else if (state is GetProductSuccess) {
          return SizedBox(
            height: MediaQuery
                .sizeOf(context)
                .height * 0.6,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.productModel.products!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
              ), itemBuilder: (context, index) {
              final product = state.productModel.products![index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Productdetailsview(productId: product.id!,);
                  }));

                },
                child: Productitem(
                    productItemModel: ProductItemModel(
                      image: product.images?[0] ?? '',
                      title: product.title ?? '',
                      price: product.price ?? 0,
                      id: product.id ?? 0,
                    )
                ),
              );
            },
            ),
          );
        }
        else {
          return const Text('There was an error loading data');
        }
      },
    );
  }
}
