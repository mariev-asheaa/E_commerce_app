import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/features/models/productDetailsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'IconContaner.dart';

class ViewProductImage extends StatefulWidget {
  ViewProductImage({super.key, required this.selectedImageIndex, required this.productDetailsModel,
  });

 final ProductDetailsModel productDetailsModel;
  final int selectedImageIndex;

  @override
  State<ViewProductImage> createState() => _ViewProductImageState();
}

class _ViewProductImageState extends State<ViewProductImage> {
  bool istap = false;

  @override
  Widget build(BuildContext context) {
    final product = widget.productDetailsModel;
    final images = product.images ?? [];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
      Container(
        width: 300,
        height: 410,
      decoration: BoxDecoration(
      color: kprimary,
        borderRadius: BorderRadius.circular(30),
        ),
      child: CachedNetworkImage(
        imageUrl: images[widget.selectedImageIndex],
        fit: BoxFit.cover,
        width: double.infinity,
        errorWidget: (context, url, error) => const Icon(Icons.error, size: 30),
      ),
    ),
      Positioned(
        right: 0,
        child: GestureDetector(
          onTap: () {
            setState(() {
              istap = !istap;
            });
          },
          child: istap
              ? const IconContaner(icon: Icons.favorite, color: Colors.red)
              : const IconContaner(icon: Icons.favorite_border),
        ),
      ),
      ],
    ),
    );
  }
}