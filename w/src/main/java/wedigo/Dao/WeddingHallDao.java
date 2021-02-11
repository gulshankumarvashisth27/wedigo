package wedigo.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import wedigo.Model.Caterer;
import wedigo.Model.Dj;
import wedigo.Model.WeddingHall;

@Repository 
public class WeddingHallDao {
	@Autowired 
	private HibernateTemplate hibernateTemplate;
	
	@Transactional 
	public int insert(WeddingHall weddingHall) { 
		Integer n=(Integer)this.hibernateTemplate.save(weddingHall); 
		return n; 
		}
	 
	public List<WeddingHall> get()

	{
		List<WeddingHall> l=this.hibernateTemplate.loadAll(WeddingHall.class);
		return l;
	}
	@Transactional
	public void delete(int id)
	{
		WeddingHall wh = this.hibernateTemplate.load(WeddingHall.class, id);
		this.hibernateTemplate.delete(wh);
	}
}


