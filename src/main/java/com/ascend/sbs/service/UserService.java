package com.ascend.sbs.service;

import com.ascend.sbs.model.User;

public interface UserService {

    User findByUsername(String username);
}
