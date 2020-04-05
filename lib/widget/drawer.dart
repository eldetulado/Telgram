import 'package:clase_regalo/main.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool sw = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(child: Text('O')),
            otherAccountsPictures: <Widget>[
              Transform.rotate(
                angle: Math.pi * 2.25,
                child: Container(
                  child: IconButton(
                    icon: Icon(Icons.brightness_3, color: Colors.white),
                    onPressed: () {
                      // TODO: circular reveal animation
                      setState(() {
                        MyApp.switchTheme(!MyApp.swTheme);
                      });
                    },
                  ),
                ),
              ),
            ],
            margin: EdgeInsets.zero,
            accountName: Text('Oso'),
            accountEmail: Text('+591 (6)990-0000'),
            onDetailsPressed: () {
              setState(() {
                sw = !sw;
              });
            },
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: !sw ? 100 : 0,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                      dense: true, leading: CircleAvatar(child: Text('O'))),
                  ListTile(
                    dense: true,
                    leading: Icon(Icons.add),
                    title: Text('Adicionar cuenta'),
                  ),
                  Divider(height: 1),
                ],
              ),
            ),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.people, size: 28),
            title: Text('Nuevo grupo'),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.lock, size: 28),
            title: Text('Nuevo chat secreto'),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.people, size: 28),
            title: Text('Nuevo canal'),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.person, size: 28),
            title: Text('Contactos'),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.call, size: 28),
            title: Text('Llamadas'),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.bookmark, size: 28),
            title: Text('Mensajes guardados'),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.settings, size: 28),
            title: Text('Ajustes'),
          ),
          Divider(),
          ListTile(
            dense: true,
            leading: Icon(Icons.group_add, size: 28),
            title: Text('Invitar amigos'),
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.help, size: 28),
            title: Text('Preguntas frecuentes'),
          ),
        ],
      ),
    );
  }
}
