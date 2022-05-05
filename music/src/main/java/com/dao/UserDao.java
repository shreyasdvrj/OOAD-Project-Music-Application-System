package com.dao;

import com.beans.User;

public interface UserDao {

	public int registerUser(User user);

	public String loginUser(User user);

}
