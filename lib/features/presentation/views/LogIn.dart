import 'package:e_commerce_screen/features/presentation/views/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_dialogs/dialogs.dart';

import '../../../core/constants.dart';
import '../../Bloc/auth_bloc.dart';
import '../LogInWidgets/LogInBody.dart';

class Login extends StatefulWidget {
  const Login({super.key});
static const id='login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushReplacementNamed(context,Homeview.id);
          }
          else if(state is LoginFailur){
            Dialogs.materialDialog(
              color: Colors.white,
              msg: state.errormessage,
              msgStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,

              ),
              titleStyle: const TextStyle(
                  fontSize: 35,
                  color: ksecondary,
                  fontWeight: FontWeight.bold
              ),
              title: 'Error',
              dialogWidth: 1,
              context: context,
            );
        }
          },
        builder: (context, state) {
          return const Scaffold(
              body:LogInBody()
          );
        },
      ),
    );
  }
}
