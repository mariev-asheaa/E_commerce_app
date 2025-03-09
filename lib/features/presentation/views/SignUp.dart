import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/features/presentation/views/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_dialogs/dialogs.dart';

import '../../Bloc/auth_bloc.dart';
import '../SignUpWidgets/SignUpBody.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key,});

  static String id='SignUp';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            Navigator.pushReplacementNamed(context, Homeview.id);
          }
          else if(state is RegisterFailur){
            Dialogs.materialDialog(
              color: Colors.white,
              msg: state.errormessage,
              msgStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              titleStyle: const TextStyle(
                  color: ksecondary,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
              title: 'Error',
              dialogWidth:1,
              context: context,
            );
          }
          },
        builder: (context, state) {
          return const Scaffold(
              body: SafeArea(child: SignUpBody())
          );
        },
      ),
    );
  }
}

