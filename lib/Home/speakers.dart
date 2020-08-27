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
          color: Colors.black
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            SpeakerCard(context, "Anmol Jindal", "", "DL/AI ", ""),
            SpeakerCard(context, "Vivek Yadav", "", "Flutter Developer", ""),
            SpeakerCard(context, "Suresh Choudhary", "", "IT Security", ""),
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
        borderRadius: BorderRadius.circular(30.0),

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
                      'https://raw.githubusercontent.com/NikhilNaidu9/portfolio-website/master/assets/images/profile.jpeg'),
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
            color: Colors.white
        ),),
        SizedBox(height: 25.0),
        Container(
          height:50.0,
          width:150.0 ,
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
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
            FlutterLogo(
              size: 20.0,
              colors: Colors.blue,
            )
          ],
        ),)

      ],),



    );

  }
}













class PhoneSpeakers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

