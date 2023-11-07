import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/Cart_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomApp_bar extends StatelessWidget {
  final String title;

  const CustomApp_bar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: SizedBox(
        height: 30,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              CupertinoIcons.arrow_left,
              color: Colors.black,
            ),
          ),
          Text(
            title,
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Cart_Icon(
            msg: true,
          )
        ]),
      ),
    );
  }
}
