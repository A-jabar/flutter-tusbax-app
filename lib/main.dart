import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(FoodApp());
}
class FoodApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'FoodGo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
        children: [
          Expanded(
           child:
            IconButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> HomeScreen())
                );
              },
              icon: Icon(Icons.power_settings_new),iconSize: 200,)

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
















