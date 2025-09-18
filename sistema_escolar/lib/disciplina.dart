class Disciplina {
  String nome;
  int cargaHoraria;

  Disciplina(this.nome, this.cargaHoraria);

  @override
  String toString() {
    return 'Disciplina: $nome, Carga Horaria: $cargaHoraria horas';
  }
}