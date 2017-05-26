package com.empoperate;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.user.Operate.DataBase;

public class addemp extends DataBase{
	
	PreparedStatement ps=null;
	
	void addemps(int empno,String ename,String work,int mgr,String hiredate,int sal,int comm,int deptno){
		getConnect();
		String sql="insert into emp values(?,?,?,?,?,?,?)";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1, empno);
			ps.setString(2,ename);
			ps.setString(3, work);
			ps.setInt(4, mgr);
			ps.setString(5, hiredate);
			ps.setInt(6, sal);
			ps.setInt(7, comm);
			ps.setInt(8, deptno);
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				ps.close();
				con.close();
				System.out.println("新增成功");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
