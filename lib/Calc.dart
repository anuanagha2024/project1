import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final one = TextEditingController();

  final two = TextEditingController();

  double result=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          title: Text(
            "Simplistic calculator",
            style: TextStyle(
              color: Colors.white,
            ),
          )
      ),
      body: Column(
        children: [

          Text(result.toString()),
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
            controller: one ,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: "Enter a number",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: two,
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
                onPressed: (){
                  double abc=double.parse(one.text);
                  double def=double.parse(two.text);
                   result=abc+def;
                  print(result);
                  setState(() {
                  });
                }
                ,
                child: Text("+"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,),
              ),
              SizedBox(width: 30,),
              ElevatedButton(onPressed: () {
                double abc=double.parse(one.text);
                double def=double.parse(two.text);
                 result=abc-def;
                print(result);
                setState(() {

                });

              }, child: Text("-"), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,),),
              SizedBox(width: 30,),
              ElevatedButton(onPressed: () {
                double abc=double.parse(one.text);
                double def=double.parse(two.text);
                 result=abc*def;
                print(result);
                setState(() {

                });

              }, child: Text("*"), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,),),
              SizedBox(width: 30,),
              ElevatedButton(onPressed: () {
                double abc=double.parse(one.text);
                double def=double.parse(two.text);
                 result=abc/def;
                print(result);
                setState(() {

                });

              }, child: Text("/"), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,),),
              SizedBox(width: 30,),
            ],
          )
        ],
      ),
    );
  }
}
