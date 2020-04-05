import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>
    with SingleTickerProviderStateMixin {
  bool sw = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(child: Text('O')),
            accountName: Text('Oso'),
            accountEmail: Text('+591 (6)990-0000'),
            onDetailsPressed: () {
              print('hola mundo');
              setState(() {
                sw = !sw;
              });
            },
          ),
          AnimatedSize(
            vsync: this,
            duration: Duration(milliseconds: 500),
            child: sw
                ? Container()
                : Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(dense: true, leading: CircleAvatar(child: Text('O'))),
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
            leading: Icon(Icons.people, size: 28),
            title: Text('Nuevo grupo'),
          ),
          ListTile(
            leading: Icon(Icons.lock, size: 28),
            title: Text('Nuevo chat secreto'),
          ),
          ListTile(
            leading: Icon(Icons.people, size: 28),
            title: Text('Nuevo canal'),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 28),
            title: Text('Contactos'),
          ),
          ListTile(
            leading: Icon(Icons.call, size: 28),
            title: Text('Llamadas'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark, size: 28),
            title: Text('Mensajes guardados'),
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 28),
            title: Text('Ajustes'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.group_add, size: 28),
            title: Text('Invitar amigos'),
          ),
          ListTile(
            leading: Icon(Icons.help, size: 28),
            title: Text('Preguntas frecuentes'),
          ),
        ],
      ),
    );
  }
}
