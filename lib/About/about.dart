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
      color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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
        color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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

Widget buildPravinCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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

Widget buildAkashCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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

Widget buildMokshCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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

Widget buildTejuCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/IMG_20200220_113123-01.jpeg'),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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

Widget buildReethikCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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

Widget buildRiddhiCard(String name, String desc,  List<String> skills, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.black
    ),
    padding: EdgeInsets.all(20.0),
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
                                  'https://www.linkedin.com/in/vivek-yadav-665823129/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/linkedin.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://twitter.com/viveky259259';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/twitter.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/viveky259/';
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
                                          'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/instagram.png'),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                            onTap: () async {
                              const url = 'https://github.com/viveky259259';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
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
class PhoneAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
