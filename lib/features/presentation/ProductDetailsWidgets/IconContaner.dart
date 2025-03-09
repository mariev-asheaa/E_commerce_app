import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContaner extends StatelessWidget {
  const IconContaner({super.key, required this.icon, @required this.color=Colors.black,
    @required this.bgcolor=Colors.white});
final IconData icon;
final Color color;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 50,
       width: 50,
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
         color: bgcolor
       ),
        child: Icon(icon,color:color ,size: 30,),

      ),
    );
  }
}
