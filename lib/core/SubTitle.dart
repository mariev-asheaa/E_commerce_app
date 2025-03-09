import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/core/styles.dart';
import 'package:flutter/cupertino.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({super.key, required this.text,});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(text,
      style: Styles.textStyle30bold.copyWith(
        color: ksecondary
      )
    );
  }
}
