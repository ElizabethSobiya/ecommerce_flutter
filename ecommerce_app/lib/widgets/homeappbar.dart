import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/menu-bar.png',
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'KK Shop',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF689438)),
            ),
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: const EdgeInsets.all(5),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cartpage');
              },
              child: Image.asset(
                'assets/icons/shopping-mall.png',
                height: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
