// ignore_for_file: unused_field

import 'package:flutter_project_web_supportandservice/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../states/components/user/picture_components.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  final ScrollController _scrollController = ScrollController();

  final List<String> assets = [
    'images/picturecontent/wat1.jpg',
    'images/picturecontent/food2.jpg',
    'images/picturecontent/signboard2.jpg',
    'images/picturecontent/sea​​of​​fog.jpeg',
  ];

  final List<String> title = [
    'ท่องเที่ยว',
    'อาหาร',
    'ป้ายสถานที่',
    'สถานการณ์',
  ];

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.02,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenSize.width / 4.5,
                              width: screenSize.width / 3.5,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      assets[pageIndex],
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ],
                                ),
                                child: InkResponse(
                                  splashColor: Colors.transparent,
                                  radius: 10,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PictureComponents(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height * 0.01,
                              ),
                              child: Text(
                                title[pageIndex],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.kanit(
                                  fontSize: 10,
                                  // fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width * 0.02),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      tablet: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.02,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenSize.width / 4.5,
                              width: screenSize.width / 3.5,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      assets[pageIndex],
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ],
                                ),
                                child: InkResponse(
                                  splashColor: Colors.transparent,
                                  radius: 10,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PictureComponents(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height * 0.01,
                              ),
                              child: Text(
                                title[pageIndex],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.kanit(
                                  fontSize: 16,
            
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width * 0.02),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      desktop: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.02,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenSize.width / 7,
                              width: screenSize.width / 4.5,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      assets[pageIndex],
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ],
                                ),
                                child: InkResponse(
                                  splashColor: Colors.transparent,
                                  radius: 10,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PictureComponents(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height * 0.01,
                              ),
                              child: Text(
                                title[pageIndex],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.kanit(
                                  fontSize: 20,
                                  // fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenSize.width * 0.02),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
