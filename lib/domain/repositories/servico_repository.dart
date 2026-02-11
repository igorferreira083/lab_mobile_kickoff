import '../entities/servico.dart';

abstract class ServicoRepository {
  List<Servico> listar();
  void adicionar(Servico servico);
}
