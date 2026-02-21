import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class NotaHelpers {
  // conectar ao banco de dados

  static late NotaHelpers _databasehelper;
  static late Database _database;

  NotaHelpers._createInstance();

  factory NotaHelpers() {
    if (_databasehelper == null) {
      _databasehelper = NotaHelpers._createInstance();
    }
    return _databasehelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await inicializaBanco();
    }

    return _database;
  }

  Future<Database> inicializaBanco() async {
    //Pega o caminho para salvar o banco de dados
    Directory directory = await getApplicationCacheDirectory();
    String caminho = directory.path + 'bdnotas.db';
    var bancodedados = await openDatabase(
      caminho,
      version: 1,
      onCreate: _criabanco,
    );
    return bancodedados;
  }

  //definido a aestrutura da tabela

  String nomeTabela = 'tbl_notas';
  String colId = 'id';
  String colNome = 'nome';
  String colAssunto = 'assunto';
  String colData = 'data';

  // método pque cria o banco de dados

  void _criabanco(Database db, int versao) async {
    await db.execute(
      'CREATE TABLE $nomeTabela ('
      '$colId INTEGER PRIMARY KEY AUTOINCREMENT'
      '$colNome Text, '
      '$colAssunto Text, '
      '$colData Text)'
      ')',
    );
  }

  //métodos CRUD da tabela de contatos

  //Cadastro de Notas

  //Lista uma notas

  //Edita uma nota

  //Exclui uma nota
}
