import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtnome = TextEditingController();
  TextEditingController txtassunto = TextEditingController();
  TextEditingController txtdata = TextEditingController();

  void exibirteladecadastro() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Cadastrar nova nota'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: txtnome,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Digite o nome da nota',
                ),
              ),
              TextField(
                controller: txtassunto,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Assunto',
                  hintText: 'Digite o assunto',
                ),
              ),
              TextField(
                controller: txtdata,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Data',
                  hintText: 'Digite a data',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
            TextButton(onPressed: () {}, child: Text('Salvar')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestão de notas'),
        backgroundColor: Colors.orange,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          exibirteladecadastro();
        },
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}
