import 'package:flutter/material.dart';

class PlantCategory extends StatelessWidget {
  final String image;
  final String title;

  const PlantCategory({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              // border: Border.all(
              //   color: Colors.black12,
              // ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
