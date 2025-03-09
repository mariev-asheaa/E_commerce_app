import 'package:e_commerce_screen/features/Bloc/auth_bloc.dart';
import 'package:e_commerce_screen/features/presentation/ProfileWidgets/ProfileBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static String id = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: BlocProvider(
        create: (context) => AuthBloc(),
        child: const Profilebody(),
      )),
    );
  }
}
