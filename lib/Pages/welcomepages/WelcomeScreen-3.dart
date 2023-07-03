import 'package:flutter/material.dart';

class Welcomepagethree extends StatelessWidget {
  const Welcomepagethree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
        color: Color.fromRGBO(0, 68, 102, 10.0),

        height: MediaQuery.of(context).size.height*0.7,
        width: MediaQuery.of(context).size.width*1,
        child: Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
          child: Column(
            children: [
              Image.asset('assets/images/welcomepageimages/wlimg3.png' ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text('Visualizing',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('App is based on Visualizing the',style: TextStyle(
                    color: Colors.white,
                    fontSize: 25),),
              ),
              Padding(padding: EdgeInsets.all(10),
                  child: Text('Employee details.',style: TextStyle(fontSize: 25,color: Colors.white),))


            ],
          ),
        ),
      ));
  }
}
