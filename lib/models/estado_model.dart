// ignore_for_file: prefer_collection_literals

class Estado {
  late String ufSigla;
  String? ufTexto;

  Estado({required this.ufSigla, this.ufTexto}) {
    ufTexto ??= "";
  }

  Estado.fromJson(Map<String, dynamic> json) {
    ufSigla = json['ufSigla'];
    ufTexto = json['ufTexto'];
  }

  Map<String, dynamic> toJson() {
    // ignore: unnecessary_new
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ufSigla'] = ufSigla;
    data['ufTexto'] = ufTexto;
    return data;
  }
}
