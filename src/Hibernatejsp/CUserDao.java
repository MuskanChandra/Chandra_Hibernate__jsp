package Hibernatejsp;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class CUserDao 
{
	static SessionFactory factory = null;
	public static int CUserRegister(CUser cu)
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
	
	public static List<CUser> GetCUser()
	{
		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<CUser>ulist = session.createQuery("From CUser").list();
		t.commit();
		session.close();
	
		
		return ulist;
	}
	
	
}
