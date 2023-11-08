import 'package:flutter/material.dart';
import 'package:furniture_app/screens/product_screen2.dart';
import 'package:furniture_app/screens/product_screen3.dart';
import 'package:furniture_app/widgets/product_card.dart';

class Product_list extends StatelessWidget {
  const Product_list({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: double.infinity,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Product_screen2();
              },
            ));
          },
          child: const Product_card(
              img:
                  "https://www.at-home.co.in/cdn/shop/products/LEROYARmchairLS_1024x1024.jpg?v=1660115634",
              name: "Wood Chair",
              sname: "Minimal Chair",
              price: "\$250.00"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Product_screen3();
              },
            ));
          },
          child: const Product_card(
              img:
                  "https://www.at-home.co.in/cdn/shop/products/FIACCARLESONSFACBW.jpg?v=1653041232",
              name: "Wood Chair",
              sname: "Minimal Chair",
              price: "\$250.00"),
        ),
        const Product_card(
            img:
                "https://www.at-home.co.in/cdn/shop/products/FIACCAPRICASFACGRY.jpg?v=1653041154",
            name: "Wood Chair",
            sname: "Minimal Chair",
            price: "\$250.00"),
        const Product_card(
            img:
                "https://assets.weimgs.com/weimgs/rk/images/wcm/products/202343/0032/angled-frame-dining-arm-chair-o.jpg",
            name: "Wood Chair",
            sname: "Minimal Chair",
            price: "\$250.00"),
      ]),
    );
  }
}
