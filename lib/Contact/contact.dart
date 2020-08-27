import 'package:flutter/material.dart';
import 'package:app/Navbar/navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: ListView(
          children: [
            Navbar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ContactForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DesktopContact(),
            ],
          ),
        );
      } else {
        return Column(
          children: [
            PhoneContact(),
          ],
        );
      }
    });
  }
}

class DesktopContact extends StatelessWidget {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController messageController = new TextEditingController();

  Firestore db = Firestore.instance;

  CollectionReference get contact => db.collection('contact');
  CollectionReference get mail => db.collection('mail');
  final successSnackbar = SnackBar(
    content: Text(
      'Message Send Successful',
      style: TextStyle(color: Colors.black87),
      textAlign: TextAlign.center,
    ),
    shape: RoundedRectangleBorder(),
    backgroundColor: Colors.lightBlueAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550.0,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello.',
              style: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              controller: nameController,
              cursorColor: Colors.lightBlueAccent,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.lightBlueAccent,
                  size: 27.0,
                ),
                labelText: 'NAME',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: emailController,
              cursorColor: Colors.lightBlueAccent,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.alternate_email,
                  color: Colors.lightBlueAccent,
                  size: 27.0,
                ),
                labelText: 'EMAIL',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 120.0,
              child: TextField(
                controller: messageController,
                cursorColor: Colors.lightBlueAccent,
                style: TextStyle(color: Colors.white),
                maxLines: 10,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.message,
                    color: Colors.lightBlueAccent,
                    size: 27.0,
                  ),
                  labelText: 'MESSAGE',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: Colors.lightBlueAccent,
              splashColor: Colors.white,
              onPressed: () {
                saveContactDetails(nameController.text, emailController.text,
                    messageController.text)
                    .whenComplete(() {
                  nameController.clear();
                  emailController.clear();
                  messageController.clear();
                  Scaffold.of(context).showSnackBar(successSnackbar);
                });
              },
              child: Text('SEND'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> saveContactDetails(
      String name, String email, String message) async {
    await contact.add(<String, dynamic>{
      'name': name,
      'email': email,
      'message': message,
      'timestamp': DateTime.now()
    });
  }

}

class PhoneContact extends StatelessWidget {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController messageController = new TextEditingController();

  Firestore db = Firestore.instance;

  CollectionReference get contact => db.collection('contact');
  CollectionReference get mail => db.collection('mail');
  final successSnackbar = SnackBar(
    content: Text(
      'Message Send Successful',
      style: TextStyle(color: Colors.black87),
      textAlign: TextAlign.center,
    ),
    shape: RoundedRectangleBorder(),
    backgroundColor: Colors.lightBlueAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(27.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello.',
              style: TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              controller: nameController,
              cursorColor: Colors.lightBlueAccent,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.lightBlueAccent,
                  size: 18.0,
                ),
                labelText: 'NAME',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: emailController,
              cursorColor: Colors.lightBlueAccent,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.alternate_email,
                  color: Colors.lightBlueAccent,
                  size: 18.0,
                ),
                labelText: 'EMAIL',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 120.0,
              child: TextField(
                controller: messageController,
                cursorColor: Colors.lightBlueAccent,
                style: TextStyle(color: Colors.white),
                maxLines: 10,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.message,
                    color: Colors.lightBlueAccent,
                    size: 18.0,
                  ),
                  labelText: 'MESSAGE',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: Colors.lightBlueAccent,
              splashColor: Colors.white,
              onPressed: () {
                saveContactDetails(nameController.text, emailController.text,
                    messageController.text)
                    .whenComplete(() {
                  nameController.clear();
                  emailController.clear();
                  messageController.clear();
                  Scaffold.of(context).showSnackBar(successSnackbar);
                });
              },
              child: Text('SEND'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> saveContactDetails(
      String name, String email, String message) async {
    await contact.add(<String, dynamic>{
      'name': name,
      'email': email,
      'message': message,
      'timestamp': DateTime.now()
    });
  }


}