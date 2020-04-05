import 'package:clase_regalo/models/group_model.dart';
import 'package:clase_regalo/widget/drawer.dart';
import 'package:clase_regalo/widget/item_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final String name = 'home_page';

  final _listGroup = GroupModel.fakeData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: MyDrawer(),
      body: _buildList(),
      floatingActionButton: _buildFAB(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('Telegram'),
      actions: <Widget>[
        Icon(Icons.search),
        SizedBox(width: 12),
      ],
    );
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: _listGroup.length,
      itemBuilder: (context, i) => ItemList(
        pathImage: _listGroup[i].pathImage,
        title: _listGroup[i].title,
        subTitle: _listGroup[i].subTitle,
        hour: _listGroup[i].hour,
        nroMessages: _listGroup[i].nroMessages,
      ),
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      child: Icon(Icons.create, color: Colors.white),
      onPressed: (){
        // TODO: Search groups
      },
    );
  }

  }
