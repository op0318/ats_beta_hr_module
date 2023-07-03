import 'package:flutter/material.dart';
import 'package:ats_beat_hr_module/Pages/Authentication/Login.dart';
import 'package:ats_beat_hr_module/Pages/welcomepages/WelcomeScreen-1.dart';
import 'package:ats_beat_hr_module/Pages/welcomepages/WelcomeScreen-2.dart';
import 'package:ats_beat_hr_module/Pages/welcomepages/WelcomeScreen-3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Color.fromRGBO(0, 68, 102, 10.0),
        body:
        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.7,
              child: PageView(
                controller: _controller,
                children: [
                  welcomePageOne(),
                  WelcomePagetwo(),
                  Welcomepagethree()
                ],


              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SmoothPageIndicator(


                effect:
                ScrollingDotsEffect(
                    strokeWidth: 1.5,
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: Color.fromRGBO(0, 68, 102, 1),dotColor: Colors.white),
                  controller: _controller,
                  count: 3,

             )
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login(),));

                }, child:
                Text('SKIP',style: TextStyle(fontSize: 20,color: Colors.white),)),

                TextButton(onPressed: (){

                  
                  
                }, child:
                Text('NEXT',style: TextStyle(color: Colors.white,fontSize:20 ),))],),
            )

          ],
        ),

      ),
    );
  }
}

