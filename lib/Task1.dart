import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenHome(),
    );
  }
}
class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();

}

class _ScreenHomeState extends State<ScreenHome> {
  double counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 400,
              height: 300,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(counter),

              )

          ),
          Slider(value: counter, onChanged: (double x){
            counter=x;
            setState(() {
            });
          } ,
            max: 365, min: 0,)
        ],
      ),
    );



  }
}
