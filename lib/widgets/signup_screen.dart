import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/provider.dart';
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          bottom: height / double.infinity,
          child: Image.asset(
            'images/background.jpg',
            height: height,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DefaultTextStyle(
              style: GoogleFonts.raleway(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Text(
                    'Plan your day according to the Weather!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'For every city in the world, for free',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SignInButton(
                    buttonType: ButtonType.mail,
                    onPressed: () {

                    },
                    buttonSize: ButtonSize.large,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SignInButton(
                    buttonType: ButtonType.google,
                    onPressed: ()  {
                      final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.login();
                    },
                    buttonSize: ButtonSize.large,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}