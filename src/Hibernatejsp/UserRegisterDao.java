package Hibernatejsp;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;



public class UserRegisterDao 
{
	static SessionFactory factory = null;
	public static int uRegister(UserRegister ur)
	{
		int i = 0;
		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		i= (Integer) session.save(ur);
		t.commit();
		session.close();
		
		return i;
	}
	
	public static List<UserRegister> GetRegister()
	{
		factory = new Configuration().configure().buildSessionFactory();
		Session ses = factory.openSession();
		Transaction t = ses.beginTransaction();
		@SuppressWarnings("unchecked")
		
		List<UserRegister> ulist = ses.createQuery("From UserRegister").list();
		t.commit();
		ses.close();

	//	 for (UserRegister urr : ulist) {
	//		System.out.println(urr.getUser_ID() + urr.getF_name() + urr.getL_name() + urr.getGender());
			
	//	 }
			return ulist;

	}
	
	
	// ---------------------------------For Update Data--------------------------------
	
	
		
		public static void UpdateUserRegister(UserRegister id) 
		{
			Session session = factory.openSession();
		      Transaction tx = null;

			try
				{
					tx=session.beginTransaction();						
				    Query q=session.createQuery("update UserRegister set f_name=:fn, m_name=:mn, l_name=:ln, gender=:g, age=:a, t_address=:ta, p_address=:pa, contact=:c, email=:e, password=:p where user_ID=:i");
				    q.setParameter("i", id.getUser_ID());
				    q.setParameter("fn", id.getF_name());
				    q.setParameter("mn", id.getM_name());
				    q.setParameter("ln", id.getL_name());
				    q.setParameter("g", id.getGender());
				    q.setParameter("a", id.getAge());
				    q.setParameter("ta", id.getT_address());
				    q.setParameter("pa", id.getP_address());
				    q.setParameter("c", id.getContact());
				    q.setParameter("e", id.getEmail());
				    q.setParameter("p", id.getPassword());
				    				    				  
				    int result=q.executeUpdate();
				    System.out.println(result);
					tx.commit();
				}
			catch (Exception e )
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
					tx.rollback();
				}
			finally
			{
				session.close();
			}
		}
		
		public static UserRegister selectonerow(int id) 
		{
			factory = new Configuration().configure().buildSessionFactory();
			Session ses = factory.openSession();
			Transaction t = ses.beginTransaction();
			@SuppressWarnings("unchecked")
			
			List<UserRegister> ulist = ses.createQuery("From UserRegister where user_ID ="+id).list();
			UserRegister u= new UserRegister();
			if(!ulist.isEmpty()) {
			u=ulist.get(0);
			}
			t.commit();
			ses.close();
			return u;
		}
		
		
	// ---------------------------------For Delete Data--------------------------------
		
		public static void DeleteUserRegister(UserRegister id) 
			{
				Session session = factory.openSession();
			      Transaction tx = null;

				try
					{
						tx=session.beginTransaction();	
						//session.delete(id);
					    Query q=session.createQuery("Delete from UserRegister where user_ID=:i");
					    q.setParameter("i", id.getUser_ID());
					    q.executeUpdate();
						tx.commit();
					}
				catch (Exception e )
					{
						// TODO Auto-generated catch block
						e.printStackTrace();
						tx.rollback();
					}
				finally
				{
					session.close();
				}
			}
			
}
