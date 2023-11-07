import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/theam.dart';

class Cart_Tale extends StatefulWidget {
  final String img;
  final String name;
  final String price;
  final bool click;

   Cart_Tale({super.key, required this.name, required this.price, required this.img, required this.click});

  @override
  State<Cart_Tale> createState() => _Cart_TaleState();
}

class _Cart_TaleState extends State<Cart_Tale> {
  @override
  int count = 1;

  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 120,
        width: double.infinity,
        color: maincolor,
        child: Row(children: [
          Checkbox(value: widget.click, onChanged: (value) {}),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(widget.img,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(widget.price,
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: pink))
              ],
            ),
          ),
        ]),
      ),
      Positioned(
          bottom: 30,
          right: 20,
          child: Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        count > 1 ? count-- : count = 1;
                      });
                    },
                    child: Text(
                      "-",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    count.toString(),
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Text(
                      "+",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
          ))
    ]);
  }
}
