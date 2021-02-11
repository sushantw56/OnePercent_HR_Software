import 'package:flutter/material.dart';
import 'package:onepercent_hr_software/screens/employeedetails.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({
    this.name,
    this.position,
    this.imageAddress,
  });

  final String name;
  final String position;
  final String imageAddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 100),
      child: InkWell(
        child: Card(
          shadowColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1000,
                    width: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        CircleAvatar(
                          maxRadius: 94.0,
                          minRadius: 20.0,
                          backgroundColor: Colors.white,
                          //radius: 60.0,
                          backgroundImage: AssetImage(
                              imageAddress), // https://github.com/hemangdtu/MiCardApp/blob/master/images/hemang.jpg?raw=true
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            name,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            position,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          elevation: 12.0,
          margin: EdgeInsets.all(10.0),
          color: Colors.black38,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EmployeeDetails()));
        },
      ),
    );
  }
}
