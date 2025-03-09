import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constants.dart';
import 'color_selector.dart';
import 'IconContaner.dart';

class coloravatar extends StatelessWidget {
  const coloravatar({super.key,});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: IconContaner(icon: Icons.color_lens,color: ksecondary,bgcolor: kprimary,),
        ),
        Text('Colors',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
       SizedBox(width: 90,),
        ColorSelector()
      ],
    );
  }
}
