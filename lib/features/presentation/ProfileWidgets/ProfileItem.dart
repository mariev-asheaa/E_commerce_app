import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';


class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          color: kprimary
      ),
      child: ListTile(leading: icon,title: Text(title),),
    );
  }
}