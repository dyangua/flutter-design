import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300);
  final styleTextIcons = TextStyle(fontSize: 12.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              _createImage(),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: _buildHeadLineInfo()),
              _createActions(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeadLineInfo() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'A day with my Friend',
                style: styleTitle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Spain - Barcelona',
                style: styleSubtitle,
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('41', style: TextStyle(fontSize: 20))
      ],
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/58592/pexels-photo-58592.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        fit: BoxFit.cover,
        height: 300,
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 24,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text.toUpperCase(),
          style: styleTextIcons,
        )
      ],
    );
  }

  _createText() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.' +
            'Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500,' +
            'cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería' +
            ' de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió ' +
            '500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente ',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
