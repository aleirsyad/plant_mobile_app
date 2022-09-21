import 'package:flutter/material.dart';
import 'package:plant_mobile_app/pages/splash_screen.dart';
import 'package:plant_mobile_app/reusable_widget/button.dart';
import 'package:plant_mobile_app/reusable_widget/popular_plant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Appbar
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Icon(
                    Icons.shopping_cart_rounded,
                    size: 25,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Discover Your Plant
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Discover Your Plant",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 15),
            // Search Bar
            Center(
              child: Container(
                height: 49,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Find your plant",
                                style: TextStyle(color: Colors.black26),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.qr_code_scanner_rounded)
                    ],
                  ),
                ),
              ),
            ),
            // Plant Category
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Text("Plant Category",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PlantCategory(
                  image: 'assets/icons/category1.png',
                  title: 'Outdoor',
                ),
                PlantCategory(
                  image: 'assets/icons/category2.png',
                  title: 'Indoor',
                ),
                PlantCategory(
                  image: 'assets/icons/category3.png',
                  title: 'Office',
                ),
                PlantCategory(
                  image: 'assets/icons/category4.png',
                  title: 'Other',
                ),
              ],
            ),
            // Popular Plant
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Text("Popular Plant",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
            ),

            Container(
              height: 360,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 24,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PopularPlant(
                      stock: 1,
                      category: "Outdoor Plant",
                      image: 'assets/image/popular_plant1.png',
                      title: "Round Cactus",
                      price: "\$21.9",
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    PopularPlant(
                      stock: 0,
                      category: "Indoor Plant",
                      image: 'assets/image/popular_plant2.png',
                      title: " Montsera Plant",
                      price: "\$19.9",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
