import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PANNEAU extends StatefulWidget {
  const PANNEAU({super.key});

  @override
  State<PANNEAU> createState() => _PANNEAUState();
}

class _PANNEAUState extends State<PANNEAU> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.15,
              top: 20,
              right: size.width * 0.15,
              bottom: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('SE DIO CLICK AL CONTENEDOR');
                        });
                      },
                      child: Container(
                        color: Colors.green,
                        width: size.width * 0.2,
                        height: size.height * 0.3,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('SE DIO CLICK AL CONTENEDOR');
                        });
                      },
                      child: Container(
                        color: Colors.yellow,
                        width: size.width * 0.1,
                        height: size.height * 0.3,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('SE DIO CLICK AL CONTENEDOR');
                        });
                      },
                      child: Container(
                        color: Colors.red,
                        width: size.width * 0.1,
                        height: size.height * 0.3,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('SE DIO CLICK AL CONTENEDOR');
                        });
                      },
                      child: Container(
                        color: Colors.grey,
                        width: size.width * 0.05,
                        height: size.height * 0.3,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('SE DIO CLICK AL CONTENEDOR');
                        });
                      },
                      child: Container(
                        color: Colors.blue,
                        width: size.width * 0.05,
                        height: size.height * 0.3,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('SE DIO CLICK AL CONTENEDOR');
                        });
                      },
                      child: Container(
                        color: Colors.lightBlue,
                        width: size.width * 0.05,
                        height: size.height * 0.3,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('SE DIO CLICK AL CONTENEDOR');
                        });
                      },
                      child: Container(
                        color: Colors.orange,
                        width: size.width * 0.05,
                        height: size.height * 0.3,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
