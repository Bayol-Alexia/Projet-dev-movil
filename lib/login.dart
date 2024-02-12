import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final user = TextEditingController();
  final password = TextEditingController();
  bool bandera = false;

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
        /*children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 25, color: Colors.red),
                )
              ],
            ),
            TextFormField(
              controller: user,
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1, style: BorderStyle.none)),
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  labelText: 'Usuario'),
            ),
            SizedBox(height: size.height * 0.05,),
            TextFormField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(width: 1, style: BorderStyle.none)),
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                  labelText: 'Contrasena'),
            ),
            SizedBox(height: size.height * 0.05,),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    print(user.text);
                    print(password.text);
                    if(user.text == 'alexia' && password.text == '123456'){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    } else {
                      bandera = true;
                    }
                  });
                },
                child: const Text('INGRESAR'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1152CC),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                fixedSize: Size(size.width*0.6, 45)
              )
            ),
            SizedBox(height: size.height * 0.05,),
            bandera ? Text(
              /*'User: ${user.text}\n'
                  'Password: ${password.text}'*/
              'USUARIO O CONTRASENA INCORRECTOS',
              style: TextStyle(color: Colors.red),
            ) : Container()*/
      ),
    );
  }
}
