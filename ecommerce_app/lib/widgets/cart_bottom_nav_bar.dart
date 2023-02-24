import 'dart:ui';

import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Text(
            'Total',
            style: TextStyle(
              fontSize: 22,
               color: Color(0xFF689438),
               fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              '\$255',
              style: TextStyle(
                fontSize: 25,
                 color: Color(0xFF689438),
                fontWeight: FontWeight.bold
              ),
            )
            ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                 color: Color(0xFF689438),
                 borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Check Out',style: TextStyle(
                fontSize: 18,
                 color: Colors.white,
                 fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),
    );
  }
}
