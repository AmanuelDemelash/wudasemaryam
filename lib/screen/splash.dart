
import 'package:flutter/material.dart';
import 'package:wudasemaryam/screen/homepage/homepage.dart';

class SPlash extends StatelessWidget {
  const SPlash({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,

              ),
            ),
          )

        ],
      ),
    );
  }
}
