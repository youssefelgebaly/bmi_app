import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  late  int result ;
  late  bool isMale;
  late  int age;
  BmiResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });
  late String x = PrintState();
  String PrintState(){
    String xv;
    if(result <= 15){
      xv='Very severe weight loss';
    }
    else if(result > 15 && result <= 16  ){
      xv= 'Severe weight loss';
    }
    else if (result > 16 && result <= 18.5 ){
      xv='Weight loss';
    }
    else if( result > 18.5 && result <= 25)
    {
      xv='normal weight';
    }
    else if( result > 25 && result <= 30)
    {
      xv='Increase in weight';
    }
    else if( result > 30 && result <= 35)
    {
      xv='first degree obesity';
    }
    else if( result > 35 && result <= 40)
    {
      xv='second degree obesity';
    }else
    {
      xv='Excessive obesity';
    }
    return xv;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${ isMale? 'Male':'Female'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'BMI : ${result.round()}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : $x',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
