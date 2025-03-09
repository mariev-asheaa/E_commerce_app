import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/features/presentation/ProfileWidgets/ProfileItem.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/SubTitle.dart';
import '../../../generated/assets.dart';
import '../../Bloc/auth_bloc.dart';
import '../views/LogIn.dart';

class Profilebody extends StatefulWidget {
  const Profilebody({super.key});

  @override
  State<Profilebody> createState() => _ProfilebodyState();
}

class _ProfilebodyState extends State<Profilebody> {
bool isloading=true;
   DocumentSnapshot? userInfo;
  getInfo()async{
    DocumentSnapshot docSnapshot =
    await FirebaseFirestore.instance.collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid).get();

    setState(() {
      userInfo=docSnapshot;
      isloading=false;
    });
  }
 @override
  void initState() {
    getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isloading) {
      return const Center(child: CircularProgressIndicator());
    }
    return Column(
      children: [
        const AspectRatio(aspectRatio: 60/43,
        child: CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('assets/user.png',),
        )
        ),
        const SizedBox(height: 25),
         SubTitle(text:'${userInfo?['full_name']}'),
        const SizedBox(height: 25),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 550,
            decoration: BoxDecoration(
              color: kprimary,
              borderRadius: BorderRadius.circular(20),
            ),
                  child:  Column(
                    children: [
                     ProfileItem(title: '${userInfo?['email']}', icon: const Icon(Icons.email)),
                       ProfileItem(title: '${userInfo?['phone']??'Add phone number'}', icon: const Icon(Icons.phone)),
                      InkWell(
                        onTap: (){
                          BlocProvider.of<AuthBloc>(context).add(SignOutEvent());
                          Navigator.pushNamedAndRemoveUntil(context, Login.id, (route)=>false);
                        },
                          child: const ProfileItem(title: 'Logout', icon: Icon(Icons.logout))
                      ),
                      
                      const ProfileItem(title: 'Dark mode', icon: Icon(Icons.dark_mode)),
                    ],
                  ),

            ),
        ),
      ],
    );
  }
}
