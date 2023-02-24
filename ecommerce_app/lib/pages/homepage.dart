import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/widgets/categories_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/homeappbar.dart';
import '../widgets/itemswidget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top:15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(
            children: [
              // search widgets
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search here...'
                    ),
                  ),
                ),
                Spacer(),
                 Image.asset('assets/icons/compact-camera.png'
                ,height:30,
                width:27,),
              ],),
            ),
           //categories
            Container(
           alignment: Alignment.centerLeft,
          margin: const EdgeInsets.symmetric(vertical: 20, 
          horizontal: 10),
          child:const Text('Categories', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
              color: Color(0xFF689438),
          ),)
            ),
            // categorywidgets
            CategoriesWidget(),
            // Items
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: const Text('Best Selling',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                 color: Color(0xFF689438),
              ),
              ),
            ),
            ItemsWidget(),
          ]),
        )
      ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 70,
        onTap: (index) {},
        color: Color(0xFF689438),
        items: [
         Icon(Icons.home,
         size: 30,
         color: Colors.white,),
           Image.asset('assets/icons/empty-cart.png',
          height: 20,
          width: 20,
          color: Colors.white,),
           Image.asset('assets/icons/list-menu.png',
          height: 20,
          width: 20,
          color: Colors.white,)
        ] ,
      ),
    );
  }
}