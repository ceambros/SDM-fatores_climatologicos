import 'package:flutter/material.dart';

class CidadesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista De Cidades"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Fazenda Teste_1"),
              subtitle: Text("Araraquara"),
            ),
          )
        ],
      ),
    );
  }
}
