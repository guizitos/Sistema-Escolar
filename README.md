# Sistema Escolar em Dart 

Um sistema escolar simples desenvolvido em Dart para gerenciamento de alunos, professores, disciplinas, turmas e notas.

##  Funcionalidades

- **Gestão de Pessoas**: Cadastro de alunos e professores
- **Controle de Disciplinas**: Criação e administração de disciplinas
- **Sistema de Turmas**: Organização de alunos em turmas por disciplina
- **Registro de Notas**: Lançamento e cálculo de médias dos alunos
- **Relatórios**: Visualização de informações do sistema escolar

##  Estrutura do Projeto

```
sistema_escolar/
├── lib/
│   ├── sistema_escolar.dart          # Exportação principal
│   ├── pessoa.dart          # Classe base Pessoa
│   ├── aluno.dart           # Classe Aluno (herda de Pessoa)
│   ├── professor.dart       # Classe Professor (herda de Pessoa)
│   ├── disciplina.dart      # Classe Disciplina
│   ├── turma.dart           # Classe Turma
│   └── nota.dart            # Classe Nota
├── bin/
│   └── sistema_escolar.dart            # Arquivo principal de execução
├── test/
│   └── sistema_escolar_test.dart     # Testes unitários
└── pubspec.yaml             # Configuração do projeto
```

##  Como Executar

### Pré-requisitos
- Dart SDK instalado (versão 3.0.0 ou superior)

### Instalação
1. Clone o repositório:
```bash
git clone https://github.com/guizitos/sistema-escolar-dart.git
cd sistema-escolar-dart
```

2. Baixe as dependências:
```bash
dart pub get
```

3. Execute o projeto:
```bash
dart run bin/sistema_escolar.dart
```

### Executar testes
```bash
dart test
```

## 📚 Classes do Sistema

### Pessoa
- Classe base com atributos comuns
- **Atributos**: nome, idade

### Aluno (herda de Pessoa)
- Representa estudantes do sistema
- **Atributos**: matricula, lista de notas
- **Métodos**: adicionarNota(), calcularMedia()

### Professor (herda de Pessoa)
- Representa educadores do sistema
- **Atributos**: disciplina que leciona

### Disciplina
- Representa matérias escolares
- **Atributos**: nome, cargaHoraria

### Turma
- Agrupa alunos por disciplina
- **Atributos**: identificacao, disciplina, lista de alunos
- **Métodos**: adicionarAluno(), listarAlunos()

### Nota
- Representa avaliações dos alunos
- **Atributos**: valor (0-10), disciplina

##  Exemplo de Uso

```dart
// Criar disciplinas
var matematica = Disciplina('Matemática', 80);

// Criar professor
var professor = Professor('João Silva', 45, matematica);

// Criar aluno
var aluno = Aluno('Ana Oliveira', 16, '2023001');

// Adicionar nota
aluno.adicionarNota(Nota(8.5, matematica));

// Criar turma
var turma = Turma('Turma A', matematica);
turma.adicionarAluno(aluno);

// Listar alunos da turma
turma.listarAlunos();
```

## 🧪 Testes

O projeto inclui testes unitários para validar as funcionalidades:

- Criação de alunos e professores
- Cálculo de médias
- Validação de notas
- Gestão de turmas

Execute os testes com:
```bash
dart test
```

##  Tecnologias Utilizadas

- **Dart**: Linguagem de programação
- **Dart SDK**: Ferramentas e bibliotecas padrão
- **Test Package**: Framework de testes unitários

##  Requisitos do Sistema

- Dart SDK >= 3.0.0
- Qualquer sistema operacional (Windows, macOS, Linux)

##  Contribuição

Contribuições são bem-vindas! Siga os passos:

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

##  Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

##  Autor

Guilherme Santo Costa - [gu1b42112@gmail.com](mailto:gu1b42112@gmail.com)

##  Dúvidas e Suporte

Se tiver dúvidas ou problemas, abra uma [issue](https://github.com/guizitos/sistema-escolar-dart/issues) no GitHub.

---
