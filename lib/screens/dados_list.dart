import 'package:flutter/material.dart';
import 'package:sdm_fatores_climatologicos/http/web_client.dart';
import 'package:sdm_fatores_climatologicos/models/dados_meteorologicos.dart';

class DadosList extends StatelessWidget {
  String cidade;

  DadosList(this.cidade);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista De Cidades"),
      ),
      body: FutureBuilder<List<DadosMeteorologicos>>(
          initialData: List(),
          future: find(this.cidade),
          // ignore: missing_return
          builder: (Context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                // TODO: Handle this case.
                break;
              case ConnectionState.waiting:
                return Text('Aguarde....');
                break;
              case ConnectionState.active:
                // TODO: Handle this case.
                break;
              case ConnectionState.done:
                final List<DadosMeteorologicos> lista = snapshot.data;
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final DadosMeteorologicos dados = lista[index];
                    return _DadosItem(dados);
                  },
                  itemCount: lista.length,
                );
                break;
            }
            return Text('Unknown error');
          }),
    );
  }
}

class _DadosItem extends StatelessWidget {
  final DadosMeteorologicos dados;

  _DadosItem(this.dados);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          dados.valor,
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        subtitle: Text(
          dados.data.toString(),
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
