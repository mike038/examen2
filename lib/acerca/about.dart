import 'package:flutter/material.dart';
import 'send_mail.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacto"),
      ),
      body: Container(
          child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text(
              'Miguel Aguilar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.image,
              size: 180,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Text(
                'Estudiante de ingeniria en sistemas, cursando la materia de programacion de dispositivos moviles.\nLa aplicacion tiene como finalidad el ayudar a los estudiantes a tomar notas de una manera mas sencilla.',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              child: Text('Contactar'),
              color: Colors.blue,
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SendEmail(),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
