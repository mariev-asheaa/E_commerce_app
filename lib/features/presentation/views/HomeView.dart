import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/get products/get_product_cubit.dart';
import '../HomeWidgets/HomeBody.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static String id='home';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProductCubit(),
      child: const Scaffold(
        body: SafeArea(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Homebody(),
        ),
        ),
        extendBody: false,
      ),
    );
  }
}
