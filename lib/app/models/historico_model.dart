class HistoricoModel {
  int id;
  String razaoSocial;
  String nomeEstabelecimento;
  String status;
  String avaliacao;
  String nomeDoCliente;
  String cEP;
  String logradouro;
  String numero;
  String complemento;
  String pontoDeReferencia;
  String bairro;
  String cidade;
  String estado;
  String telefone;
  String celular;
  String valorDoPedido;
  String valorDaEntrega;
  String metodoDePagamento;
  String cargaMaiorHabitual;
  String createdAt;
  String distancia;
  HistoricoModel(
      this.distancia,
      this.razaoSocial,
      this.createdAt,
      this.status,
      this.avaliacao,
      this.nomeDoCliente,
      this.logradouro,
      this.pontoDeReferencia,
      this.telefone,
      this.valorDoPedido,
      this.valorDaEntrega,
      this.metodoDePagamento,
      this.cargaMaiorHabitual,
      );
}
