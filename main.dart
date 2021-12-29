import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newpage.dart';

void main(){
  runApp(MaterialApp(
    home: NewPage(),
  ));
}
class SignUpPage extends StatefulWidget{
  Signupstate createState()=> Signupstate();
}
class Signupstate extends State<SignUpPage>{
  String selectedradiovalue='';
  TextEditingController firstnamecon = TextEditingController();
  TextEditingController lastnamecon = TextEditingController();
  TextEditingController aboutyoucon = TextEditingController();
  String myinformation = '';
  DateTime currenttimee = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: firstnamecon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'First Name',

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: lastnamecon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Last Name',

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: aboutyoucon,
                minLines: 3,
                maxLines: 7,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'About You.......',

                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
                child: Text('Select Gender:')),
            RadioListTile(
              title: Text('Male'),
              value: 'male',
              groupValue: selectedradiovalue,
              onChanged: (query){
                setState(() {
                  selectedradiovalue = query.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'female',
              groupValue: selectedradiovalue,
              onChanged: (query){
                setState(() {
                  selectedradiovalue = query.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Others'),
              value: 'others',
              groupValue: selectedradiovalue,
              onChanged: (query){
                setState(() {
                  selectedradiovalue = query.toString();
                });
              },
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    myinformation = firstnamecon.text+lastnamecon.text+aboutyoucon.text
                    +currenttimee.year.toString();
                  });
                },
                child: Text('Submit'),
              ),
            ),
            Text(myinformation+selectedradiovalue),
          ],
        ),
      ),
    );
  }
}