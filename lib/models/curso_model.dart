// ignore_for_file: unnecessary_new

class Curso {
  late String nome;
  String? descricao;

  Curso({required this.nome, this.descricao});

  Curso.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['descricao'] = descricao;
    return data;
  }
}
