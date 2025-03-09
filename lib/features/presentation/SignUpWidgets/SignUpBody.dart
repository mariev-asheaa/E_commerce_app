import 'package:e_commerce_screen/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/SubTitle.dart';
import '../../../core/button.dart';
import '../../../core/textfield.dart';
import '../../Bloc/auth_bloc.dart';
import 'LogInSection.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  late String email;
  late String password;
  late String name;
  late String phone;
  GlobalKey<FormState>formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(height: 80),
          const SubTitle(text: 'Sign Up',),
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
                      Textfield(hinttext: 'User name',icon: const Icon(Icons.person_outlined),
                        onchanged: (data){
                        name=data;
                        },
                      ),
                      const SizedBox(height: 20,),

                      Textfield(hinttext: 'Email',icon: const Icon(Icons.email_outlined),
                        onchanged: (data) {
                          email = data;
                        },
                      ),
                      const SizedBox(height: 20,),

                      Textfield(hinttext: 'Phone Number',icon: const Icon(Icons.phone_outlined),
                        onchanged: (data){
                        phone=data;
                        },
                      ),
                      const SizedBox(height: 20,),
                      Textfield(
                        onchanged: (data) {
                          password = data;
                        },
                        hinttext: 'Password',icon:  const Icon(Icons.lock_outline)
                        ,suffix: const Icon(Icons.visibility_off_outlined),obsecure: true,
                      ),
                      const SizedBox(height: 45,),

                      button(ontap:()async{
                        if (formkey.currentState!.validate()) {
                          BlocProvider.of<AuthBloc>(context)
                              .add(RegisterEvent(email: email, password: password, name: name, phone: phone));

                        }},
                          label: 'Get Started', color: ksecondary, textcolor: kprimary,height: 48,width: 350,),

                      const SizedBox(height: 25,),
                      const LogInSection(),
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