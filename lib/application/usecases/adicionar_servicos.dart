import '../../domain/entities/servico.dart';
import '../../domain/repositories/servico_repository.dart';

class AdicionarServico {
  final ServicoRepository repository;

  AdicionarServico(this.repository);

  void call(Servico servico) {
    repository.adicionar(servico);
  }
}
