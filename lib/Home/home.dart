import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
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
      height: height - 100,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.lightBlueAccent,
            width: 5.0,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20.0),

        color: Colors.black
      ),
      padding: EdgeInsets.symmetric(vertical: 25.0),
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width / 4,
                height: height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/006-window.png'),
                        fit: BoxFit.fill)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("5 DAY WORKSHOP TO REMODEL YOUR ABILITIES \n         COMBINED WITH TECH CONFERENCE",style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                  SizedBox(
                    height: 55.0,
                  ),
                  Container(
                    height: 60.0,
                    width: 190.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                          color: Colors.blue,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () async {
                          const url =
                              'https://forms.gle/4JoADPV3JXvxCUty5';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      child: Center(
                        child: Text(
                          'ENROLL NOW',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
      SizedBox(
        height: 60,
      ),
      Text(
      '"THE WORLD AND THE COMMUNITY HAS PROVIDED US A LOT OF THINGS IT\'S OUR DUTY TO RETURN OUR FAVOURS"',
      style: TextStyle(
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white),
      ),
        ],
      ),
    );
  }
}

class PhoneHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 550.0,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.lightBlueAccent,
              width: 5.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black
      ),
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width / 4,
                height: height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/006-window.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("5 DAY WORKSHOP TO REMODEL YOUR ABILITIES COMBINED WITH TECH CONFERENCE",style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                          color: Colors.blue,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () async {
                        const url =
                            'https://forms.gle/4JoADPV3JXvxCUty5';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Center(
                        child: Text(
                          'ENROLL NOW',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            '"THE WORLD AND THE COMMUNITY HAS PROVIDED US A LOT OF THINGS IT\'S OUR DUTY TO RETURN OUR FAVOURS"',
            style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ],
      ),
    );  }
}

