import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/features/presentation/LogInWidgets/GoogleSignIn.dart';
import 'package:e_commerce_screen/features/presentation/LogInWidgets/SignUpSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/SubTitle.dart';
import '../../../core/button.dart';
import '../../../core/textfield.dart';
import '../../Bloc/auth_bloc.dart';
import 'ForgetPassword.dart';

class LogInBody extends StatefulWidget {
  const LogInBody({super.key});

  @override
  State<LogInBody> createState() => _LogInBodyState();
}

class _LogInBodyState extends State<LogInBody> {
  late String email;
  late String password;
  GlobalKey<FormState>formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(height: 80),
          const SubTitle(text: 'Log In'),
          const SizedBox(height: 120),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                color: kprimary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 40,),
                      Textfield(
                        onchanged: (data) {
                          email = data;
                        },
                        hinttext: 'Email',icon: const Icon(Icons.email_outlined),),
                      const SizedBox(height: 20,),

                      Textfield(
                        obsecure: true,
                        onchanged: (data) {
                          password = data;
                        },
                        hinttext: 'Password',icon:  const Icon(Icons.lock_outline)
                        ,suffix: const Icon(Icons.visibility_off_outlined),),

                      const SizedBox(height: 25,),
                      const ForgetPassword(),
                      const SizedBox(height: 40,),
                      button(ontap:() {
                        if (formkey.currentState!.validate()) {
                          BlocProvider.of<AuthBloc>(context).add(LoginEvent(email: email, password: password));
                        }
                        else{}
                      },
                          label: 'Log In', color: ksecondary, textcolor: kprimary,height: 48,width: 350,),
                      const SizedBox(height:20,),
                      const Googlesignin(),
                      const SizedBox(height:20 ,),
                      const Signupsection(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



