import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/product_card.dart';

class Product_list extends StatelessWidget {
  const Product_list({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height:340 ,width: double.infinity,
      child: Expanded(
        child: ListView(scrollDirection: Axis.horizontal, children: const [
          Product_card(
              img:
              "https://www.at-home.co.in/cdn/shop/products/LEROYARmchairLS_1024x1024.jpg?v=1660115634",
              name: "Wood Chair",
              sname: "Minimal Chair",
              price: "\$250.00"),
          Product_card(
              img:
              "https://www.at-home.co.in/cdn/shop/products/FIACCARLESONSFACBW.jpg?v=1653041232",
              name: "Wood Chair",
              sname: "Minimal Chair",
              price: "\$250.00"),
          Product_card(
              img:
              "https://www.at-home.co.in/cdn/shop/products/FIACCAPRICASFACGRY.jpg?v=1653041154",
              name: "Wood Chair",
              sname: "Minimal Chair",
              price: "\$250.00"),
          Product_card(
              img:
              "https://assets.weimgs.com/weimgs/rk/images/wcm/products/202343/0032/angled-frame-dining-arm-chair-o.jpg",
              name: "Wood Chair",
              sname: "Minimal Chair",
              price: "\$250.00"),
        ]),
      ),
    );
  }
}
