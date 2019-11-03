import 'package:flutter/material.dart';

final styleText = TextStyle(color: Colors.white, fontSize: 36);

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pageOne(),
        _pageTwo(),
      ],
    ));
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _background(),
        _image(),
        _texts(),
      ],
    );
  }

  Widget _background() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(85, 194, 221, 1),
    );
  }

  Widget _image() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texts() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            '11',
            style: styleText,
          ),
          Text(
            'Miercoles',
            style: styleText,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _pageTwo() {
    return Stack(
      children: <Widget>[
        _background(),
        Center(
          child: Container(
            width: 250,
            child: FloatingActionButton(
              child: Text('Welcome'),
              onPressed: () {
                print('Go to the point');
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
