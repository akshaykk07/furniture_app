import 'package:flutter/material.dart';
import 'package:furniture_app/const/theam.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/product_screen.dart';

class Best_sellingcard extends StatelessWidget {
  final String img;
  final String name;
  final String sname;
  final String price;

  const Best_sellingcard(
      {super.key,
      required this.name,
      required this.sname,
      required this.price,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: white),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    img,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    Text(
                      sname,
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    // SizedBox(width: 90,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 15,
        right: 35,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Product_screen();
              },
            ));
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black,
            ),
            child: const Center(
              child: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: white,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
