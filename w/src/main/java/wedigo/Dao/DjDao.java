package wedigo.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import wedigo.Model.Caterer;
import wedigo.Model.Dj;



@Repository 
public class DjDao {

	@Autowired 
	private HibernateTemplate hibernateTemplate;
	
	@Transactional 
	public int insert(Dj dj) { 
		Integer n=(Integer)this.hibernateTemplate.save(dj); 
		return n; 
		}
	 
	public List<Dj> get()

	{
		List<Dj> l=this.hibernateTemplate.loadAll(Dj.class);
		return l;
	}
	@Transactional
	public void delete(int id)
	{
		Dj d = this.hibernateTemplate.load(Dj.class, id);
		this.hibernateTemplate.delete(d);
	}
}
