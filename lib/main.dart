import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          title: Text(
            "Simplistic calculator",
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          TextField(
            style: TextStyle(
              color: Colors.black,
            ),
            // decoration: InputDecoration(
            //  labelText: "",
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: "Enter a number",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: "Enter a number",
            ),
          ),
          SizedBox(
            height: 29,),
          Row(
            children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("+")
          ),ElevatedButton(onPressed: (){}, child: Text("-")),
          ElevatedButton(onPressed: (){}, child: Text("*")),
          ElevatedButton(onPressed: (){}, child: Text("/")),
            ],
          )
        ],
      ),
    )),
  );
}
