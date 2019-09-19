package org.lanqiao.mapper;

import org.lanqiao.entity.TicketOrder;

public interface TicketOrderMapper {
    int insert(TicketOrder record);

    int insertSelective(TicketOrder record);
}