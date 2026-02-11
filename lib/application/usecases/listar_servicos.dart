import '../../domain/entities/servico.dart';
import '../../domain/repositories/servico_repository.dart';

class ListarServicos {
  final ServicoRepository repository;

  ListarServicos(this.repository);

  List<Servico> call() {
    return repository.listar();
  }
}
