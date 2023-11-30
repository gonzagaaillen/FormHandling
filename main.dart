import "package:flutter/material.dart";

void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext Activity) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatefulWidget {
  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool hidePassword = true;
  @override
  Widget build(BuildContext Activity) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.person),
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: username,
              style: TextStyle(color: Colors.deepPurple),
              decoration: InputDecoration(
                labelText: "Email Address:",
                labelStyle: TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: password,
              style: TextStyle(color: Colors.deepPurple),
              obscureText: hidePassword,
              decoration: InputDecoration(
                labelText: "Password:",
                labelStyle: TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                suffix: TextButton(
                  onPressed: (){
                     setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                child: Text("${(hidePassword) ? 'Show' : 'Hide'} Password"),
                style: TextButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple
              ),
              onPressed: (){
                print(username.text);
                print(password.text);
                username.clear();
                password.clear();
              },
              child: Text("Submit"),
            )
          ],
        )
      ),
    );
  }
}