import 'package:ats_beat_hr_module/Pages/Dashboard.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(top: true,
      child: Scaffold(
        body: Column(
          children: [Expanded(flex: 3,
            child: Container(
              width: width*1,
              child:Column(
                children: [Padding(padding: EdgeInsets.all(20),
                    child: Image.asset('assets/images/Logo/SSlogo.png'))],
              ),

              color: Colors.white,
            ),
          ),
          Expanded(flex: 7,
            child: Container(
              child: Stack(clipBehavior: Clip.none,
                children: [
                Positioned(top:MediaQuery.of(context).size.height*-0.10 ,
                  right: width*0.19,
                  child: Container(height: 150,
                    width: 250,
                    decoration: BoxDecoration(border: Border.all(width: 10,color: Color.fromRGBO(0, 68, 102, 10.0)),
                        color:Colors.white,
                        shape: BoxShape.circle),child: Center(child: Text('ATS',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 68, 102, 10.0),
                    fontSize: 25),)),)),
                  Center(child: Container(
                    height: height*0.4,width: width*0.7,color: Color.fromRGBO(0, 68, 102, 10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Your employee id:',style:TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15,color: Colors.white)),
                        SizedBox(height: 20,),
                        Text('Please enter the employee id ',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                        Text('and confirm',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration( color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(decoration: InputDecoration(focusColor: Colors.white,fillColor: Colors.white,
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),),

                        ),
                          SizedBox(height: 100,),
                        Padding(padding: EdgeInsets.only(left: height*0.3),
                          child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                              onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => dashboard(),));
                              }, child: Icon(Icons.arrow_forward_outlined,color: Colors.black,)),
                        ),

                     ],)),)
                ],
              ),
              width: width*1,
              height: height*0.8,
              decoration: BoxDecoration(color: Color.fromRGBO(0, 68, 102, 1),
                  borderRadius:BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))),
            ),
          )],
        ),
      ),
    );
  }
}

