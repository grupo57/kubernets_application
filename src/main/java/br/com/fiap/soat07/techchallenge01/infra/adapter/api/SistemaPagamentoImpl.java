package br.com.fiap.soat07.techchallenge01.infra.adapter.api;

import org.springframework.stereotype.Service;

import br.com.fiap.soat07.techchallenge01.domain.entity.Pagamento;
import br.com.fiap.soat07.techchallenge01.domain.enumeration.MetodoPagamentoEnum;
import br.com.fiap.soat07.techchallenge01.domain.enumeration.PagamentoStatusEnum;
import br.com.fiap.soat07.techchallenge01.domain.enumeration.ProvedorPagamentoEnum;
import br.com.fiap.soat07.techchallenge01.domain.port.outbound.SistemaPagamento;

@Service
public class SistemaPagamentoImpl implements SistemaPagamento {

	@Override
	public PagamentoStatusEnum executar(Pagamento pagamento) {
		if (ProvedorPagamentoEnum.MERCADO_PAGO.equals(pagamento.getProvedorServiço()) && MetodoPagamentoEnum.QRCODE.equals(pagamento.getMetodoPagamento())) {
			return PagamentoStatusEnum.PAGO;
		}else {
			return PagamentoStatusEnum.RECUSADO;
		}

	}

}
