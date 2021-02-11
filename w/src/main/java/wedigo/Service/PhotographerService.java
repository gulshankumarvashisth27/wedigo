package wedigo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wedigo.Dao.PhotographerDao;

import wedigo.Model.Photographer;


@Service
public class PhotographerService {

	@Autowired
	private PhotographerDao photographerDao;
	
	
	public int create(Photographer photographer) { 
		 return this.photographerDao.insert(photographer); 
		 } 

	public List<Photographer> gets()

	{
		List<Photographer> l1=this.photographerDao.get();
		return l1;
	}
	public void del(int id)
	{
		this.photographerDao.delete(id);
	}
}
