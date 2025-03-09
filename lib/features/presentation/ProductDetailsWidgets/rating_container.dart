import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rating extends StatelessWidget {
  const rating({super.key, required this.rate});
final String rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(Icons.star),
         Text(rate)
        ],
      ),
    );
  }
}
