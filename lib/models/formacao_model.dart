import 'package:portal_talentos_frontend/models/instituicao_model.dart';

import 'curso_model.dart';

class Formacao {
  late String conclusao;
  late Curso curso;
  late Instituicao instituicao;

  Formacao({required this.conclusao, required this.curso, required this.instituicao});

  Formacao.fromJson(Map<String, dynamic> json) {
    conclusao = json['conclusao'];
    curso = Curso.fromJson(json['curso']);
    instituicao = Instituicao.fromJson(json['instituicao']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['conclusao'] = conclusao;
    data['curso'] = curso.toJson();
    data['instituicao'] = instituicao.toJson();
    return data;
  }
}
