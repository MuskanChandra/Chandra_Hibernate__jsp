package Hibernatejsp;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class userdao 
{
	static SessionFactory factory = null;
	public static int CUserRegister(user cu)
	{
		int i = 0;
		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		i=(Integer)session.save(cu);
		t.commit();
		session.close();
		
		return i;
	}
	
	public static List<user> GetCUser()
	{
		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<user>ulist = session.createQuery("From user").list();
		t.commit();
		session.close();
		for (user user : ulist)
		{
			
			// System.out.println(user.getF_Name() + user.getL_Name() + user.getAddress() + user.getEmail() + user.getPassword());
		}
		return ulist;
	}
}
