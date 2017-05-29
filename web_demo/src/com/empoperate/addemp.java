package com.empoperate;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.user.Operate.DataBase;

public class addemp extends DataBase{
	
	PreparedStatement ps=null;
	Statement st=null;
	ResultSet rs=null;
	
	public int addemps(int empno,String ename,String job,int mgr,Date hiredate,int sal,int comm,int deptno){
		int flag=0;
		getConnect();
		String sql1="select * from emp where empno="+empno;
		String sql="insert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) values(?,?,?,?,?,?,?,?)";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql1);
			if(rs!=null){//
				try {
					ps=con.prepareStatement(sql);
					ps.setObject(1, empno);
					ps.setObject(2,ename);
					ps.setObject(3, job);
					ps.setObject(4, mgr);
					ps.setObject(5, hiredate);
					ps.setObject(6, sal);
					ps.setObject(7, comm);
					ps.setObject(8, deptno);
					ps.executeUpdate();
					con.commit();
					flag=1;
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
			}else{
				System.out.println("该用户已存在");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally{
			try {
				rs.close();
				st.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return flag;
	}
	
	public int delemp(int empno){
		int flag=0;
		getConnect();
		String sql="delete from emp where empno=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1, empno);
			flag=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}
	//根据员工编号返回信息
	public Map<String,Object> getoneEmp(int empno){
		
		getConnect();
		String sql="select * from emp where empno="+empno;
		Map<String,Object> map = null;
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				map=new HashMap<String,Object>();
				map.put("empno", rs.getInt("empno"));
				map.put("ename", rs.getString("ename"));
				map.put("hiredate", rs.getObject("hiredate"));
				map.put("deptno", rs.getInt("deptno"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return map;
	}
	
	//查询部门编号
	public List getAllDeptno(){
		List list=new ArrayList();
		getConnect();
		String sql="select deptno from dept";
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				list.add(rs.getObject(1));
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
		return list;
	}
	
	public int update(int empno,String ename,Date hiredate){
		int flag=0;
		getConnect();
		String sql="update emp set ename=?,hiredate=? where empno=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setObject(1, ename);
			ps.setObject(2, hiredate);
			ps.setObject(3, empno);
			flag=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
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
