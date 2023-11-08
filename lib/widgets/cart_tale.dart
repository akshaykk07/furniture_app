import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/theam.dart';

class Cart_Tale extends StatefulWidget {
  final String img;
  final String name;
  double price;
  bool click = false;

  Cart_Tale(
      {super.key, required this.name, required this.price, required this.img});

  @override
  State<Cart_Tale> createState() => _Cart_TaleState();
}

class _Cart_TaleState extends State<Cart_Tale> {
  @override
  int count = 1;
  double total = 350;

  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
        onTap: () {
          setState(() {
            widget.click = !widget.click;

            widget.click == true
                ? showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 300,
                        decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30))),
                        child: Stack(children: [
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(10, 10),
                                      blurRadius: 20.1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 45),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Selected Items",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      widget.price.toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: pink,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Shipping Fee",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "\$30.00",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: pink,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Colors.grey[350],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Subtotal",
                                      style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      total.toString(),
                                      style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          color: pink,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.black),
                                child: Center(
                                    child: Text(
                                  "Checkout",
                                  style: GoogleFonts.poppins(
                                      color: white, fontSize: 16),
                                )),
                              ),
                            ),
                          )
                        ]),
                      );
                    },
                  )
                : SizedBox();
          });
        },
        child: Container(
          height: 120,
          width: double.infinity,
          color: maincolor,
          child: Row(children: [
            Checkbox(value: widget.click, onChanged: (value) {}),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                widget.img,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Text(widget.price.toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: pink))
                ],
              ),
            ),
          ]),
        ),
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
                        total = widget.price * count;
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
                        total = widget.price * count;
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
