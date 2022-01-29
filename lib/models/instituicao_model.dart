class Instituicao {
  late String nome;
  String? descricao;

  Instituicao({required this.nome, this.descricao});

  Instituicao.fromJson(Map<String, dynamic> json) {
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
