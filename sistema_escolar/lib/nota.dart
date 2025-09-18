import 'disciplina.dart';

class Nota {
  double valor;
  Disciplina disciplina;

  Nota(this.valor, this.disciplina) {
    if (valor <0 || valor > 10) {
      throw ArgumentError('A nota deve estar entre a e 10');
    }
  }

  @override
  String toString() {
    return 'Nota: $valor em ${disciplina.nome}';
  }
}