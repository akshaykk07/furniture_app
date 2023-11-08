import 'package:flutter/material.dart';
import 'package:furniture_app/const/theam.dart';
import 'package:furniture_app/widgets/Custom_appbar.dart';
import 'package:furniture_app/widgets/cart_tale.dart';

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
                const CustomApp_bar(title: "Cart"),
                Expanded(
                    child: ListView(children: [
                  InkWell(
                    onTap: () {
                      //showBottomSheet(context);
                    },
                    child: Cart_Tale(
                      //  click: true,
                      img:
                      "https://ii1.pepperfry.com/media/catalog/product/a/e/1100x1210/aesthetic-fabric-iconic-chair-in-pink-colour-aesthetic-fabric-iconic-chair-in-pink-colour-imu86m.jpg",
                      name: "Minimal Chair",
                      price: 350.00,
                    ),
                  ),
                  Cart_Tale(
                    // click: false,
                    img:
                        "https://www.at-home.co.in/cdn/shop/products/FIACCARLESONSFACBW.jpg?v=1653041232",
                    name: "White Wood Chair",
                    price: 235.00,
                  ),
                  Cart_Tale(
                    //click: false,
                    img:
                        "https://assets.weimgs.com/weimgs/rk/images/wcm/products/202343/0032/angled-frame-dining-arm-chair-o.jpg",
                    name: "Wintage Chair",
                    price: 235.00,
                  ),
                ]))
              ]),
            )),
      ]),
    );
  }
}

