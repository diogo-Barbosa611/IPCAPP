// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ipc/chat.dart';
import 'package:ipc/enviar.dart';
import 'package:ipc/perfil.dart';

class Mainpage extends StatelessWidget {
  final String username;
  const Mainpage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String user = username.toString();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: <Widget>[
          Image(
            image: AssetImage(
              'assets\\LogoMiniSemBackground.png',
            ),
          )
        ],
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('Contact Less'),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 40, bottom: 30),
              child: Container(
                margin: EdgeInsetsDirectional.only(start: 60),
                height: 80,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Bom dia,',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      user,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: ButtonTheme(
                minWidth: 200.0,
                height: 60,
                child: RaisedButton(
                  color: Colors.grey.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatBar()),
                    ),
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.chat,
                        color: Color.fromARGB(255, 227, 94, 41),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 15),
                        child: Text(
                          'Chat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: ButtonTheme(
                minWidth: 200.0,
                height: 60,
                child: RaisedButton(
                  color: Colors.grey.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EnviarReceba()),
                    ),
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.send,
                        color: Color.fromARGB(255, 227, 94, 41),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 15),
                        child: Text(
                          'Enviar/Receber',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: ButtonTheme(
                minWidth: 200.0,
                height: 60,
                child: RaisedButton(
                  color: Colors.grey.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Perfil(
                                username: user,
                              )),
                    ),
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 227, 94, 41),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 15),
                        child: Text(
                          'Perfil',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
