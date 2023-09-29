

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

class getdata extends StatelessWidget {


final user=<String, dynamic>{'location':'chennai'};
   var db=FirebaseFirestore.instance;
    var values=0;

Future search()async
{
  await db.collection('TRAINEES').doc('10801').get().then((DocumentSnapshot v)
  {
   return v.data() as Map<String,dynamic>;

  });



}



Future adddata()async
{


  return await db.collection('TRAINEES').count().get().then((value)
  {
    return value.count;
  });


//To add a custom document id
  //await db.collection('SIGHTSPECTRUM').doc('location').set({"location":"Tanjavur"});


  //await db.collection('SIGHTSPECTRUM').add({"companyid":"100","location":"chennai"});

//To display it in a widget
// return   await db.collection('SIGHTSPECTRUM').doc('Location').get().then((DocumentSnapshot doc)
 //{
   //return (doc.data() as Map<String,dynamic>)['location'];
 //});


}



   //add the data to the cloud firestore
   Future<void>getdat()async
   {
     await db.collection('TRAINEES').doc('EXISTING TRAINEES').collection('DETAILS').get().then((value)
     {
     values=value.docs.length;
     });
     await db.collection('TRAINEES').doc('EXISTING TRAINEES').collection('DETAILS').get().
     then((event)
   {
     for(var doc in  event.docs)
     {
       print("${doc.id}=>${doc.data()}");
     }
   }
   );
   }

   var empid=TextEditingController();


   @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(title: Text('Welcome'),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
            child: Column(mainAxisSize: MainAxisSize.min,
              children: [TextField(
                controller: empid,

                decoration:
                InputDecoration(
                    icon: Icon(Icons.account_box_sharp),
                    labelText: 'Empid',
                    hintText: 'Enter the valid empid',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                SizedBox(height: 20),
                ElevatedButton(onPressed: get, child: Text('Get Details')),



              ],)),
      ),

 );
  }

  Future get()async
  {
    return await db.collection('TRAINEES').doc(empid.text).get().then((DocumentSnapshot name)
    {
      return name['NAME'];

    });
  }



}
