class DadosMeteorologicos {
  final String nome;
  final String data;
  final String valor;

  DadosMeteorologicos(this.nome, this.data, this.valor);

  @override
  String toString() {
    return 'DadosMeteorologicos{nome: $nome, data: $data, valor: $valor}';
  }
}
