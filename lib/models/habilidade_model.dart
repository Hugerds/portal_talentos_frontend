class Habilidade {
  late String descricao;

  Habilidade({required this.descricao});

  Habilidade.fromJson(Map<String, dynamic> json) {
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['descricao'] = descricao;
    return data;
  }
}
