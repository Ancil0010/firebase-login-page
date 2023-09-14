import 'package:firebase_auth_demo/screens/login_email_password_screen.dart';
import 'package:firebase_auth_demo/screens/phone_screen.dart';
import 'package:firebase_auth_demo/screens/signup_email_password_screen.dart';
import 'package:firebase_auth_demo/services/firebase_auth_methods.dart';
import 'package:firebase_auth_demo/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, EmailPasswordSignup.routeName);
                'Email/Password Sign Up';
              }, child: null,
              
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, EmailPasswordLogin.routeName);
                'Email/Password Login';
              }, child: null,
              
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, PhoneScreen.routeName);
                   'Phone Sign In';
                   
                }, child: null,
            ),
                
            ElevatedButton(
              onPressed: () {
                context.read<FirebaseAuthMethods>().signInWithGoogle(context);
                'Google Sign In';
              }, child: null,
              
            ),
            ElevatedButton(
              onPressed: () {
                context.read<FirebaseAuthMethods>().signInWithFacebook(context);
                'Facebook Sign In';
              }, child: null,
              
            ),
            ElevatedButton(
              onPressed: () {
                context.read<FirebaseAuthMethods>().signInAnonymously(context);
                'Anonymous Sign In';
              }, child: null,
             
            ),
          ],
        ),
      ),
    );
  }
}