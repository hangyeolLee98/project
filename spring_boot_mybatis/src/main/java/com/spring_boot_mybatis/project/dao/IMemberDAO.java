package com.spring_boot_mybatis.project.dao;

import java.util.HashMap;

public interface IMemberDAO {
	public String loginCheck(HashMap<String, Object>map);
}
