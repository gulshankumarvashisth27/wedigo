package wedigo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;


import wedigo.Model.Caterer;
import wedigo.Model.Dj;
import wedigo.Model.Photographer;
import wedigo.Model.Register;
import wedigo.Model.WeddingHall;
import wedigo.Dao.RegisterDao;
import wedigo.Model.Register;
import wedigo.Service.CatererService;
import wedigo.Service.DjService;
import wedigo.Service.PhotographerService;
import wedigo.Service.RegisterService;
import wedigo.Service.WeddingHallService;

@Controller
public class HomeController {
	@Autowired
	private RegisterService registerService;
	
	@Autowired
	private WeddingHallService weddingHallService;
	
	@Autowired
	private PhotographerService photographerService;
	
	@Autowired
	private CatererService catererService;
	
	@Autowired
	private DjService djService;
	
	
	
	
	@RequestMapping("/home")
	public String home()
	{
		
		return"home";
	}
	
	
	@RequestMapping("/contact")
	public String contact()
	{
		return"contact";
	}
	
	@RequestMapping("/register")
	public String register()
	{
		return"register";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		return"login";
	}
	
	@RequestMapping("/member")
	public String member()
	{
		return"member";
	}
	
	@RequestMapping("/login1")
	public String login1()
	{
		return"login1";
	}
	
	@RequestMapping("/logout")
	public String logout(Model m)
	{
		
		List<WeddingHall> weddinghalls=weddingHallService.gets();
		m.addAttribute("weddinghalls",weddinghalls);
		
		List<Photographer> photographers=photographerService.gets();
		m.addAttribute("photographers",photographers);
		
		List<Caterer> caterers =catererService.gets();
		m.addAttribute("caterers",caterers);
		
		List<Dj> djs=djService.gets();
		m.addAttribute("djs",djs);
		
		return"logout";
	}
	
	@RequestMapping("/reg-form")
	public RedirectView regform(@ModelAttribute("register") Register register,HttpServletRequest request)
	{
		System.out.println(register);
		
		this.registerService.create(register);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/login");
		return redirectView;
	}
	
	@RequestMapping(path="/log-form",method = RequestMethod.POST)
	public RedirectView logform(HttpServletRequest request,Model m)
	{
		
		String userEmail=request.getParameter("email");
		String userPass=request.getParameter("password");
		
		System.out.println(userEmail);
		System.out.println(userPass);
		RedirectView redirectView = new RedirectView();
		List<Register> l1=this.registerService.gets();
		m.addAttribute("l1",l1);
		for (Register regiter : l1) {
			String name=regiter.getName();
			String email=regiter.getEmail();
			String pass=regiter.getPassword();
			System.out.println(name);
			System.out.println(email);
			System.out.println(pass);
			
			if(email.equals(userEmail) && pass.equals(userPass))
			{
				
				redirectView.setUrl(request.getContextPath()+"/logout");
				
				break;
			}
			else
			{
				redirectView.setUrl(request.getContextPath()+"/login1");
				
			}
		}
		
		return redirectView;
		
		}
	
	@RequestMapping("/weddinghall")
	public String weddinghall()
	{
		return"weddinghall";
	}
	
	@RequestMapping("/photographer")
	public String photographer()
	{
		return"photographer";
	}
	
	@RequestMapping("/caterer")
	public String caterer()
	{
		return"caterer";
	}
	
	@RequestMapping("/dj")
	public String dj()
	{
		return"dj";
	}
	
	
	@RequestMapping(path="/whsave",method = RequestMethod.POST)
	public RedirectView whsave(@ModelAttribute("weddingHall") WeddingHall weddingHall,HttpServletRequest request)
	{
		System.out.println(weddingHall);
		
		this.weddingHallService.create(weddingHall);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	
	@RequestMapping(path="/psave",method = RequestMethod.POST)
	public RedirectView psave(@ModelAttribute("weddingHall") Photographer photographer,HttpServletRequest request)
	{
		System.out.println(photographer);
		
		this.photographerService.create(photographer);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	
	@RequestMapping(path="/djsave",method = RequestMethod.POST)
	public RedirectView djsave(@ModelAttribute("weddingHall") Dj dj,HttpServletRequest request)
	{
		System.out.println(dj);
		
		this.djService.create(dj);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	
	@RequestMapping(path="/csave",method = RequestMethod.POST)
	public RedirectView csave(@ModelAttribute("weddingHall") Caterer caterer,HttpServletRequest request)
	{
		System.out.println(caterer);
		
		this.catererService.create(caterer);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	
	
	@RequestMapping("/adminlogin")
	public String adminlogin()
	{
		return"adminlogin";
	}
	
	
	@RequestMapping("/adminlogin1")
	public String adminlogin1()
	{
		return"adminlogin1";
	}
	
	@RequestMapping("/adminlogout")
	public String adminlogout(Model m)
	{
		List<Register> registers=registerService.gets();
		m.addAttribute("registers",registers);
		
		List<WeddingHall> weddinghalls=weddingHallService.gets();
		m.addAttribute("weddinghalls",weddinghalls);
		
		List<Photographer> photographers=photographerService.gets();
		m.addAttribute("photographers",photographers);
		
		List<Caterer> caterers =catererService.gets();
		m.addAttribute("caterers",caterers);
		
		List<Dj> djs=djService.gets();
		m.addAttribute("djs",djs);
		
		return"adminlogout";
	}
	
	
	@RequestMapping(path="/adminloginform",method = RequestMethod.POST)
	public RedirectView adminloginform(HttpServletRequest request,Model m)
	{
		
		String userEmail=request.getParameter("email");
		String userPass=request.getParameter("password");
		
		String email="admin@gmail.com";
		String pass="admin";
		System.out.println(userEmail);
		System.out.println(userPass);
		RedirectView redirectView = new RedirectView();
		
			
			if(email.equals(userEmail) && pass.equals(userPass))
			{
				
				redirectView.setUrl(request.getContextPath()+"/adminlogout");
				
				
			}
			else
			{
				redirectView.setUrl(request.getContextPath()+"/adminlogin1");
				
			}
		
		
		return redirectView;
		
		}
	
	
	@RequestMapping(path="/rdelete/{id}")
	public RedirectView rdelete(@PathVariable("id") int id,HttpServletRequest request) {
		
		this.registerService.del(id);
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/adminlogout");
		return redirectView;
	}
	
	@RequestMapping(path="/whdelete/{id}")
	public RedirectView whdelete(@PathVariable("id") int id,HttpServletRequest request) {
		
		this.weddingHallService.del(id);
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/adminlogout");
		return redirectView;
	}
	
	@RequestMapping(path="/pdelete/{id}")
	public RedirectView pdelete(@PathVariable("id") int id,HttpServletRequest request) {
		
		this.photographerService.del(id);
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/adminlogout");
		return redirectView;
	}
	
	@RequestMapping(path="/cdelete/{id}")
	public RedirectView cdelete(@PathVariable("id") int id,HttpServletRequest request) {
		
		this.catererService.del(id);
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/adminlogout");
		return redirectView;
	}
	
	@RequestMapping(path="/ddelete/{id}")
	public RedirectView ddelete(@PathVariable("id") int id,HttpServletRequest request) {
		
		this.djService.del(id);
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/adminlogout");
		return redirectView;
	}
}
