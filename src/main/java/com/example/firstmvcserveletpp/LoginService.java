package com.example.firstmvcserveletpp;

import org.apache.commons.lang3.StringUtils;

public class LoginService {

    public boolean authenticate(String userId, String password) {

        if (userId == null || userId.trim().equals("") || password == null || password.trim().equals("")) {
            return false;
        }
        return true;
    }
}
