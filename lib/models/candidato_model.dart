import 'endereco_model.dart';
import 'formacao_model.dart';
import 'habilidade_model.dart';

class Candidato {
  late String name;
  late String dataNascimento;
  late String email;
  late String telefone;
  late Endereco endereco;
  late List<Habilidade> habilidades;
  late Formacao formacao;

  Candidato({required this.name, required this.dataNascimento, required this.email, required this.telefone, required this.endereco, required this.habilidades, required this.formacao});

  Candidato.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dataNascimento = json['dataNascimento'];
    email = json['email'];
    telefone = json['telefone'];
    endereco = Endereco.fromJson(json['endereco']);
    if (json['habilidades'] != null) {
      habilidades = <Habilidade>[];
      json['habilidades'].forEach((v) {
        habilidades.add(Habilidade.fromJson(v));
      });
    }
    formacao = Formacao.fromJson(json['formacao']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['dataNascimento'] = dataNascimento;
    data['email'] = email;
    data['telefone'] = telefone;
    data['endereco'] = endereco.toJson();
    data['habilidades'] = habilidades.map((v) => v.toJson()).toList();
    data['formacao'] = formacao.toJson();
    return data;
  }
}
