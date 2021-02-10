import 'package:flutter/material.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter Employee Name",
                labelText: "Name"),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter Employee Contact Number',
              labelText: 'Phone',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter Employee Date Of Birth',
              labelText: 'Date Of Birth',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.home),
              hintText: 'Enter Employee Address',
              labelText: 'Employee Address',
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 40),
            child: ElevatedButton(
              child: Text("Add Employee"),
              onPressed: null,
            ),
          )
        ],
      )),
    );
  }
}
