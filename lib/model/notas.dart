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
}
