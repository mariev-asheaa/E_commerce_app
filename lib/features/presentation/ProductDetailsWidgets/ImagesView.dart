import 'package:e_commerce_screen/features/models/productDetailsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IconContaner.dart';
import 'ImageContainer.dart';

class ImagesView extends StatefulWidget {
  const ImagesView({
    super.key,
    required this.selectedImageIndex,
    required this.onImageSelected, required this.productDetailsModel,
  });


  final int selectedImageIndex;
  final Function(int) onImageSelected;
 final ProductDetailsModel productDetailsModel;
  @override
  State<ImagesView> createState() => _ImagesViewState();
}

class _ImagesViewState extends State<ImagesView> {
  @override
  Widget build(BuildContext context) {
    final product = widget.productDetailsModel;
    final images = product.images ?? [];

    if (images.isEmpty) {
      return const Center(child: Text("No images available"));
    }

    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: IconContaner(icon: Icons.arrow_back),
          ),
        ),

        for (int i = 0; i < images.length; i++)
          InkWell(
            onTap: () {
              widget.onImageSelected(i);
            },
            child: ImageContainer(
              image: images[i],
              isTapped: widget.selectedImageIndex == i,
            ),
          ),
      ],
    );
  }
}

