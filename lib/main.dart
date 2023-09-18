import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      )
  );
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              leading: Icon(Icons.home),
              title: Text("Login")
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network("data:image/png;base64,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",
                    height: 250,),
                    SizedBox(height: 20),
                    TextField(
                        controller: username,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)
                            ),
                            labelText: "Username"
                        )
                    ),
                    SizedBox(height: 10),
                    TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)
                            ),
                            labelText: "Kata sandi"
                        )
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Login")
                    ),
                  ]
              ),
            ),
          )
      ),
    );
  }
}
