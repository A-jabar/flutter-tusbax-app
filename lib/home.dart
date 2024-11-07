import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int Total = 0;
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      body: Column(

          children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              height: 200,
              width: 500,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color(0xFF222222),
                border: Border.all(color: Color(0xFF4D4D4D), width: 3),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.all(12.0),
                color: Color(0xFF00FF00),
                child: Center(
                  child: Text(
                    '$Total',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Courier',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(

              children: [
               Container(
                 margin: EdgeInsets.only(left: 300),
                 child:  IconButton(
                   onPressed: () {
                     setState(() {
                       Total=0;
                     });
                   },
                   icon: Icon(Icons.add),
                   iconSize: 40,
                   color: Colors.white,
                   padding: EdgeInsets.all(16),
                   style: ButtonStyle(
                     shape: MaterialStateProperty.all(CircleBorder()),
                     backgroundColor: MaterialStateProperty.all(Colors.blue),
                   ),
                 ),
               ),
              ],
            ),

            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 IconButton(
                    onPressed: () {
                      setState(() {
                        Total++;
                      });
                    },
                    icon: Icon(Icons.add),
                    iconSize: 120,
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                  ),

              ],
            ),
          ],
        ),


    );
  }
}