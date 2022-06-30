// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Chat {
  String nome;
  int tempo;
  bool online;

  Chat(this.nome, this.tempo, this.online);
}

class ChatBar extends StatefulWidget {
  const ChatBar({Key? key}) : super(key: key);

  @override
  State<ChatBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ChatBar> {
  @override
  Widget build(BuildContext context) {
    Chat c1 = Chat('Diogo', 5, false);
    Chat c2 = Chat('Monteiro', 0, true);
    Chat c3 = Chat('Simon', 10, false);
    final chatList = [c1, c2, c3];

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
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
            child: Row(
              children: <Widget>[
                Text(
                  'Chat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 225),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  child: Icon(
                    Icons.person_add,
                    color: Color.fromARGB(255, 227, 94, 41),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  child: Icon(
                    Icons.wechat_outlined, // mudar para icon buttons
                    color: Color.fromARGB(255, 227, 94, 41),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            child: chatList.isEmpty
                ? Column(
                    children: [
                      Text('Nenhum chat começado'),
                    ],
                  )
                : ListView.builder(
                    itemCount: chatList.length,
                    itemBuilder: (context, index) {
                      final ch = chatList[index];
                      String texto = '';
                      if (ch.online == true) {
                        texto = 'Online agora';
                      } else {
                        texto = 'Online há ${ch.tempo} minutos';
                      }
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Card(
                              color: Colors.black,
                              child: Row(
                                children: <Widget>[
                                  Image(
                                    height: 90,
                                    width: 90,
                                    image: AssetImage(
                                      'assets\\LogoMiniSemBackground.png',
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        ch.nome,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        texto,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}
