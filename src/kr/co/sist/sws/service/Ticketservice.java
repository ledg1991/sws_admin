package kr.co.sist.sws.service;


import java.util.List;

import kr.co.sist.sws.vo.Rental;
import kr.co.sist.sws.vo.Ticket;

   

	public interface Ticketservice {
	    // 01_01. ȸ�� ��� �������� ȸ����ȣ, ȸ�� id, ȸ�� �̸�, ȸ�� �̸���, ���Գ�¥, ����
	    public List<Ticket> ticketlist();
	    
	}


