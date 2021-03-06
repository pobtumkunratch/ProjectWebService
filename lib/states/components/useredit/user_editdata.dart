import 'package:flutter/material.dart';
import 'package:flutter_project_web_supportandservice/responsive.dart';
import 'package:flutter_project_web_supportandservice/states/components/useredit/card_dataedit.dart';
import 'package:flutter_project_web_supportandservice/states/components/useredit/title_headeredit.dart';
import 'package:flutter_project_web_supportandservice/widget/bottom_bar.dart';
import 'package:flutter_project_web_supportandservice/widget/draweruseredit.dart';
import 'package:flutter_project_web_supportandservice/widget/headeruseredit.dart';
import 'package:flutter_project_web_supportandservice/widget/max_width_contanier.dart';
import 'package:google_fonts/google_fonts.dart';

class UserEditData extends StatelessWidget {
  UserEditData({Key? key}) : super(key: key);
  static const String routeName = '/usereditdata';
  double _scrollPosition = 0;
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    _opacity = _scrollPosition < size.height * 0.40
        ? _scrollPosition / (size.height * 0.40)
        : 1;
    return Scaffold(
      appBar: size.width < 1200
          ? AppBar(
              iconTheme: IconThemeData(color: Colors.black, size: 20),
              elevation: 0,
              backgroundColor: Colors.greenAccent.shade700,
              title: Row(
                children: [
                  Image(
                    image: AssetImage('images/pictureicon/logo.png'),
                    width: 25,
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    'NAVANURAK',
                    style: GoogleFonts.kanit(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : PreferredSize(
              preferredSize: Size(size.width, 70),
              child: HeaderBarEdit(_opacity),
            ),
      // drawer: createDrawer(context),
      extendBodyBehindAppBar: true,
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: createDraweredit(context),
      ),
      body: MaxWidthCintainer(
        child: Responsive(
          mobile: isMobileContent(),
          tablet: isTabletContent(),
          desktop: isDesktopContent(),
        ),
      ),
    );
  }
}

class isMobileContent extends StatelessWidget {
  isMobileContent({Key? key}) : super(key: key);
  double _scrollPosition = 0;
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _opacity = _scrollPosition < size.height * 0.40
        ? _scrollPosition / (size.height * 0.40)
        : 1;
    return Container(
      // color: Colors.white,
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleHeaderEdit(),
                  BottomBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class isTabletContent extends StatelessWidget {
  isTabletContent({Key? key}) : super(key: key);
  double _scrollPosition = 0;
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _opacity = _scrollPosition < size.height * 0.40
        ? _scrollPosition / (size.height * 0.40)
        : 1;
    return Container(
      // color: Colors.white,
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleHeaderEdit(),
                  BottomBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class isDesktopContent extends StatelessWidget {
  isDesktopContent({Key? key}) : super(key: key);
  double _scrollPosition = 0;
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // _opacity = _scrollPosition < size.height * 0.40
    //     ? _scrollPosition / (size.height * 0.40)
    //     : 1;
    return Container(
      // color: Colors.white,
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleHeaderEdit(),
                  BottomBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
