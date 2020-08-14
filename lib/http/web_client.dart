import 'dart:convert';

import 'package:http/http.dart';
import 'package:http_interceptor/http_client_with_interceptor.dart';
import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:sdm_fatores_climatologicos/models/dados_meteorologicos.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print('Request');
    print('url: ${data.url}');
    print('Method: ${data.method}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print('Response');
    print('status: ${data.statusCode}"');
    print('body: ${data.body}');
    return data;
  }
}

Future<List<DadosMeteorologicos>> find(local) async {

  final Client client = HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);

  final Response response = await client.get(
      'https://5f36fdd1bbfd1e00160bee23.mockapi.io/araraquara/${local}');

  List<dynamic> listaDecoded = jsonDecode(response.body);
  final List<DadosMeteorologicos> listaDados = List();

  for(Map<String, dynamic> element in listaDecoded) {
    listaDados.add(DadosMeteorologicos(element['nome'], element['data'], element['valor']));
  }

  return listaDados;
}
