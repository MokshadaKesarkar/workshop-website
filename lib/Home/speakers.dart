import 'package:flutter/material.dart';

class Speakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopSpeakers();
        } else {
          return PhoneSpeakers();
        }
      },
    );
  }
}

class DesktopSpeakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.lightBlueAccent,
              width: 5.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black
      ),

      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Center(
              child: Text(
                'EVENT SPEAKER',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpeakerCard(context, "Suresh Choudhary", "https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Screenshot_2020-08-27-16-25-27-19_254de13a4bc8758c9908fff1f73e3725-01.jpeg", "IT Security", ""),
                SpeakerCard(context, "Vivek Yadav", "https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/profile.jpeg", "Flutter Developer", ""),
                SpeakerCard(context, "Anmol Jindal", "https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Screenshot_2020-08-27-16-38-26-48_254de13a4bc8758c9908fff1f73e3725-01.jpeg", "    Deep Learning \nArtificial Intelligence ", "")
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget SpeakerCard(BuildContext context,String name, String photoUrl, String info, String socialUrl){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height/1.5,
      width: width/4,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
            color: Colors.lightBlueAccent,
            width: 4.0,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20.0),

      ),
      child: Column(children: [
        SizedBox(
          height: 50.0,
        ),
        Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.lightBlueAccent,
                  width: 3.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(75.0),
              image: DecorationImage(
                  image: NetworkImage(
                      photoUrl),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 25.0),
        Text(name,style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        SizedBox(height: 25.0),
        Text(info,style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlueAccent
        ),),
        SizedBox(height: 25.0),
        Container(
          height:50.0,
          width:170.0 ,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
              color: Colors.lightBlueAccent,
              width: 2.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Know More",style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Screenshot_2020-08-27-17-02-13-94.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),)

      ],),
    );

  }
}

class PhoneSpeakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 2.5,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.lightBlueAccent,
              width: 5.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black
      ),

      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'EVENT SPEAKER',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpeakerCard(context, "Suresh Choudhary", "https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Screenshot_2020-08-27-16-25-27-19_254de13a4bc8758c9908fff1f73e3725-01.jpeg", "IT Security", ""),
                SizedBox(
                  height: 20.0,
                ),
                SpeakerCard(context, "Vivek Yadav", "https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/profile.jpeg", "Flutter Developer", ""),
                SizedBox(
                  height: 20.0,
                ),
                SpeakerCard(context, "Anmol Jindal", "https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Screenshot_2020-08-27-16-38-26-48_254de13a4bc8758c9908fff1f73e3725-01.jpeg", "    Deep Learning \nArtificial Intelligence ", "")
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget SpeakerCard(BuildContext context,String name, String photoUrl, String info, String socialUrl){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height - 200,
      width: width/1.5,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
            color: Colors.lightBlueAccent,
            width: 4.0,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(children: [
        SizedBox(
          height: 50.0,
        ),
        Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.lightBlueAccent,
                  width: 3.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(75.0),
              image: DecorationImage(
                  image: NetworkImage(
                      photoUrl),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 25.0),
        Text(name,style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        SizedBox(height: 25.0),
        Text(info,style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlueAccent
        ),),
        SizedBox(height: 25.0),
        Container(
          height:50.0,
          width:170.0 ,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
                color: Colors.lightBlueAccent,
                width: 2.0,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Know More",style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
              Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/MokshadaKesarkar/workshop-website/master/assets/Screenshot_2020-08-27-17-02-13-94.png'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),)

      ],),
    );
  }
}

