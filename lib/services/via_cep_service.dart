import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:portal_talentos_frontend/models/via_cep_model.dart';

class ViaCepService {
  Dio dio = Dio();
  Future<ViaCep?> getAddressByCep(String cep) async {
    try {
      Response retorno = await dio.get('https://viacep.com.br/ws/$cep/json/');
      if (retorno.data.isEmpty) throw Exception();
      ViaCep viaCep = ViaCep.fromJson(retorno.data);
      return viaCep;
    } catch (e) {
      return null;
    }
  }
}
