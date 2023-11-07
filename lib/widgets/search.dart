import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/Cart_icon.dart';
import 'package:furniture_app/widgets/Custom_appbar.dart';

import '../const/theam.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 48,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(offset:Offset(2,2),
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ],
            color: white,
          ),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: white)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(right: 10),
           child: SizedBox(
            height: 55,
            width: 60,
            child: Center(
              child: Cart_Icon(msg: true)
            ),
        ),
         ),
      ],
    );
  }
}
