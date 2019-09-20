package org.lanqiao.service;

import org.lanqiao.entity.Ticket;
import org.lanqiao.entity.Vovage;
import org.lanqiao.mapper.TicketMapper;
import org.lanqiao.mapper.VovageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TicketServiceImpl implements TicketService{
    @Autowired
    VovageMapper vovageMapper;
    @Autowired
    TicketMapper ticketMapper;

    @Override
    public List<Vovage> selectAll(Vovage vovage) {
        List<Vovage> vovageList=vovageMapper.getAll(vovage);
        return vovageList;
    }

    @Override
    public Vovage seletThis(int key) {
        return vovageMapper.selectByPrimaryKey(key);
    }

    @Override
    public int insertTicket(Ticket ticket) {
        return ticketMapper.insertSelective(ticket);
    }

}
