import '../../domain/entities/servico.dart';
import '../../domain/repositories/servico_repository.dart';

class ServicoRepositoryMemory implements ServicoRepository {
  final List<Servico> _servicos = [];

  @override
  List<Servico> listar() {
    return List.unmodifiable(_servicos);
  }

  @override
  void adicionar(Servico servico) {
    _servicos.add(servico);
  }
}
