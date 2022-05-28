import 'package:flutter/material.dart';
import 'contacto.dart';

class Mensajes extends StatelessWidget {
  Mensajes({Key? key}) : super(key: key);

  //Lista de tipo Contacto que simulará la lista de mensajes
  //predefinida para usar de ejemplo
  //se mostrará una lista de 10 conversaciones en la pantalla de chats
  final List<Contacto> _contactos = [
    Contacto("Daniela", "Hola, como estás?"),
    Contacto("Jeffrey", "Te veo luego"),
    Contacto("Mamá", "LLegaste bien?"),
    Contacto("Jordy", "Ok, gracias"),
    Contacto("Tío Harold", "Vale te cuidas"),
    Contacto("Kevin", "Buenas noches"),
    Contacto("Lisseth", "Irás a clases"),
    Contacto("Wesley", "Está bien, te escribo luego"),
    Contacto("Papá", "Ok hija nos vemos"),
    Contacto("Lisa", "Buen día"),
    Contacto("Name", "*****MESSAGE*****"),
    Contacto("Name", "*****MESSAGE*****"),
    Contacto("Name", "*****MESSAGE*****"),
    Contacto("Name", "*****MESSAGE*****"),
    Contacto("Name", "*****MESSAGE*****")
  ];

  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)!.settings.arguments as Contacto;

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.message)),
      body: ListView.builder(
          itemCount: _contactos.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                //ICONO QUE SIMULA FOTO DE PERFIL DEL CONTACTO
                leading: const Icon(Icons.contact_phone),
                title: Text(_contactos[index].nombre),
                subtitle: Text(_contactos[index].contenido));
          }),
    );
  }
}
