package wedigo.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import wedigo.Model.Caterer;
import wedigo.Model.Photographer;


@Repository 
public class PhotographerDao {

	@Autowired 
	private HibernateTemplate hibernateTemplate;
	
	@Transactional 
	public int insert(Photographer photographer) { 
		Integer n=(Integer)this.hibernateTemplate.save(photographer); 
		return n; 
		}
	 
	public List<Photographer> get()

	{
		List<Photographer> l=this.hibernateTemplate.loadAll(Photographer.class);
		return l;
	}
	@Transactional
	public void delete(int id)
	{
		Photographer p = this.hibernateTemplate.load(Photographer.class, id);
		this.hibernateTemplate.delete(p);
	}
}
