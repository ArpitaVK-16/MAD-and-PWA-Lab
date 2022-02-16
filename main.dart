import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.cyan,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Facilities",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Academics",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text(
                    "Help",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value) => vision(context),
            ),
          ),
          title: Text("Welcome To IT Department of Finolex Academy of Management and Technology, Ratnagiri"),
          backgroundColor: Colors.purple,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://images.pexels.com/photos/396304/pexels-photo-396304.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  height: 250,
                  width: 400,
                ),
                Row(
                  children:[
                    SizedBox( height: 50,),
                    RaisedButton(
                      child: Text('Programming Lab',style: TextStyle(fontWeight: FontWeight. bold,),),
                      onPressed: () => ProgrammingLab(context),
                      textColor: Colors.pink, 
                                           
                    ),
                    RaisedButton(
                      child: Text('DBMS Lab',style: TextStyle(fontWeight: FontWeight. bold,),),
                      onPressed: () => DBMS(context),
                      textColor: Colors.pink, 
                    ),
                    RaisedButton(
                      child: Text('Networks Lab',style: TextStyle(fontWeight: FontWeight. bold,),),
                      onPressed: () => NetworksLab(context),
                      textColor: Colors.pink, 
                    ),
                    RaisedButton(
                      child: Text('IoT Lab',style: TextStyle(fontWeight: FontWeight. bold,),),
                      onPressed: () => IoTLab(context),
                      textColor: Colors.pink, 
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text('Contact Us',style: TextStyle(fontWeight: FontWeight. bold,),),
                  onPressed: () => contactUs(context),
                  textColor: Colors.pink, 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Email ID: hodit@famt.ac.in\n\nAddress: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),          
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void ProgrammingLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Programming Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/267507/pexels-photo-267507.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Mandar Joshi\n\nProgramming is unevitable part of IT Engineers' life.\n\nThe Programming lab provides facility of 30 computers with the required softwares preloaded.", textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void DBMS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To DBMS Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/3747486/pexels-photo-3747486.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Swati Powar\n\nA database management system (or DBMS) is essentially nothing more than a computerized data-keeping system.\n\nUsers of the system are given facilities to perform several kinds of operations on such a system for either manipulation of the data in the database or the management of the database structure itself.\n\nThe DBMS Lab is well euipped with 30 computers, a projectors and required furniture.", textAlign: TextAlign.justify,),              
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void NetworksLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Networks Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/10638065/pexels-photo-10638065.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,                
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Atiya Kazi\n\nNetworking is the base of all the Internet era.\n\nThe Networking Lab provides facility of 30 computers", textAlign: TextAlign.justify,),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void IoTLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Internet of Things Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/163125/board-printed-circuit-board-computer-electronics-163125.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Dr. Vinayak Bharadi\n\nThe Internet of things describes physical objects that are embedded with sensors, processing ability, software, and other technologies that connect and exchange data with other devices and systems over the Internet or other communications networks.\n\nThe IoT Lab Provides facility with 25 computers and other required hardwares like Jetson Nano.",textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision of Finolex Academy of Management and Technology'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/267885/pexels-photo-267885.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}