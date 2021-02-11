package wedigo.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import wedigo.Model.Caterer;


@Repository 
public class CatererDao {

	@Autowired 
	private HibernateTemplate hibernateTemplate;
	@Transactional 
	public int insert(Caterer caterer) { 
		Integer n=(Integer)this.hibernateTemplate.save(caterer); 
		return n; 
		}
	 
	public List<Caterer> get()

	{
		List<Caterer> l=this.hibernateTemplate.loadAll(Caterer.class);
		return l;
	}
	@Transactional
	public void delete(int id)
	{
		Caterer c = this.hibernateTemplate.load(Caterer.class, id);
		this.hibernateTemplate.delete(c);
	}
}
