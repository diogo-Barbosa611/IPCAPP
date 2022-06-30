// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, prefer_typing_uninitialized_variables, deprecated_member_use, sort_child_properties_last, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ipc/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Less',
      theme: ThemeData(primaryColor: Colors.white),
      home: const MyHomePage(title: 'Contact Less'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();

    bool isCheck = false;

    void onChanged(bool? value) {
      setState(() {
        isCheck = value!;
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(
                  'assets\\LogoSemBackground.png',
                ),
                width: 250,
                height: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: TextField(
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                ),
                obscureText: false, // for passwords
                controller: controller,
                keyboardType: TextInputType.visiblePassword,
                onSubmitted: (_) => {},
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.4),
                  filled: true,
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: TextField(
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                ),
                obscureText: true, // for passwords
                controller: controller,
                keyboardType: TextInputType.visiblePassword,
                onSubmitted: (_) => {},
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.4),
                  filled: true,
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: ButtonTheme(
                minWidth: 130.0,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    'Entrar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Color.fromARGB(255, 227, 94, 41),
                  elevation: 10,
                  onPressed: () => {
                    if (controller.text != '')
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Mainpage(username: controller.text),
                          ),
                        ),
                      },
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: ButtonTheme(
                minWidth: 150.0,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    'Registar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.grey.withOpacity(0.2),
                  elevation: 10,
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                      activeColor: Colors.orange,
                      checkColor: Colors.red,
                    ),
                    Text(
                      'Confirmo que aceito os Termos e condições',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
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
