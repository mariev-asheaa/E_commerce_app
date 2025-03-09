import 'package:e_commerce_screen/features/cubits/get%20products/get_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../ProductDetailsWidgets/ProductDetailsBody.dart';

class Productdetailsview extends StatefulWidget {
  const Productdetailsview({super.key, required this.productId,});

   final num productId;

  @override
  State<Productdetailsview> createState() => _ProductdetailsviewState();
}

class _ProductdetailsviewState extends State<Productdetailsview> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => GetProductCubit()),
          ],
          child: Productdetailsbody(id: widget.productId, ),
        ),
      ),
    );
  }
}
