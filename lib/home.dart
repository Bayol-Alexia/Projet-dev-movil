import 'package:flutter/material.dart';
import 'package:proyecto/constantes.dart' as cons;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List mensajes = [];

  @override
  void initState() {
    mensajes.add("1#Nuevo mensaje 1#usuario 1#Texto del mensaje");
    mensajes.add("2#Nuevo mensaje 2#usuario 2#Texto del mensaje");
    mensajes.add("3#Nuevo mensaje 3#usuario 3#Texto del mensaje");
    mensajes.add("4#Nuevo mensaje 4#usuario 4#Texto del mensaje");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(
        children: [
          ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: mensajes.length,
              itemBuilder: (BuildContext context, int index) {
                var datos = mensajes[index].split('#');
                return cardWidget(
                    texto: '${datos[1]}',
                    nombre: '${datos[2]}',
                    mensaje: '${datos[3]}',
                    showOrWrite: true,
                    size: 25,);
              }),
          /*SingleChildScrollView(
              child:
              Column(
                children: [
                  cardWidget(texto: "NUEVA MENSAJE 1",showOrWrite: true, size: 25),
                  cardWidget(texto: "NUEVA MENSAJE 10",showOrWrite: true, size: 50),
                  cardWidget(texto: "NUEVA MENSAJE 100",showOrWrite: false, size: 15),
                  cardWidget(texto: "NUEVA MENSAJE 1000",showOrWrite: true, size: 5),
                  cardWidget(texto: "NUEVA MENSAJE 1",showOrWrite: true, size: 25),
                  cardWidget(texto: "NUEVA MENSAJE 10",showOrWrite: true, size: 50),
                  cardWidget(texto: "NUEVA MENSAJE 100",showOrWrite: false, size: 15),
                  cardWidget(texto: "NUEVA MENSAJE 1000",showOrWrite: true, size: 5),
                ],
            )
          )*/
        ],
      ),
    ]));
  }
}

class cardWidget extends StatelessWidget {
  const cardWidget({
    super.key,
    required this.texto,
    required this.nombre,
    required this.mensaje,
    required this.showOrWrite,
    required this.size,
  });

  final String texto;
  final String nombre;
  final String mensaje;
  final bool showOrWrite;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cons.blanco,
      elevation: 15,
      child: Padding(
        padding: EdgeInsets.all(size),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(texto),
              ),
              Expanded(
                flex: 5,
                child: Text(nombre),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Text(mensaje),
              ),
              Expanded(
                flex: 4,
                child: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {}
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
