import 'package:sistema_escolar/sistema_escolar.dart';
import 'package:test/test.dart';

void main() {
  group('Sistema Escolar', () {
    test('Criacao de Aluno', () {
      var aluno = Aluno('Gui', 20, '2025001');
      expect(aluno.nome, equals('Gui'));
      expect(aluno.idade, equals(20));
      expect(aluno.matricula, equals('2025001'));
    });

    test('Calculo da Media', (){
      var disciplina = Disciplina('PDM', 40);
      var aluno = Aluno('Gui', 20, '2025001');

      aluno.adicionarNota(Nota(8.0, disciplina));
      aluno.adicionarNota(Nota(7.0, disciplina));

      expect(aluno.calcularMedia(), equals(7.5));
    });

    test('Nota invalida lanca excecao', () {
      var disciplina = Disciplina('PDM', 40);
      expect(() => Nota(11.0, disciplina), throwsArgumentError);
    });
  });
}
