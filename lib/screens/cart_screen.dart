import 'package:flutter/material.dart';
import 'package:furniture_app/const/theam.dart';
import 'package:furniture_app/widgets/Custom_appbar.dart';
import 'package:furniture_app/widgets/cart_tale.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart_Screen extends StatelessWidget {
  const Cart_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Column(children: [
        Expanded(
            flex: 5,
            child: SizedBox(
              child: Column(children: [
                CustomApp_bar(title: "Cart"),
                Expanded(
                    child: ListView(children: [
                  Cart_Tale(
                    click: true,
                    img:
                        "https://ii1.pepperfry.com/media/catalog/product/c/l/494x544/clint-sheesham-wood-armchair-in-provincial-teak-finish-by-woodsworth-clint-sheesham-wood-armchair-in-hemtnz.jpg",
                    name: "Minimal Chair",
                    price: "\$235.00",
                  ),
                  Cart_Tale(
                    click: false,
                    img:
                        "https://www.at-home.co.in/cdn/shop/products/FIACCARLESONSFACBW.jpg?v=1653041232",
                    name: "White Wood Chair",
                    price: "\$235.00",
                  ),
                  Cart_Tale(
                    click: false,
                    img:
                        "https://assets.weimgs.com/weimgs/rk/images/wcm/products/202343/0032/angled-frame-dining-arm-chair-o.jpg",
                    name: "Wintage Chair",
                    price: "\$235.00",
                  ),
                ]))
              ]),
            )),
        Expanded(
            flex: 3,
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(10, 10),
                          blurRadius: 20.1)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Selected Items",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "\$235.00",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: pink,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping Fee",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
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
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey[350],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$265.00",
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
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: Align(alignment:Alignment.bottomCenter ,
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black),
                    child: Center(child: Text("Checkout",style: GoogleFonts.poppins(color: white,fontSize: 16),)),
                  ),
                ),
              )
            ]))
      ]),
    );
  }
}
