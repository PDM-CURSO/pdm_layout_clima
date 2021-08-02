import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primer app"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        color: Color(0xffeea433),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "San Francisco",
              style: TextStyle(
                fontSize: 32,
                color: Colors.grey[100],
              ),
            ),
            Text(
              "Nublado",
              style: TextStyle(
                color: Colors.grey[200],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.wb_cloudy,
                  color: Color(0xffa4e6e2),
                  size: 64,
                ),
                Text(
                  "19 C",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                color: Colors.yellow,
                child: Text("Actualizar datos"),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text("Actualizando datos del clima..."),
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
