import 'package:flutter/material.dart';

import '../screens/cart_screen.dart';

class Cart_Icon extends StatelessWidget {
  final bool msg;

  Cart_Icon({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
        onTap: () {

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Cart_Screen();
          },));
        },
        child: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
      Positioned(
          left: 20,
          child: msg == true
              ? const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                )
              : SizedBox())
    ]);
  }
}
