package com.site.trainlocatorapplication.service;

import com.site.trainlocatorapplication.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}