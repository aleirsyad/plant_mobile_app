import 'package:flutter/material.dart';
import 'package:plant_mobile_app/pages/detail_page.dart';

class PopularPlant extends StatelessWidget {
  final int stock;
  final String category;
  final String image;
  final String title;
  final String price;

  const PopularPlant(
      {Key? key,
      required this.stock,
      required this.category,
      required this.image,
      required this.title,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  DetailPage()),
        );
      },
      child: Container(
        height: 373,
        width: 260,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // container atas
              Container(
                height: 31,
                width: 135,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    // warna
                    Container(
                      height: 7,
                      width: 7,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: stock > 0 ? Colors.green : Colors.red,
                          shape: BoxShape.circle),
                    ),
                    Text(
                      category,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 75,
                width: 235,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          )
                        ],
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
