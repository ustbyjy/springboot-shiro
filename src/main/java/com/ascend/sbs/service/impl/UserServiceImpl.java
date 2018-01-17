package com.ascend.sbs.service.impl;

import com.ascend.sbs.mapper.UserMapper;
import com.ascend.sbs.model.User;
import com.ascend.sbs.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public User findByUsername(String username) {
        return userMapper.findByUsername(username);
    }
}
