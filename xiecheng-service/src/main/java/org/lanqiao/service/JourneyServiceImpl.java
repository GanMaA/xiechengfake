package org.lanqiao.service;

import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.web.bind.annotation.RestController;

@Service
public class JourneyServiceImpl implements JourneyService {
    @Override
    public int get() {
        return 0;
    }
}
