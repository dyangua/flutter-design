import 'dart:math';

import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _bgApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _gridButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bgApp() {
    final grandiet = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 10),
          ])),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[grandiet, Positioned(top: -100, child: pinkBox)],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Text(
              'Hero Class',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Go to class with your favorite Hero',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gridButtons() {
    return Table(
      children: [
        TableRow(children: [
          _btnRounded(),
          _btnRounded(),
        ]),
        TableRow(children: [
          _btnRounded(),
          _btnRounded(),
        ]),
        TableRow(children: [
          _btnRounded(),
          _btnRounded(),
        ]),
        TableRow(children: [
          _btnRounded(),
          _btnRounded(),
        ]),
      ],
    );
  }

  Widget _btnRounded() {
    return Container(
      height: 180,
      margin: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 35,
            child: Icon(
              Icons.swap_calls,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Icon',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(62, 66, 107, 0.7)),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1)))),
      child: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Basic')),
        BottomNavigationBarItem(icon: Icon(Icons.score), title: Text('Scroll')),
        BottomNavigationBarItem(icon: Icon(Icons.grid_on), title: Text('Grid')),
      ]),
    );
  }
}
