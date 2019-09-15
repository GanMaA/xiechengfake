package org.lanqiao.service;

import org.lanqiao.entity.Vovage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TicketService {
    public List<Vovage> selectAll();
}
