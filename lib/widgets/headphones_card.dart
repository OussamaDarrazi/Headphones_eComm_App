import 'package:flutter/material.dart';

import '../colors.dart';

class HeadphonesCard extends StatelessWidget {
  final double price;
  final String headphonesName;
  final String imgUrl;
  const HeadphonesCard({
    super.key, required this.price, required this.headphonesName, required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 15, right: 15),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(.25),
              spreadRadius: 5,
              blurRadius: 15,
            )],
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          height: 500,
          width: 250,
          child: const Icon(Icons.favorite_rounded, size: 30, color: Colors.redAccent,),
        )
      ,
      Container(
        padding: const EdgeInsets.only(bottom: 30, left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: PrimaryBeige,
          ),
        width: 250,
        height: 167,
        margin: const EdgeInsets.only(top: 333),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
          Text(headphonesName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
          Text("\$$price", style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w300))
        ]),
      ),
      Container(
        margin: const EdgeInsets.only(top: 40, left: 20),
        height: 430,
        width: 320,
        decoration:  BoxDecoration(
          // color: Colors.amber.withOpacity(0.2),
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(imgUrl))
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 500,right: 130),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(50),
          color: Colors.white
        ),
        child: const Icon(Icons.add, size: 25, color: Colors.black,),)
      ],
    );
  }
}
