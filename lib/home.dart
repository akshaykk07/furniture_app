import 'package:flutter/material.dart';
import 'package:furniture_app/const/theam.dart';
import 'package:furniture_app/widgets/best_selling.dart';
import 'package:furniture_app/widgets/main_text.dart';
import 'package:furniture_app/widgets/product_list.dart';
import 'package:furniture_app/widgets/search.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        backgroundColor: maincolor,
        leading: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/menu.png",
              height: 40,
              width: 30,
            ),
          ],
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black,
            ),
            child: const Icon(
              Icons.person,
              color: white,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 0, top: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Search(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(children: const [
              Maintext(text: "Explore"),
              SizedBox(
            height: 20,
              ),
              Product_list(),
              SizedBox(
            height: 20,
              ),
              Maintext(text: "Best Selling"),
              SizedBox(
            height: 10,
              ),
              Best_sellingcard(
              name: "Minimal Chair",
              sname: "Most one",
              price: "\$350.00",
              img:
                 // "https://ii1.pepperfry.com/media/catalog/product/c/l/494x544/clint-sheesham-wood-armchair-in-provincial-teak-finish-by-woodsworth-clint-sheesham-wood-armchair-in-hemtnz.jpg"
              "https://ii1.pepperfry.com/media/catalog/product/a/e/1100x1210/aesthetic-fabric-iconic-chair-in-pink-colour-aesthetic-fabric-iconic-chair-in-pink-colour-imu86m.jpg"
                   ),
            ]),
          ),
        ]),
      ),
    );
  }
}
