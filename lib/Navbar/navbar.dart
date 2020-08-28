import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavbar();
        } else {
          return PhoneNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 140),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Row(
                children: [
                  Container(
                    width: 95.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Logo%20(1).png'),
                            fit: BoxFit.cover)),
                  ),
                  Text("MISFIT LEARNING",style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),

                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.0,
                ),
//                InkWell(
//                  onTap: () async {
//                    const url =
//                        'https://www.youtube.com/channel/UCGF8TZgxizDN3MDSulUP5bg';
//                    if (await canLaunch(url)) {
//                      await launch(url);
//                    } else {
//                      throw 'Could not launch $url';
//                    }
//                  },
//                  child: Text(
//                    'YOUTUBE',
//                    style: TextStyle(
//                        fontSize: 18.0,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.greenAccent),
//                  ),
//                ),
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/about');
                    },
                    child: Text(
                      'ABOUT US',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/contact');
                    },
                    child: Text(
                      'CONTACT',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PhoneNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Row(
                children: [
                  Container(
                    width: 95.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Logo%20(1).png'),
                            fit: BoxFit.cover)),
                  ),
                  Text("MISFIT LEARNING",style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/about');
                    },
                    child: Text(
                      'ABOUT US',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/contact');
                    },
                    child: Text(
                      'CONTACT',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}