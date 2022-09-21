// import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailPage extends StatelessWidget {
  final _controller = PageController();

  DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize() {
      return MediaQuery.of(context).size;
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 30, right: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff004F40),
                        )),
                  ),
                  Text(
                    "Round Cactus",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 35,
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                    height: 231,
                    width: screenSize().width,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _controller,
                      children: [
                        Image.asset(
                          'assets/image/detail_cactus1.png',
                          fit: BoxFit.fitWidth,
                        ),
                        Image.asset(
                          'assets/image/detail_cactus2.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                        Image.asset(
                          'assets/image/detail_cactus3.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    )),
                Positioned(
                  top: 210,
                  left: 24,
                  child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      // axisDirection: Axis.horizontal,
                      effect: WormEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          dotColor: Color(0xff757575),
                          activeDotColor: Color(
                            0xff00AA77,
                          ))),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat, risus pulvinar aliquet faucibus, nisi quam luctus lectus, in gravida ex orci ac sem. Read More...",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 220,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Type",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                ),
                              ),
                              Text(
                                "Outdoor",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                ),
                              ),
                              Text("Medium",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Level",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                ),
                              ),
                              Text("Easy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Similar Type",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            )),
                        Text("See All",
                            style: TextStyle(
                              color: Color(0xff2D5523),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 117,
                                width: 152,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          'assets/image/similar_type1.png'),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Chin Cactus",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 117,
                                width: 152,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          'assets/image/similar_type2.png'),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Easter Cactus",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      height: 70,
                      width: 327,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff2D5523),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 15.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
