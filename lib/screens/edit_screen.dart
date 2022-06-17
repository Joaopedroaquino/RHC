import 'package:flutter/material.dart';
import 'package:rhcweb/shared/themes/app_text_styles.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  int _activeStepIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController nomeapresentacao = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController emailpessoal = TextEditingController();
  TextEditingController filhos = TextEditingController();
  TextEditingController escolaridade = TextEditingController();
  TextEditingController escolaridaderg = TextEditingController();
  TextEditingController cidade = TextEditingController();
  TextEditingController bairro = TextEditingController();
  TextEditingController logradouro = TextEditingController();

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.indexed : StepState.editing,
          isActive: _activeStepIndex >= 0,
          title: const Text('Dados do colaborador'),
          content: Container(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      'Dados pessoais',
                      style: TextStyles.input,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Nome completo*'),
                            subtitle: TextFormField(
                              
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Nome apresentacao*'),
                            subtitle: TextFormField(
                             
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('CPF*'),
                            subtitle: TextFormField(
                             
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Email pessoal*'),
                            subtitle: TextFormField(
                             
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Quantidade de filhos*'),
                            subtitle: TextFormField(
                              
                            ),
                          ),
                        ),
                        
                        
                        
                      ],
                    ),
                      Text(
                      'Dados empresariais',
                      style: TextStyles.input,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Email grupo brisanet*'),
                            subtitle: TextFormField(
                              
                            ),
                          ),
                        ),
                         Expanded(
                          child: ListTile(
                            title: Text('Email time brisa*'),
                            subtitle: TextFormField(
                             
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Empresa*'),
                            subtitle: TextFormField(
                             
                            ),
                          ),
                        ),
                       
                        
                        
                        
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Setor*'),
                            subtitle: TextFormField(
                              
                            ),
                          ),
                        ),
                         Expanded(
                          child: ListTile(
                            title: Text('Funcao informada*'),
                            subtitle: TextFormField(
                              
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Superior imediato*'),
                            subtitle: TextFormField(
                             
                            ),
                          ),
                        ),
                       
                        
                        
                        
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Tipo de vinculo com a empresa*'),
                            subtitle: TextFormField(
                             
                            ),
                          ),
                        ),
                        
                        
                        
                      ],
                    ),
                    Row(
                      
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Qual email sera utilizado no login*'),
                            subtitle: TextFormField(
                            
                             
                            ),
                          ),
                        ),
                        
                        
                        
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.indexed : StepState.editing,
            isActive: _activeStepIndex >= 1,
            title: const Text('Formacao academica'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: escolaridade,
                   
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: escolaridaderg,
                    decoration: const InputDecoration(
                      labelText: 'Escolaridade de registro',
                    ),
                  ),
                ],
              ),
            )),
        Step(
            state:
                _activeStepIndex <= 2 ? StepState.indexed : StepState.editing,
            isActive: _activeStepIndex >= 2,
            title: const Text('Localizacao de trabalho'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: cidade,
                    decoration: const InputDecoration(
                      labelText: 'Cidade',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: bairro,
                    decoration: const InputDecoration(
                      labelText: 'Bairro',
                    ),
                  ),
                  TextField(
                    controller: logradouro,
                    decoration: const InputDecoration(
                      labelText: 'Logradouro',
                    ),
                  ),
                ],
              ),
            )),
        Step(
            state:
                _activeStepIndex <= 3 ? StepState.indexed : StepState.editing,
            isActive: _activeStepIndex >= 3,
            title: const Text('Localizacao Nascimento'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: cidade,
                    decoration: const InputDecoration(
                      labelText: 'Cidade nascimento',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: bairro,
                    decoration: const InputDecoration(
                      labelText: 'Bairro',
                    ),
                  ),
                  TextField(
                    controller: logradouro,
                    decoration: const InputDecoration(
                      labelText: 'Logradouro',
                    ),
                  ),
                ],
              ),
            )),
        Step(
            state:
                _activeStepIndex <= 4 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 4,
            title: const Text('Localizacao Residencial'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: cidade,
                    decoration: const InputDecoration(
                      labelText: 'Cidade residencial',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: bairro,
                    decoration: const InputDecoration(
                      labelText: 'Bairro',
                    ),
                  ),
                  TextField(
                    controller: logradouro,
                    decoration: const InputDecoration(
                      labelText: 'Logradouro',
                    ),
                  ),
                ],
              ),
            )),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            print('Submited');
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }
          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
        elevation: 5,
        controlsBuilder: (BuildContext context, ControlsDetails controls) {
          return Row(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              OutlinedButton(
                onPressed: controls.onStepContinue,
                child: const Text('SALVAR'),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.green,
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                onPressed: controls.onStepCancel,
                child: const Text('VOLTAR'),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 39, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
              const SizedBox(
                width: 600,
              ),
              OutlinedButton(
                onPressed: controls.onStepCancel,
                child: const Text('ANTERIOR'),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 39, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                onPressed: controls.onStepContinue,
                child: const Text('PROXIMO'),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 39, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
