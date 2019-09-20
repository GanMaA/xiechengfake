package org.lanqiao.service;

import org.lanqiao.entity.Ticket;
import org.lanqiao.entity.Vovage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TicketService {
    public List<Vovage> selectAll(Vovage vovage);
    public Vovage seletThis(int key);
    public int insertTicket(Ticket ticket);
}
