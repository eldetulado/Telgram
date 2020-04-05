import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {

  ItemList({
    this.pathImage,
    this.title,
    this.subTitle,
    this.hour,
    this.nroMessages,
  });

  final String pathImage;
  final String title;
  final String subTitle;
  final String hour;
  final int nroMessages;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              _avatar(),
              _titleDetailGroup(),
            ],
          ),
        ),
        Divider(height: 1, indent: 75),
      ],
    );
  }

  Widget _titleDetailGroup() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(flex: 3, child: _titleSubtitle()),
          Flexible(child: _dateNroMessages()),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Container(
      margin: EdgeInsets.only(left: 4, right: 8),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(pathImage),
      ),
    );
  }

  Widget _titleSubtitle() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          maxLines: 1,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          subTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget _dateNroMessages() {
    return Container(
      padding: EdgeInsets.only(right: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            hour,
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue,
            ),
            padding: EdgeInsets.all(6),
            child: Text(
              nroMessages.toString(),
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
