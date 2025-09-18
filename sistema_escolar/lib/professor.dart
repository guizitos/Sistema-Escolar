import 'pessoa.dart';
import 'disciplina.dart';

class Professor extends Pessoa {
  Disciplina disciplina;

  Professor(super.nome,  super.idade, this.disciplina) : super();

  @override
  String toString() {
    return 'Professor: ${super.toString()}, Disciplina: ${disciplina.nome}';
  }
}