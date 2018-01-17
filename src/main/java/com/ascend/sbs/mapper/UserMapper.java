package com.ascend.sbs.mapper;

import com.ascend.sbs.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    User findByUsername(@Param("username") String username);
}
