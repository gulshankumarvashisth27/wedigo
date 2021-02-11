package wedigo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wedigo.Dao.WeddingHallDao;

import wedigo.Model.WeddingHall;

@Service
public class WeddingHallService {
		@Autowired
		private WeddingHallDao weddingHallDao;
		
		
		public int create(WeddingHall weddingHall) { 
			 return this.weddingHallDao.insert(weddingHall); 
			 } 

		public List<WeddingHall> gets()

		{
			List<WeddingHall> l1=this.weddingHallDao.get();
			return l1;
		}
		public void del(int id)
		{
			this.weddingHallDao.delete(id);
		}
}
