import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/provider.dart';
import 'home_screen.dart';
import 'package:provider/provider.dart';
import 'package:weather/widgets/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if(provider.isSigningIn) {
              return buildLoading();
            } else if(snapshot.hasData) {
              print(snapshot.data);
              return HomeScreen(snapshot.data);
            }else {
              return SignUp();
            }
          },
        ),
      ),
    );
  }
  Widget buildLoading() => Stack(
    fit: StackFit.expand,
    children: [
      Center(child: CircularProgressIndicator()),
    ],
  );
}


