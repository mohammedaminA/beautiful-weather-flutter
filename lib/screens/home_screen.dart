import 'package:flutter/material.dart';
import 'package:weather/screens/foreground.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/models/location_data.dart';


class HomeScreen extends StatelessWidget {
   final snapshotData;
   HomeScreen(this.snapshotData);
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: height / 2.4,
          child: Image.network(
            'https://i.ibb.co/Y2CNM8V/new-york.jpg',
            height: height,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: height / 2.4,
            color: Color(0xFF2D2C35),
            width: width,
          ),
        ),
        ForeGround()
      ],
    );
  }
}

