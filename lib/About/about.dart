import 'package:app/Navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return DesktopAbout();
            } else {
              return PhoneAbout();
            }
          },
        ),
      ),
    );
  }
}


class DesktopAbout extends StatelessWidget {
  List<String> skills = ['python', 'java'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Navbar(),
          buildNikhilCard('Nikhil Naidu', 'Developer', skills, context),
          buildAakankshaCard('Aakanksha Bomble', 'Developer', skills, context),
          buildPravinCard('Pravin Choudhary', 'Developer', skills, context),
          buildAkashCard('Akash Tripathi', 'Developer', skills, context),
          buildTejuCard('Tejashree Jadhav', 'Developer', skills, context),
          buildReethikCard('Reethik Thota', 'Developer', skills, context),
          buildMokshCard('Mokshada Kesarkar', 'Developer', skills, context),
          buildRiddhiCard('Riddhi Kadam', 'Developer', skills, context),
        ],
      ),
    );
  }
}

Widget buildNikhilCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-me/master/assets/profile.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Java',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Dart',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Solidity',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Javascript',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'App Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Blockchain',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Web Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Flutter',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Angular',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Tensorflow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/nikhil-naidu-2a3932183';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/nikhilnaidun9n?s=09';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/_nikhil_naidu?igshid=tn9lh1jxhsm2/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/NikhilNaidu9';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"The world and the community has provided us with a lot of things, it\'s our duty to return our favours"',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

Widget buildAakankshaCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/IMG-20200827-WA0025-01.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Java',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Dart',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'C++',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'App Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Web Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Flutter',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Tensorflow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/aakanksha-bomble-a032621b1';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/AakankshaBomble?s=08';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/akan_kshaaaa_?igshid=n0atu2nwngjq';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/aakankshabomble';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"One day or day one it\'s your choice"',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

Widget buildPravinCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/IMG_20200213_155113-03.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Java',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Dart',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Javascript',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'App Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Web Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Flutter',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Django',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/pravin-choudhary-70294a169/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/Pravinc53784341';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/pravinnatsu?igshid=sb0yzwsa11rf';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/pravinnatsu';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"Whenever I learn something new. I try to teach someone the same thing. What I found my knowledge get 10x each time i do that',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

Widget buildAkashCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/IMG20191101161836-01-01-01-03.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Java',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'C++',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'App Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'UI Designing',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Embedded System',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Tensorflow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/akash-tripathi-42063a1b1';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/AKASHTR40592675?s=09';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/tripathiakash7?igshid=1mrf8lelyaedl';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/Akashtripathi7';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"MY DREAM IS TO LOOK  BACK AND SAY "I MADE IT""',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

Widget buildMokshCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/IMG-20200827-WA0011.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Java',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'C',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'App Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Tensorflow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/mokshada-kesarkar-9446371b1';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/MokshadaKesark1?s=08';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/_mokshada?igshid=g9toyu3o9nji';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/MokshadaKesarkar';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"Change your thoughts and you change your world"',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

Widget buildTejuCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/teju-web.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Tensorflow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/tejashree-jadhav-30292b1b4';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/Tejashr78699068?s=09';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/_tejuuuuu_?igshid=ljcl7i1iatci';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/tejashreejadhav1307';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"Be the change you want to see the world"',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

Widget buildReethikCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Screenshot_2020-06-03-19-21-19-04-02.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Java',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'C',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'C++',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'App Development',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Embedded System',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Tensorflow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/reethik-thota';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/ReethikThota?s=08';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/reethik.remo?igshid=1fqjhia7n2yo6';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/reethik';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"Make life lighter, expect less and stay a fighter"',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

Widget buildRiddhiCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
          color: Colors.lightBlueAccent,
          width: 5.0,
          style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent,
                            width: 4.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/IMG-20200524-WA0003-01.jpeg'),
                            fit: BoxFit.cover)),
                  ),

                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'PROGRAMING LANGUAGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Python',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Java',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'C++',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Machine Learning',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'FRAMEWORKS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontSize: 24.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Tensorflow',
                          style:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.linkedin.com/in/riddhi-kadam-36a6421b1';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/RiddhiKadam4?s=08';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://instagram.com/kadam_riddhi?igshid=ekkeychlrwmd';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/instagram-sketched.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/RIDDHI235';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/github.png'),
                                  )),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            '"All our dreams can come true, if we have the courage to pursue them."',
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          height: 2.0,
          width: width - 150,
          decoration: BoxDecoration(color: Colors.lightBlueAccent),
        )
      ],
    ),
  );
}

class PhoneAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
