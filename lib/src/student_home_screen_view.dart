import 'package:studentproj/src/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:studentproj/mock/mock.dart';

class StudentHomeScreenVieww extends StatefulWidget {
  const StudentHomeScreenVieww({Key? key}) : super(key: key);

  @override
  State<StudentHomeScreenVieww> createState() => _StudentHomeScreenViewwState();
}

class _StudentHomeScreenViewwState extends State<StudentHomeScreenVieww> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("Student List", style: TextStyle(color: Colors.black, fontSize: 28),), backgroundColor: Colors.transparent, elevation: 0,),
      body: Column(children: [
        Expanded(
          flex: 3, 
          child: ListView.builder( itemCount: mockData.length, itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: ListTile(
                  subtitle: Text(index.toString(),),
                  leading: Image.network(mockData[index]["profile_image"].toString()),
                  title: Text(mockData[index]["first_name"].toString()),
                  trailing: IconButton(icon: Icon(Icons.arrow_right),
                  onPressed: ()
                  {
                    Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  imageURL: mockData[index]["profile_image"]
                                      .toString(),
                                  studentName:
                                      mockData[index]["first_name"].toString(),
                                  gender: mockData[index]["gender"].toString(),
                                ),
                              ),
                            );
                  },),
              ),
            ));
          },)
          ),
        Container(

        )
      ]),),
    );
  }
}