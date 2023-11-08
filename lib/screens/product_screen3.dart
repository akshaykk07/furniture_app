import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/const/theam.dart';
import 'package:furniture_app/widgets/Custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_screen3 extends StatelessWidget {
  const Product_screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          Expanded(
            flex: 6,
            child: ClipRRect(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(60)),
                child: Image.network(
                  "https://www.at-home.co.in/cdn/shop/products/FIACCARLESONSFACBW.jpg?v=1653041232",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$250.00",
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: pink),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Wood Chair",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                              width: 150,
                              child: Row(children: [
                                const Icon(Icons.star, color: startheam),
                                const Icon(
                                  Icons.star,
                                  color: startheam,
                                ),
                                const Icon(Icons.star, color: startheam),
                                const Icon(Icons.star, color: startheam),
                                const Icon(Icons.star_border, color: startheam),
                                Text(
                                  "4.5",
                                  style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ]),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Color Option",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black54),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: brown, width: 3)),
                                  child: Center(
                                    child: Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          color: brown),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Description",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Buy Leroy Fabric Upholstered Wingback Arm Chair (Beige) online in India at best price. Shop From wide range of Chairs and get best discount upto @50%.",
                          style: GoogleFonts.roboto(color: Colors.black54),
                        )
                      ]),
                ),
              ))
        ]),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 65,
            width: 220,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
                color: Colors.black),
            child: Center(
              child: Text(
                "+ Add to Cart",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500, color: white),
              ),
            ),
          ),
        ),
        Positioned(
          top: 404,
          right: 30,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2.2, offset: Offset(2, 2))
                ]),
            child: const Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 25,
                )),
          ),
        ),
        const CustomApp_bar(title: "product"),
      ]),
    );
  }
}
