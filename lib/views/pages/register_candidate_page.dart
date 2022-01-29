import 'package:flutter/material.dart';
import 'package:portal_talentos_frontend/controllers/register_candidate_controller.dart';
import 'package:portal_talentos_frontend/views/componentWidgets/input_register_candidate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterCandidatePage extends StatefulWidget {
  const RegisterCandidatePage({Key? key}) : super(key: key);

  @override
  _RegisterCandidatePageState createState() => _RegisterCandidatePageState();
}

class _RegisterCandidatePageState extends State<RegisterCandidatePage> {
  late RegisterCandidatCointroller _registerCandidatCointroller;

  @override
  void initState() {
    _registerCandidatCointroller = RegisterCandidatCointroller();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if (kIsWeb) {
    //   document.addEventListener('keydown', (event) => {if (event.type == 'tab') event.preventDefault()});
    // }

    return Material(
      child: Padding(
        padding: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 1.h),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.w, left: 1.w),
                    child: Form(
                      key: _registerCandidatCointroller.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Nome do Candidato",
                                  hintText: "Insira o Nome",
                                  controller: _registerCandidatCointroller.inputNomeCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Nome";
                                  }),
                              SizedBox(width: 5.w),
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "E-mail do Candidato",
                                  hintText: "Insira o E-mail",
                                  controller: _registerCandidatCointroller.inputEmailCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo E-mail";
                                  }),
                            ],
                          ),
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Telefone do Candidato",
                                  hintText: "Insira o Telefone",
                                  controller: _registerCandidatCointroller.inputTelefoneCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Telefone";
                                  }),
                              SizedBox(width: 5.w),
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Data de Nascimento do Candidato",
                                  hintText: "Insira a Data de Nascimento",
                                  controller: _registerCandidatCointroller.inputDataNascimentoCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Data de Nascimento";
                                  }),
                            ],
                          ),
                          const Divider(),
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "CEP",
                                  hintText: "Insira o CEP",
                                  controller: _registerCandidatCointroller.inputCepCandidato,
                                  onFocusChange: (bool? hasFocus) async {
                                    if (hasFocus == false) {
                                      await _registerCandidatCointroller.atribuiValorCep();
                                    }
                                  },
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo CEP";
                                  }),
                              SizedBox(width: 5.w),
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Estado",
                                  hintText: "Insira o Estado",
                                  controller: _registerCandidatCointroller.inputEstadoCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Estado";
                                  }),
                            ],
                          ),
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Cidade",
                                  hintText: "Insira a Cidade",
                                  controller: _registerCandidatCointroller.inputCidadeCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Cidade";
                                  }),
                              SizedBox(width: 5.w),
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Complemento",
                                  hintText: "Insira o Complemento",
                                  controller: _registerCandidatCointroller.inputBairroCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Complemento";
                                  }),
                            ],
                          ),
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Logradouro",
                                  hintText: "Insira o Logradouro",
                                  controller: _registerCandidatCointroller.inputLogradouroCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Logradouro";
                                  }),
                              SizedBox(width: 5.w),
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Número",
                                  hintText: "Insira o Número",
                                  controller: _registerCandidatCointroller.inputNumeroCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Número";
                                  }),
                            ],
                          ),
                          const Divider(),
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Habilidades do Candidato",
                                  hintText: "Insira a Habilidade",
                                  controller: _registerCandidatCointroller.inputHabilidadeCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Habilidades";
                                  }),
                            ],
                          ),
                          const Divider(),
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Instituição",
                                  hintText: "Insira a Instituição",
                                  controller: _registerCandidatCointroller.inputInstituicaoCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Instituição";
                                  }),
                              SizedBox(width: 5.w),
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Curso",
                                  hintText: "Insira o Curso",
                                  controller: _registerCandidatCointroller.inputCursoCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Curso";
                                  }),
                            ],
                          ),
                          Wrap(
                            children: [
                              InputRegisterCandidate(
                                  width: 25.w,
                                  tituloInput: "Conclusão",
                                  hintText: "Insira a Conclusão da Formação",
                                  controller: _registerCandidatCointroller.inputConclusaoCandidato,
                                  validator: (String? value) {
                                    if (value!.trim().isEmpty) return "Preencha o campo Conclusão da Formação";
                                  }),
                              SizedBox(width: 5.w),
                            ],
                          ),
                          // Align(
                          //   alignment: Alignment.bottomRight,
                          //   child: Padding(
                          //     padding: EdgeInsets.only(left: 5.w),
                          //     child: ElevatedButton(
                          //       style: ElevatedButton.styleFrom(
                          //         primary: Colors.purple,
                          //         // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          //         textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          //       ),
                          //       onPressed: () {},
                          //       child: Text("Adicionar"),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  child: const Icon(Icons.save),
                  onPressed: () async => await _registerCandidatCointroller.saveCandidate(context),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
