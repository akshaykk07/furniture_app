import 'package:flutter/material.dart';
import 'package:furniture_app/const/theam.dart';
import 'package:google_fonts/google_fonts.dart';

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
        padding: const EdgeInsets.only(right: 10),
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
                    // "https://cdn.decornation.in/wp-content/uploads/2020/07/modern-velvet-dining-chairs.jpg"
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
        right: 25,
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
    ]);
  }
}
