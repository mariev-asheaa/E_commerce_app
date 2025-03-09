import 'package:e_commerce_screen/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool istap=false;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        IconButton(
          icon: istap
              ? const Icon(Icons.check_box)
              : const Icon(Icons.check_box_outline_blank_outlined, color: ksecondary),
          onPressed: () {
            setState(() {
              istap = !istap;
            });
          },
        ),

        const Text('Remember me',style: TextStyle(
            color: ksecondary,
            fontSize: 15
        ),),
        const SizedBox(width:100 ,),

        GestureDetector(
          onTap: (){
          //  Navigator.pushNamed(context, ForgetPassword.id);
          },
          child: const Text('forget password?',style: TextStyle(
              color: ksecondary,
              fontSize: 15
          ),),
        ),
      ],
    );
  }
}
