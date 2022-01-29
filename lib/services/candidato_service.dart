import 'package:dio/dio.dart';
import 'package:portal_talentos_frontend/models/candidato_model.dart';

class CandidatoService {
  Dio dio = Dio();
  Future<bool> createCandidate(Candidato candidato) async {
    try {
      final body = candidato.toJson();
      print(body);
      Response retorno = await dio.post('http://localhost:3001/candidato', data: body);
      if (retorno.statusCode! < 200 && retorno.statusCode! >= 300) throw Exception();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> getAllCandiddatos() async {
    try {
      Response retorno = await dio.get(
        'http://localhost:3001/candidato',
      );
      if (retorno.statusCode! < 200 && retorno.statusCode! >= 300) throw Exception();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
