import 'package:flutter/material.dart';
import 'package:pinch_zoom_image/pinch_zoom_image.dart';

class Detalle extends StatefulWidget {
  final String imageUrl;
  final String materia;
  final String descripcion;

  Detalle(
      {Key key,
      @required this.imageUrl,
      @required this.materia,
      @required this.descripcion})
      : super(key: key);

  @override
  _DetalleState createState() => _DetalleState();
}

class _DetalleState extends State<Detalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detalle'),
        ),
        body: Container(
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                PinchZoomImage(
                  image: Image.network(
                    widget.imageUrl ?? "https://via.placeholder.com/150",
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Materia',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${widget.materia}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Descripcion',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${widget.descripcion}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ));
  }
}
