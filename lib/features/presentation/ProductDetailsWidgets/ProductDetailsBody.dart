import 'package:e_commerce_screen/features/cubits/get%20products/get_product_cubit.dart';
import 'package:e_commerce_screen/features/models/ProductModel.dart';
import 'package:e_commerce_screen/features/presentation/ProductDetailsWidgets/ViewProductImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ProductInfo.dart';
import 'ProductSpecification.dart';
import 'ImagesView.dart';

class Productdetailsbody extends StatefulWidget {
  const Productdetailsbody(
      {super.key, required this.id,});

  final num id;


  @override
  State<Productdetailsbody> createState() => _ProductdetailsbodyState();
}

class _ProductdetailsbodyState extends State<Productdetailsbody> {
  int selectedImageIndex = 0;

  void updateSelectedImageIndex(int index) {
    setState(() {
      selectedImageIndex = index;
    });
  }

  @override
  void initState() {
    BlocProvider.of<GetProductCubit>(context).getProductsDetails(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetProductCubit, GetProductState>(
        builder: (context, state) {
          if (state is GetProductLoading) {
            return const Center(child: CircularProgressIndicator(),);
          }
          else if(state is GetDetailsSuccess){
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ImagesView(
                          selectedImageIndex: selectedImageIndex,
                          onImageSelected: updateSelectedImageIndex,
                          productDetailsModel: state.productDetailsModel,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ViewProductImage(
                          selectedImageIndex: selectedImageIndex,
                          productDetailsModel: state.productDetailsModel,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Productinfo(productDetailsModel: state.productDetailsModel),
                ),
                SliverToBoxAdapter(
                  child: Productspecification(productDetailsModel: state.productDetailsModel),
                ),
              ],
            );
          }
         else{
            return const Text('There was an error loading data');
          }
        },
      ),
    );
  }
}
