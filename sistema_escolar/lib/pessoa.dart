class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return 'Nome: $nome, Idade: $idade';
  }
}