import 'package:flutter/material.dart';
import 'package:sdm_fatores_climatologicos/screens/cidades_list.dart';
import 'package:sdm_fatores_climatologicos/screens/dados_list.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          /*Image.network(
                  "https://media.istockphoto.com/photos/severe-weather-map-forecast-picture-id468526566")*/
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/logo_inicial.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              width: double.maxFinite,
              child: RaisedButton(
                child: const Text("Login", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CidadesList(),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
