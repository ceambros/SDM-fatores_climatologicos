import 'package:flutter/material.dart';
import 'package:sdm_fatores_climatologicos/screens/dados_list.dart';

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
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DadosList('araraquara'),
                  ),
                ),
              },
              title: Text("Araraquara"),
              subtitle: Text("Fazenda 1"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DadosList('matao'),
                  ),
                ),
              },
              title: Text("Matão"),
              subtitle: Text("Fazenda 1"),
            ),
          )
        ],
      ),
    );
  }
}
