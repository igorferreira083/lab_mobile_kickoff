# lab_mobile_kickoff

A new Flutter project.

## Getting Started

Laboratoria Mobile – Kickoff Flutter

Projeto Flutter criado com o objetivo de praticar arquitetura limpa (Clean Architecture), separação de responsabilidades e boas práticas de organização de código.

🎯 Objetivo do Projeto

Este projeto serve como base para um aplicativo Flutter organizado em camadas:

Presentation → Interface e controle de estado

Application → Casos de uso

Domain → Regras de negócio

Data → Implementações concretas (ex: memória, API, banco)

Atualmente, o projeto trabalha com a entidade Serviço, armazenada em memória.

🧱 Arquitetura Utilizada

O projeto segue uma variação da Clean Architecture:

lib/
 ├─ presentation/
 │   └─ controllers/
 │       └─ servicos_controller.dart
 │
 ├─ application/
 │   └─ usecases/
 │       ├─ adicionar_servicos.dart
 │       └─ listar_servicos.dart
 │
 ├─ domain/
 │   ├─ entities/
 │   │   └─ servico.dart
 │   └─ repositories/
 │       └─ servico_repository.dart
 │
 ├─ data/
 │   └─ repositories/
 │       └─ servico_repository_memory.dart
 │
 └─ main.dart

🧩 Camadas Explicadas
📌 Domain

Contém as regras de negócio puras, sem depender de Flutter ou qualquer framework.

Servico → Entidade principal

ServicoRepository → Contrato (interface)

📌 Application

Contém os casos de uso, que orquestram as regras de negócio.

AdicionarServico

ListarServicos

Esses casos de uso dependem somente do contrato do repositório, nunca da implementação.

📌 Data

Responsável pelas implementações concretas.

ServicoRepositoryMemory

Usa uma List<Servico> como armazenamento temporário

Ideal para testes e protótipos

📌 Presentation

Camada que conversa com a interface (UI).

ServicosController

Conecta a UI aos casos de uso

Não contém regra de negócio

🖥️ Interface Inicial

A aplicação possui uma tela inicial simples com:

AppBar

Texto: “Laboratoria Mobile”

Essa tela serve como base para evolução futura do app.

▶️ Como executar o projeto

Instale as dependências:

flutter pub get


Execute o projeto:

flutter run

🚧 Status do Projeto

✔ Estrutura de pastas definida
✔ Entidade Servico criada
✔ Repositório com contrato
✔ Implementação em memória
✔ Casos de uso básicos
✔ Controller configurado
✔ Tela inicial criada
