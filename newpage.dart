import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Anim'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: (){
                openFullData(context);
              },
              child: Hero(
                tag: 'my-hero',
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://blogger.googleusercontent.com/img/a/AVvXsEjecD_nJ35NUUQ3j6XPR4Y727siJSwMAPjy8fQDAmUkIcxnCj0BFQXQfZie2aTcpiOUFjo4ZfVJKvIa24TmAiIsIu5CsTiyBuZlECV1P7SXDGMnylp_Fnkgm1UJLgu_a178mZ0zZmJ_AI1OJcmQqSrt2RTX2cxoZURbQsVL8zudeg1GxYfDGMPAZRzP'),
                ),
              ),
            ),
            title: Text('Click Me'),
          )
        ],
      ),
    );
  }

  void openFullData(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (builder)=> Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Hero(
          tag: 'my-hero',
          child: Image.network('https://blogger.googleusercontent.com/img/a/AVvXsEjecD_nJ35NUUQ3j6XPR4Y727siJSwMAPjy8fQDAmUkIcxnCj0BFQXQfZie2aTcpiOUFjo4ZfVJKvIa24TmAiIsIu5CsTiyBuZlECV1P7SXDGMnylp_Fnkgm1UJLgu_a178mZ0zZmJ_AI1OJcmQqSrt2RTX2cxoZURbQsVL8zudeg1GxYfDGMPAZRzP'),
        ),
      ),
    )));
  }
}
