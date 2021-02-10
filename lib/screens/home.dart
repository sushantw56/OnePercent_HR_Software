import 'package:flutter/material.dart';
import 'package:onepercent_hr_software/employee.dart';
import 'package:onepercent_hr_software/screens/addemployee.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<Employee> employees = [
  //   Employee(
  //       name: 'Sushant',
  //       profileImg: 'assets/profile_image.png',
  //       designation: "Software Developer"),
  //   Employee(
  //       name: 'Hemang',
  //       profileImg: 'assets/profile_image.png',
  //       designation: "Software Developer")
  // ];

  // ignore: non_constant_identifier_names
  // Widget employeeDetailCard(Employee) {
  //   return Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Card(
  //       color: Colors.grey[800],
  //       child: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Row(
  //           children: <Widget>[
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Container(
  //                   width: 50.0,
  //                   height: 50.0,
  //                   decoration: new BoxDecoration(
  //                       shape: BoxShape.circle,
  //                       image: new DecorationImage(
  //                           fit: BoxFit.cover,
  //                           image: AssetImage(Employee.profileImg)))),
  //             ),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 Text(
  //                   Employee.name,
  //                   style: TextStyle(color: Colors.white, fontSize: 18),
  //                 ),
  //                 Text(
  //                   Employee.designation,
  //                   style: TextStyle(color: Colors.white, fontSize: 12),
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("HR"),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddEmployee()));
                },
                child: Text("Add Employee"),
              )
            ],
          ),
          body: Container(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.blue.shade200),
                        border: InputBorder.none),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          const Color(0x36FFFFFF),
                          const Color(0x0FFFFFFF)
                        ]),
                        borderRadius: BorderRadius.circular(40)),
                    child: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          )),
        )
      ],
    );
  }

//   void search() {
//     employees.map((p) {
//       return employeeDetailCard(Employee);
//     }).toList();
//   }
// }
