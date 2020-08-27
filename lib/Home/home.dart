import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopHome();
        } else {
          return PhoneHome();
        }
      },
    );
  }
}

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height-55,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black
      ),
    );
  }
}

class PhoneHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

