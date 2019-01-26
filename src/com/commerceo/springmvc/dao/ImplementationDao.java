package com.commerceo.springmvc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.commerceo.springmvc.domain.ContactUsDomain;
import com.commerceo.springmvc.domain.SignupDomain;
import com.commerceo.springmvc.model.LoginModel;


@SuppressWarnings("unused")
@Component
public class ImplementationDao implements InterfaceDao {
	
	@Autowired
	private HibernateTemplate template;
	
	public ImplementationDao() {
		// TODO Auto-generated constructor stub
	}
	

	@Override
	public boolean dao_checklogin(LoginModel loginModel){
		
		String username=loginModel.getUsername();
		String pass=loginModel.getPassword();
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/db","root","");  
			 
			Statement stmt=con.createStatement(); 
			String query="select * from registeruser where username='"+username+"' and password='"+pass+"'";
			ResultSet rs=stmt.executeQuery(query); 
			System.out.println("inside dao imlementation checklogin");
			if (rs.next()) {
			while(rs.next()) {
			System.out.println("1");
			System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
			
			} }
			else {System.out.println("2"); con.close(); return false;}
			con.close();
			
			}catch(Exception e)
		      { System.out.println(e);
		        return false;
		      }  
			return true;
	}
	
	
	public 	boolean dao_availusername(String username) {
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
			String query="select username from registeruser where username= ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, username);
			ResultSet rs=stmt.executeQuery();
	
			if (rs.next()) {
				while(rs.next()) {
				System.out.println(rs.getString(1)+" user exist");
				
				} }
				else {System.out.println(" user not exist"); con.close(); return true;}
				con.close();
		
		} catch(Exception e) {
			System.out.println(e);
			return false; }
		return false;
 }
	
	
	
	public boolean dao_signup(SignupDomain signupDomain) {
		
		
		template.save(signupDomain);
		return true;
	}
	
	/*public boolean addContactData(ContactUs contactUs){
		template.save(contactUs);
		return true;
	}
*/
	@Override
	public boolean dao_contactUs(ContactUsDomain contactDomain) {
		template.save(contactDomain);
		//template.persist(entity);
		return true;
	}
	
	
}
