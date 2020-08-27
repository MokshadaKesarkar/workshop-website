import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              child: FlutterLogo(
                colors: Colors.green,
                size: 25.0,
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
                InkWell(
                  onTap: () async {
                    const url = 'https://medium.com/@viveky259259';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    'ABOUT US',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                InkWell(
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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            child: FlutterLogo(
              colors: Colors.green,
              size: 40.0,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/projects');
                },
                child: Text(
                  'PROJECTS',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent),
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              InkWell(
                onTap: () async {
                  const url =
                      'https://www.youtube.com/channel/UCGF8TZgxizDN3MDSulUP5bg';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  'YOUTUBE',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  const url = 'https://medium.com/@viveky259259';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  'BLOG',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent),
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/contact');
                },
                child: Text(
                  'CONTACT',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}