import 'package:flutter/material.dart';
import 'contacto.dart';

class Estados extends StatelessWidget {
  Estados({Key? key}) : super(key: key);

  final List<Contacto> _contactos = [
    Contacto("Papá", "justo ahora"),
    Contacto("Kevin", "hace 12 minutos"),
    Contacto("Jordy", "hace 45 minutos"),
    Contacto("Lisseth", "Hoy 5:02 p. m."),
    Contacto("Wesley", "Hoy 3:34 p.m"),
    Contacto("Mamá", "Hoy 1:36 p. m."),
    Contacto("Tío Harold", "Hoy 11:32 a. m."),
    Contacto("Daniela", "Hoy 9:53 a. m."),
    Contacto("Jeffrey", "Ayer 10:11 p. m.")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, //
            child: const Icon(Icons.camera_alt) //
            ),
        body: ListView.builder(
            itemCount: _contactos.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  //ICONO QUE SIMULA FOTO DE PERFIL DEL CONTACTO
                  leading: const Icon(Icons.motion_photos_on),
                  //Muestra el nombre del contacto
                  title: Text(_contactos[index].nombre),
                  //texto de ejemplo para simular fecha y hora de actualizacion de estado
                  subtitle: Text(_contactos[index].contenido));
            }));
  }
}
