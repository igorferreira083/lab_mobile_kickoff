import 'package:lab_mobile_kickoff/application/usecases/adicionar_servicos.dart';
import 'package:lab_mobile_kickoff/application/usecases/listar_servicos.dart';
import 'package:lab_mobile_kickoff/domain/repositories/servico_repository_memory.dart';
import 'package:lab_mobile_kickoff/domain/entities/servico.dart';

class ServicosController {
  final _repository = ServicoRepositoryMemory();

  late final AdicionarServico adicionarServico;
  late final ListarServicos listarServicos;

  ServicosController() {
    adicionarServico = AdicionarServico(_repository);
    listarServicos = ListarServicos(_repository);
  }

  void adicionar(Servico servico) {
    adicionarServico(servico);
  }

  List<Servico> listar() {
    return listarServicos();
  }
}
