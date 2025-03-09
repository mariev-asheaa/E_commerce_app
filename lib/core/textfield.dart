import 'package:e_commerce_screen/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {

  Textfield({super.key, this.onchanged,this.hinttext, this.icon,this.suffix,this.obsecure=false});
  Function(String)?onchanged;
  String? hinttext;
  Icon ?icon;
  bool ?obsecure;
  Icon?suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure!,

      validator:(data){
        if(data!.isEmpty){
          return 'This field is required';
        }
      } ,

      onChanged: onchanged,
      decoration: InputDecoration(
          fillColor: kprimary,
          filled: true,
          suffixIcon: suffix,
          suffixIconColor: ksecondary,
          hintText: hinttext,
          prefixIcon: icon,
          prefixIconColor: ksecondary,
          hintStyle: const TextStyle(color:ksecondary,fontSize: 16),
          enabledBorder:  OutlineInputBorder(
              borderRadius:BorderRadius.circular(10),
              borderSide: const BorderSide(
                color:ksecondary,
              )
          ),
          focusedBorder:  OutlineInputBorder(
              borderRadius:BorderRadius.circular(10),
              borderSide: const BorderSide(
                color:ksecondary,
              )
          )
      ),
    );
  }
}

