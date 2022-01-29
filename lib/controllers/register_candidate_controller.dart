import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portal_talentos_frontend/models/candidato_model.dart';
import 'package:portal_talentos_frontend/models/cidade_model.dart';
import 'package:portal_talentos_frontend/models/curso_model.dart';
import 'package:portal_talentos_frontend/models/endereco_model.dart';
import 'package:portal_talentos_frontend/models/estado_model.dart';
import 'package:portal_talentos_frontend/models/formacao_model.dart';
import 'package:portal_talentos_frontend/models/habilidade_model.dart';
import 'package:portal_talentos_frontend/models/instituicao_model.dart';
import 'package:portal_talentos_frontend/models/via_cep_model.dart';
import 'package:portal_talentos_frontend/services/candidato_service.dart';
import 'package:portal_talentos_frontend/services/via_cep_service.dart';

class RegisterCandidatCointroller extends ChangeNotifier {
  TextEditingController inputNomeCandidato = TextEditingController();
  TextEditingController inputEmailCandidato = TextEditingController();
  TextEditingController inputTelefoneCandidato = TextEditingController();
  TextEditingController inputDataNascimentoCandidato = TextEditingController();
  //
  TextEditingController inputLogradouroCandidato = TextEditingController();
  TextEditingController inputNumeroCandidato = TextEditingController();
  TextEditingController inputComplementoCandidato = TextEditingController();
  TextEditingController inputEstadoCandidato = TextEditingController();
  TextEditingController inputCidadeCandidato = TextEditingController();
  TextEditingController inputCepCandidato = TextEditingController();
  TextEditingController inputBairroCandidato = TextEditingController();
  //
  TextEditingController inputHabilidadeCandidato = TextEditingController();
  //
  TextEditingController inputInstituicaoCandidato = TextEditingController();
  TextEditingController inputCursoCandidato = TextEditingController();
  TextEditingController inputConclusaoCandidato = TextEditingController();
  //
  final formKey = GlobalKey<FormState>();

  Future<void> atribuiValorCep() async {
    try {
      ViaCep? viaCep = await ViaCepService().getAddressByCep(inputCepCandidato.text);
      // inputLogradouroCandidato.clear();
      // inputComplementoCandidato.clear();
      // inputEstadoCandidato.clear();
      // inputCidadeCandidato.clear();
      // inputBairroCandidato.clear();
      // inputCepCandidato.clear();
      if (viaCep == null) return;
      //
      inputLogradouroCandidato.text = viaCep.logradouro ?? "";
      inputComplementoCandidato.text = viaCep.complemento ?? "";
      inputEstadoCandidato.text = viaCep.uf ?? "";
      inputCidadeCandidato.text = viaCep.localidade ?? "";
      inputBairroCandidato.text = viaCep.bairro ?? "";
      inputCepCandidato.text = viaCep.cep ?? "";
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<dynamic> saveCandidate(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Verifique todos os campos obrigatórios'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {},
        ),
      ));
    }
    Cidade cidade = Cidade(nome: inputCidadeCandidato.text);
    Estado estado = Estado(ufSigla: inputEstadoCandidato.text);
    Endereco endereco = Endereco(cep: inputCepCandidato.text, bairro: inputBairroCandidato.text, logradouro: inputLogradouroCandidato.text, numero: int.tryParse(inputNumeroCandidato.text) ?? -1, cidade: cidade, estado: estado);
    Habilidade habilidade = Habilidade(descricao: inputHabilidadeCandidato.text);
    List<Habilidade> habilidades = [habilidade];
    Curso curso = Curso(nome: inputCursoCandidato.text);
    Instituicao instituicao = Instituicao(nome: inputInstituicaoCandidato.text);
    Formacao formacao = Formacao(conclusao: inputConclusaoCandidato.text, curso: curso, instituicao: instituicao);
    Candidato candidato = Candidato(
      name: inputNomeCandidato.text,
      dataNascimento: inputDataNascimentoCandidato.text,
      email: inputEmailCandidato.text,
      telefone: inputTelefoneCandidato.text,
      endereco: endereco,
      habilidades: habilidades,
      formacao: formacao,
    );
    bool candidatoCriado = await CandidatoService().createCandidate(candidato);
    if (!candidatoCriado) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Candidato não foi criado com sucesso'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {},
        ),
      ));
    }
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Candidato foi criado com sucesso'),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    ));
  }
}
