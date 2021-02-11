package wedigo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wedigo.Dao.CatererDao;

import wedigo.Model.Caterer;


@Service
public class CatererService {

	@Autowired
	private CatererDao catererDao;
	
	
	public int create(Caterer caterer) { 
		 return this.catererDao.insert(caterer); 
		 } 

	public List<Caterer> gets()

	{
		List<Caterer> l1=this.catererDao.get();
		return l1;
	}
	
	public void del(int id)
	{
		this.catererDao.delete(id);
	}
}
