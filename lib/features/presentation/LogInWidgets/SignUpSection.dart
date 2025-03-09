import 'package:e_commerce_screen/features/presentation/views/SignUp.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/constants.dart';

class Signupsection extends StatelessWidget {
  const Signupsection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(r'Don''t have an account?',style: TextStyle(
            color: ksecondary,
            fontSize: 20
        ),),
        const SizedBox(width: 18,),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, SignUp.id);
          },
          child: const Text('Sign up',style: TextStyle(
              color: ksecondary,
              fontSize: 20
          ),),
        ),
      ],
    );
  }
}
