import 'package:e_commerce_screen/features/presentation/views/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'features/presentation/views/HomeView.dart';
import 'features/presentation/views/LogIn.dart';
import 'features/presentation/views/Profile.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp( const e_commerce());
}

class e_commerce extends StatefulWidget {
  const e_commerce({super.key});

  @override
  State<e_commerce> createState() => _e_commerceState();
}

class _e_commerceState extends State<e_commerce> {
  @override
  void initState() {   //provide user state
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const Login(),
      // home: FirebaseAuth.instance.currentUser==null? const Login():const Homeview(),
      routes: {
        Homeview.id:(context)=>const Homeview(),
        SignUp.id:(context)=>const SignUp(),
        Login.id:(context)=>const Login(),
        Profile.id:(context)=>const Profile(),
      },
    );
  }
}
