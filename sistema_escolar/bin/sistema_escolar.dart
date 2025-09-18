import 'package:sistema_escolar/sistema_escolar.dart';

void main() {
  var matematica = Disciplina('Matematica', 80);
  var portugues = Disciplina('Portugues', 60);

  var prof1 = Professor('Ney Matogrosso', 45, matematica);
  var prof2 = Professor('Marina Sena', 38, portugues);

  var aluno1 = Aluno('Ebony Silva', 18, '2025001');
  var aluno2 = Aluno('Julia Costa', 19, '2025002');
  var aluno3 = Aluno('Danny Bond', 21, '2025003');
  var aluno4 = Aluno('Gaby Amarantos', 19, '2025004');

  aluno1.adicionarNota(Nota(8.5, matematica));
  aluno1.adicionarNota(Nota(9.0, portugues));

  aluno2.adicionarNota(Nota(7.5, matematica));
  aluno2.adicionarNota(Nota(8.0, portugues));

  aluno3.adicionarNota(Nota(8.0, matematica));
  aluno3.adicionarNota(Nota(6.4, portugues));

  aluno4.adicionarNota(Nota(9.5, matematica));
  aluno4.adicionarNota(Nota(6.0, portugues));

  var turmaA = Turma('Turma A - 3 ano', matematica);
  turmaA.adicionarAluno(aluno1);
  turmaA.adicionarAluno(aluno2);
  turmaA.adicionarAluno(aluno3);
  turmaA.adicionarAluno(aluno4);

  print('=== SISTEMA ESCOLAR ===\n');

  print('PROFESSOR:');
  print(prof2);
  print(prof1);
  print('');

  print('TURMA:');
  turmaA.ListarAlunos();
  print('');

  print('DETALHE DOS ALUNOS:');
  print(aluno1);
  print('Notas: ${aluno1.notas}');
  print('');

  print(aluno2);
  print('Notas: ${aluno2.notas}');
  print('');

  print(aluno3);
  print('Notas: ${aluno3.notas}');
  print('');

  print(aluno4);
  print('Notas: ${aluno4.notas}');
  
}
