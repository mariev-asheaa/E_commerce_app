import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/features/presentation/views/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Bloc/auth_bloc.dart';

class Googlesignin extends StatefulWidget {
  const Googlesignin({super.key});

  @override
  State<Googlesignin> createState() => _GooglesigninState();
}

class _GooglesigninState extends State<Googlesignin> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
       if(state is GoogleSignInSuccess){
         Navigator.pushReplacementNamed(context, Homeview.id);
       }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            BlocProvider.of<AuthBloc>(context).add(GoogleSignInEvent());
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                width: 350,
                decoration: BoxDecoration(
                    color: ksecondary,
                    borderRadius: BorderRadius.circular(20)
                ),

                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('Log in with Google',
                        style: TextStyle(
                            color: kprimary,
                            fontSize: 22
                        ),
                      ),
                    ),
                    Icon(Icons.g_mobiledata, size: 45, color: kprimary,)
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
