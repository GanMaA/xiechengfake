package org.lanqiao.service;

import org.lanqiao.entity.Vovage;
import org.lanqiao.mapper.VovageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TicketServiceImpl implements TicketService {
    @Autowired
    VovageMapper vovageMapper;

    @Override
    public List<Vovage> selectAll() {
        List<Vovage> vovageList = vovageMapper.getAll();
        return vovageList;
    }
}


