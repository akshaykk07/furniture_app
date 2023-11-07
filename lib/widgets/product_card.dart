import 'package:flutter/material.dart';
import 'package:furniture_app/const/theam.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_card extends StatelessWidget {
  final String img;
  final String name;
  final String sname;
  final String price;

  const Product_card(
      {super.key,
      required this.img,
      required this.name,
      required this.sname,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 10),
      child: Container(
          height: 330,
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                offset: Offset(1, 5),
                color: Colors.grey,
                blurRadius: 5.5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(children: [
                  Image.network(
                    img,
                    //"https://www.at-home.co.in/cdn/shop/products/LEROYARmchairLS_1024x1024.jpg?v=1660115634",
                    fit: BoxFit.cover,
                    height: 200,
                    width: 210,
                  ),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(color: Colors.red,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child:  Icon(
                                  Icons.favorite,
                                  color: Colors.white,size: 20,
                                )),
                      ))
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black),
                    child: const Center(
                        child: Text(
                      "+",
                      style: TextStyle(fontSize: 20, color: white),
                    )),
                  )
                ],
              )
            ]),
          )),
    );
  }
}
