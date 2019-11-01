import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  RegistroPage({Key key}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
            appBar: AppBar(
              title: Text('Nuevo Alumno'),
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Form(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        
                        decoration: InputDecoration(
                            filled: true,
                            icon: Icon(Icons.person),
                            labelText: "Nombre",
                            hintText: "Ingresa tu nombre"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            icon: Icon(Icons.people),
                            labelText: "Carrera",
                            hintText: "Tic's, Agro, IGE..."),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            icon: Icon(Icons.format_list_numbered),
                            labelText: "Telefono",
                            hintText: "123456789"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            icon: Icon(Icons.group),
                            labelText: "Semestre",
                            hintText: "Nivel"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            icon: Icon(Icons.home),
                            labelText: "Nombre de escuela",
                            hintText: "Roque"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                        child: Text(
                          "Registrar",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                        color: Colors.blueAccent,
                      )
                    ],
                  ),
                ),
            
            )));
  }
}
