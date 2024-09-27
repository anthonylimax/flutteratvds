import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Meu App",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                child: Text(
                  "Bem Vindo!",
                  style: TextStyle(color: Colors.blue, fontSize: 20.0),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                child: Text("Sign in")),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                  ),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                )),
            Container(
              child:
                  TextButton(onPressed: () {}, child: Text("Forgot password")),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  // Navegar para a nova página simples
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimplePage()),
                  );
                },
                child: Text("Login"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Does not have account?"),
                  Container(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// A nova página simples
class SimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Simples"),
      ),
      body: Center(
        child:
            Text("Você está na nova página!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
