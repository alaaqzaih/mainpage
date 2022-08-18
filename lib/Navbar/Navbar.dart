import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        height: 80,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    color: Color(0xffE63220),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Text(
                      "اشترك كمزود خدمة",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    " تسجيل الدخول",
                    style: TextStyle(
                      color: Color(0xffE63220),
                      // height: 4,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "من نحن",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Color(0xffE63220),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "خدماتنا",
                    style: TextStyle(
                      color: Color(0xffE63220),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "الرئيسية",
                    style: TextStyle(
                      color: Color(0xffE63220),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 600,
                  ),
                  Image(
                    image: AssetImage("images/web2.png"),
                    width: 300,
                    height: 300,
                    // fit: BoxFit.fill,
                    //   alignment: FractionalOffset.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        height: 80,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 550),
              child: Row(
                children: <Widget>[
                  MaterialButton(
                    color: Color(0xffE63220),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Text(
                      "اشترك كمزود خدمة",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    " تسجيل الدخول",
                    style: TextStyle(
                      color: Color(0xffE63220),
                      // height: 4,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "من نحن",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Color(0xffE63220),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "خدماتنا",
                    style: TextStyle(
                      color: Color(0xffE63220),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "الرئيسية",
                    style: TextStyle(
                      color: Color(0xffE63220),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    image: AssetImage("images/web2.png"),
                    width: 300,
                    height: 300,
                    // fit: BoxFit.fill,
                    //   alignment: FractionalOffset.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
