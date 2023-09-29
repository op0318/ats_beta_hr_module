import 'package:flutter/material.dart';
import './Employeemodel.dart';
import './Employeebloc.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final EmployeeBloc _employeebloc=EmployeeBloc();

  void dispose()
  {
    super.dispose();
    _employeebloc.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Employee>>(stream:_employeebloc.employeeliststream,
    builder: (BuildContext context, AsyncSnapshot<List<Employee>>snapshot)
      {
        return ListView.builder(

          itemCount: snapshot.data?.length,
          itemBuilder: (context, index)
          {
            return  Card(elevation: 5.0,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(padding:EdgeInsets.all(20.0),child:
                    Text("${snapshot.data![index].id}",style: TextStyle(fontSize: 20.0)), ),
                    Container(padding: EdgeInsets.all(20),child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("${snapshot.data![index].name}",
                      style: TextStyle(fontSize: 18.0),),
                      Text("${snapshot.data![index].salary
                          }",style: TextStyle(fontSize: 16.0),)],)),
                    Container(child: IconButton(color: Colors.green,
                        onPressed: () {  },icon: Icon(Icons.thumb_up,))),
                    Container(child: IconButton(color:Colors.red,onPressed: (){},icon: Icon(Icons.thumb_down),)),
                            ]
              ),
            );
          },) ;
      },);
  }
}
