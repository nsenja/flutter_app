import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Container(
          color: Theme.of(context).primaryColorDark,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 8,
                margin: EdgeInsets.only(left: 8, right: 8),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                     TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => print("Register clicked"),
                      child: Text('Register'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 36),
                      ),
                    ),
                     InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text("Register new user"),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}