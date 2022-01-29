import 'cidade_model.dart';
import 'estado_model.dart';

class Endereco {
  late String cep;
  String? complemento;
  late String bairro;
  late String logradouro;
  late int numero;
  late Cidade cidade;
  late Estado estado;

  Endereco({required this.cep, this.complemento, required this.bairro, required this.logradouro, required this.numero, required this.cidade, required this.estado});

  Endereco.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    logradouro = json['logradouro'];
    numero = json['numero'];
    cidade = Cidade.fromJson(json['cidade']);
    estado = Estado.fromJson(json['estado']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cep'] = cep;
    data['complemento'] = complemento;
    data['bairro'] = bairro;
    data['logradouro'] = logradouro;
    data['numero'] = numero;
    data['cidade'] = cidade.toJson();
    data['estado'] = estado.toJson();
    return data;
  }
}
