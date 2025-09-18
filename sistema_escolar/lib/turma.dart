import 'aluno.dart';
import 'disciplina.dart';

class Turma {
  String identificacao;
  Disciplina disciplina;
  List<Aluno> alunos;

  Turma(this.identificacao, this.disciplina) : alunos = [];

  void adicionarAluno(Aluno aluno) {
    alunos.add(aluno);
  }

  void ListarAlunos() {
    print('Turma: $identificacao');
    print('Disciplina: ${disciplina.nome}');
    print('Alunos:');
    for (var aluno in alunos) {
      print(' - $aluno');
    }
  }
}