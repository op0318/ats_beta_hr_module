import 'package:flutter/material.dart';

class WelcomePagetwo extends StatelessWidget {
  const WelcomePagetwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: Color.fromRGBO(0, 68, 102, 10.0),

      height: MediaQuery.of(context).size.height*0.7,
      width: MediaQuery.of(context).size.width*1,
      child: Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
        child: Column(
          children: [
            Image.asset('assets/images/welcomepageimages/w2.png' ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Text('Monitoring',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text('App is based on Monitoring the',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25),),
            ),
            Padding(padding: EdgeInsets.all(10),
                child: Text('Daily and monthly Attendance',style: TextStyle(fontSize: 25,color: Colors.white),)),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Text('Details of employees',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25),),
            )


          ],
        ),
      ),
    ),);
  }
}
