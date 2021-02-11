import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:onepercent_hr_software/screens/dailytimesheet.dart';

class EmployeeDetails extends StatefulWidget {
  @override
  _EmployeeDetailsState createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                maxRadius: 94.0,
                minRadius: 20.0,
                backgroundColor: Colors.white,
                //radius: 60.0,
                backgroundImage:
                    ExactAssetImage('assets/assets/profile_image.png')),
          ), // https://github.com/hemangdtu/MiCardApp/blob/master/images/hemang.jpg?raw=true
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TimeSheet()));
                  },
                  child: Text("Daily Time Sheet".toUpperCase()),
                ),
              ),
              Text(
                "Name : ".toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Designation : ".toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Date of birth : ".toUpperCase(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Address : ".toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Salary : ".toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Leaves : ".toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Document Upload".toUpperCase()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Update".toUpperCase()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
