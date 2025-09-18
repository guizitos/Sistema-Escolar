import 'pessoa.dart';
import 'nota.dart';

class Aluno extends Pessoa {
  String matricula;
  List<Nota> notas = [];

  Aluno(super.nome,  super.idade, this.matricula) : super();
 
  void adicionarNota(Nota nota) {
    notas.add(nota);
  }

  double calcularMedia() {
    if (notas.isEmpty) return 0;

    double soma = 0;
    for (var nota in notas) {
      soma += nota.valor;
    }
    return soma/notas.length;
  }

  @override
  String toString() {
    return 'Aluno: ${super.toString()}, Matricula: $matricula, Media: ${calcularMedia().toStringAsFixed(2)}';
  }
}