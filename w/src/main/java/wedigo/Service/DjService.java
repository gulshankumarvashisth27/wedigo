package wedigo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wedigo.Dao.DjDao;

import wedigo.Model.Dj;


@Service
public class DjService {

	@Autowired
	private DjDao djDao;
	
	
	public int create(Dj dj) { 
		 return this.djDao.insert(dj); 
		 } 

	public List<Dj> gets()

	{
		List<Dj> l1=this.djDao.get();
		return l1;
	}
	public void del(int id)
	{
		this.djDao.delete(id);
	}
}
