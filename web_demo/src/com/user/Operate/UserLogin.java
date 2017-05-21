package com.user.Operate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserLogin extends DataBase{
	PreparedStatement ps=null;
	ResultSet rs=null;
	
	public int CheckLogin(String username,String password){
		int flag=0;
		getConnect();
		String sql="select * from userlogin where username=? and password=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setObject(1, username);
			ps.setObject(2, password);
			rs=ps.executeQuery();
			if(rs.next()){
				flag=1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}
}
