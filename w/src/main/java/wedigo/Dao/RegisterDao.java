package wedigo.Dao;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import wedigo.Model.Caterer;
import wedigo.Model.Register;

@Repository 
public class RegisterDao { 
@Autowired 
private HibernateTemplate hibernateTemplate;
@Transactional 
public int insert(Register register) { 
	Integer n=(Integer)this.hibernateTemplate.save(register); 
	return n; 
	}
 
public List<Register> get()

{
	List<Register> l=this.hibernateTemplate.loadAll(Register.class);
	return l;
}
@Transactional
public void delete(int id)
{
	Register r = this.hibernateTemplate.load(Register.class, id);
	this.hibernateTemplate.delete(r);
}
 }
