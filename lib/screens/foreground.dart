import 'package:flutter/material.dart';

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
              backgroundImage: NetworkImage('https://i.ibb.co/Z1fYsws/profile-image.jpg'),
              backgroundColor: Colors.black54,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
