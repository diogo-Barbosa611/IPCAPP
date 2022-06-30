// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';

class EnviarReceba extends StatefulWidget {
  const EnviarReceba({Key? key}) : super(key: key);

  @override
  State<EnviarReceba> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EnviarReceba> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 120,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20),
                    child: Text(
                      'Comunicação',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'sem contacto',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 50),
            child: Text(
              'Ficheiros',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            child: ButtonTheme(
              minWidth: 130.0,
              height: 50,
              child: RaisedButton(
                color: Colors.grey.withOpacity(0.2),
                elevation: 10,
                onPressed: () => {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.save,
                      color: Color.fromARGB(255, 227, 94, 41),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                      child: Text(
                        'Enviar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ButtonTheme(
              minWidth: 150.0,
              height: 50,
              child: RaisedButton(
                color: Colors.grey.withOpacity(0.2),
                elevation: 10,
                onPressed: () => {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.file_download_rounded,
                      color: Color.fromARGB(255, 227, 94, 41),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                      child: Text(
                        'Receber',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
