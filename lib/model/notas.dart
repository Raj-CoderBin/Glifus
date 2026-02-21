class Notas {
  //Atributos
  int _id;
  String _nome;
  String _assunto;
  String _data;

  //construtor

  Notas(this._id, this._nome, this._assunto, this._data);

  // getters and setters

  int get id => this._id;

  set id(int value) => this._id = value;

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get assunto => this._assunto;

  set assunto(value) => this._assunto = value;

  get data => this._data;

  set data(value) => this._data = value;

  //Método de conversão de model para map
  Map<String, dynamic> toMap() {
    // criação do map
    var dados = Map<String, dynamic>();

    dados['id'] = _id;
    dados['nome'] = _nome;
    dados['assunto'] = _assunto;
    dados['data'] = _data;

    return dados;
  }

  // Métode de conversão de map para model
  Notas.demapparamodel(Map<String, dynamic> dados) {
    this._id = dados['id'];
    this._nome = dados['nome'];
    this._assunto = dados['assunto'];
    this._data = dados['data'];
  }
}
