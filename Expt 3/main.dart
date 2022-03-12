import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _key,
          child: Column(
            children: [
              // TextFormField(
              //   initialValue: "Username",
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "User Name cannot be empty";
              //     } else if (value.length <= 5) {
              //       return "Username should be greater than 5";
              //     } else {
              //       return null;
              //     }
              //   },
              // ),

            TextFormField(  
              decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return "User Name cannot be empty";
                  } else if (value.length <= 5) {
                    return "Username should be greater than 5";
                  } else {
                    return null;
                  }
                },              
          ),

          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),
            validator: (value) {
                  if (value!.isEmpty) {
                    return "Phone Number cannot empty";
                  } else if (value.length > 10 || value.length < 10) {
                    return "Phone Number must contain 10 digits";
                  } else {
                    return null;
                  }
                },    
          ),  

          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'DD/MM/YYYY',  
            labelText: 'Dob',  
            ),
            validator: (value) {
                  if (value!.isEmpty) {
                    return "Date field cannot be empty";
                  }  
                },    
           ),
             
          //  Container(  
          //     padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
          //     child:  const RaisedButton(  
          //       child: const Text('Submit'),  
          //       onPressed: null,
          //     )),  

              FlatButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    print("Your data is submitted");
                  }
                },
                child: Text("Submit"),
                color: Colors.blue,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
