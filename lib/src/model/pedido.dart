class Pedido {

  String notaFiscal;
  String loteSerial;
  String produto;
  String lote;
  String unidMedida;
  String cnpj;
  String cubagem;
  String qtdTotal;
  String forma;

  Pedido(
      {this.notaFiscal,
        this.loteSerial,
        this.produto,
        this.lote,
        this.unidMedida,
        this.cnpj,
        this.cubagem,
        this.qtdTotal,
        this.forma});

  Pedido.fromJson(Map<String, dynamic> json) {
    notaFiscal = json['nota_fiscal'];
    loteSerial = json['lote_serial'];
    produto = json['produto'];
    lote = json['lote'];
    unidMedida = json['unid_medida'];
    cnpj = json['cnpj'];
    cubagem = json['cubagem'];
    qtdTotal = json['qtd_total'];
    forma = json['forma'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nota_fiscal'] = this.notaFiscal;
    data['lote_serial'] = this.loteSerial;
    data['produto'] = this.produto;
    data['lote'] = this.lote;
    data['unid_medida'] = this.unidMedida;
    data['cnpj'] = this.cnpj;
    data['cubagem'] = this.cubagem;
    data['qtd_total'] = this.qtdTotal;
    data['forma'] = this.forma;
    return data;
  }
}
