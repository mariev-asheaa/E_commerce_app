import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/features/presentation/views/LogIn.dart';
import 'package:flutter/cupertino.dart';

class LogInSection extends StatelessWidget {
  const LogInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account?',style: TextStyle(
            color: ksecondary,
            fontSize: 20
        ),),
        const SizedBox(width: 18,),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, Login.id);
          },
          child: const Text('Log in',style: TextStyle(
              color: ksecondary,
              fontSize: 20
          ),),
        ),
      ],
    );
  }
}