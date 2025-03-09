import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_screen/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/styles.dart';
import '../../models/ProductItemModel.dart';
class Productitem extends StatelessWidget {
  const Productitem({super.key, required this.productItemModel});

  final ProductItemModel productItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kprimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: productItemModel.image,
                fit: BoxFit.cover,
                width: double.infinity,
                errorWidget: (context, url, error) => const Icon(Icons.error, size: 30),
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              flex: 1,
              child: Text(
                productItemModel.title,
                style: Styles.textStyle16,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 8),
            // Price
            Text(
              '${productItemModel.price}',
              style: Styles.textStyle20.copyWith(
                color: ksecondary,
                fontWeight: FontWeight.bold
              )
            ),
          ],
        ),
      ),
    );
  }
}
