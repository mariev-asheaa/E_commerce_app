import 'package:e_commerce_screen/core/constants.dart';
import 'package:flutter/cupertino.dart';

class Dotindicator extends StatelessWidget {
  const Dotindicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: const Duration(milliseconds: 300),
      width: isActive?32:8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive?ksecondary:const Color(0xffE8E8E8),
          borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
