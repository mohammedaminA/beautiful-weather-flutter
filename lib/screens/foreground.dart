import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForeGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://i.ibb.co/Z1fYsws/profile-image.jpg'),
              backgroundColor: Colors.black54,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: DefaultTextStyle(
          style: GoogleFonts.raleway(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Hello Mat!',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Check the weather for every city!',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 35,),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
