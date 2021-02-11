package wedigo.Service;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import wedigo.Dao.RegisterDao;
import wedigo.Model.Register;

  
@Service 
public class RegisterService {
  
@Autowired 
private RegisterDao registerDao;

public int create(Register register) { 
	 return this.registerDao.insert(register); 
	 } 

public List<Register> gets()

{
	List<Register> l1=this.registerDao.get();
	return l1;
}
public void del(int id)
{
	this.registerDao.delete(id);
}
}
 