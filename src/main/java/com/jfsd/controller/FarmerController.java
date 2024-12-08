package com.jfsd.controller;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import javax.sql.rowset.serial.SerialException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.jfsd.model.Farmer;
import com.jfsd.model.Product;
import com.jfsd.service.AdminService;
import com.jfsd.service.FarmerService;
import com.jfsd.service.ProductService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FarmerController {
	@Autowired
   private FarmerService farmerService;
	@Autowired
   private AdminService adminService;
	@Autowired
	private ProductService productService;
	@GetMapping("/farmerlogin")
	public ModelAndView farmerLogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmerlogin");
		return mv;
	}
	@PostMapping("/checkfarmerlogin")
	public ModelAndView checkfarmerLogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		int id = Integer.parseInt(request.getParameter("id"));
		String pwd = request.getParameter("password");
		
		
		Farmer farmer=farmerService.checkFarmerLogin(id, pwd);
		if(farmer!=null)
		{
			mv.setViewName("farmerhome");
		}
		else
		{
			mv.setViewName("farmerloginfail");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	@GetMapping("/farmerreg")
	public ModelAndView farmerreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("farmerreg");
		return mv;
	}
	@PostMapping("addfarmer")
	public ModelAndView addfarmer(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String type=request.getParameter("type");
		String password = request.getParameter("password");
		String contact = request.getParameter("contactno");
		String location=request.getParameter("location");
		
		Farmer f=new Farmer();
		f.setId(id);
		f.setName(name);
		f.setEmail(email);
		f.setContact(contact);
	    f.setLocation(location);
	    f.setType(type);
	    f.setPassword(password);
	    
	   String message=adminService.addfarmer(f);
	   mv.addObject("msg", "Farmer is added successfully!"); 
	   mv.setViewName("farmerregsuccess");
		return mv;
		
	}
	@GetMapping("/addfarmer")
	public ModelAndView showFarmerForm() {
	    return new ModelAndView("addfarmer");  
	}
	
	
	 @GetMapping("/viewfarmer")
	    public ModelAndView viewFarmers() {
		 ModelAndView mv = new ModelAndView();
		    mv.setViewName("viewfarmer");
	        List<Farmer> farmers = farmerService.getAllFarmers(); 
	        
	        mv.addObject("farmerlist", farmers);

	        return mv;
	        
	    }

	    @GetMapping("deletefarmer")
	    public ModelAndView deleteFarmers() {
		 ModelAndView mv = new ModelAndView();
		    mv.setViewName("deletefarmer");
	        List<Farmer> farmers = farmerService.getAllFarmers(); 
	        
	        mv.addObject("farmerlist", farmers);

	        return mv;
	        
	    }
	    @GetMapping("delete")
		public String delete(@RequestParam int id)
		{
			farmerService.deleteFarmer(id);
			return "redirect:/deletefarmer";
		}
	    @GetMapping("updatefarmer")
		public ModelAndView updatefarmer(@PathVariable("id") int fid)
		{
			ModelAndView mv = new ModelAndView();
	        
			mv.setViewName("updatefarmer");
			mv.addObject("id",fid);
			
			return mv;
		}
		@PostMapping("updatefar")
		public ModelAndView updatefarmer(HttpServletRequest request)
		{
			ModelAndView mv = new ModelAndView();
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String type=request.getParameter("type");
			String password = request.getParameter("password");
			String contact = request.getParameter("contactno");
			String location=request.getParameter("location");
			
			Farmer f=new Farmer();
			f.setId(id);
			f.setName(name);
			f.setEmail(email);
			f.setContact(contact);
		    f.setLocation(location);
		    f.setType(type);
		    f.setPassword(password);
		    
		   String message=adminService.addfarmer(f);
		   mv.addObject("msg", "Farmer is updated successfully!"); 
		   mv.setViewName("farmerupdatedsuccess");
			return mv;
			
		}
		
	    @GetMapping("farmerprofile")
	 	public ModelAndView farmerprofile(){
	 		
	 		ModelAndView mv=new ModelAndView();
	 		mv.setViewName("farmerprofile");
	 		
	 		return mv;
	 		
	 	}
	 @GetMapping("addproduct")
	 public String addproduct() {
		 return "addproduct";
	 }
	 @PostMapping("insertproduct")
	 public ModelAndView insertproduct(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) 
	         throws IOException, SerialException, SQLException {
	     String name = request.getParameter("pname");
	     String category = request.getParameter("pcategory");
	     double price = Double.parseDouble(request.getParameter("pprice"));
	     String description = request.getParameter("pdescription");
	     String location = request.getParameter("plocation");
	     long quantity = Long.parseLong(request.getParameter("pquantity")); // Convert quantity to long
	     String unit = request.getParameter("punit"); // Retrieve unit from the form
	     byte[] bytes = file.getBytes();
	     Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

	     Product p = new Product();
	     p.setProductName(name);
	     p.setCategory(category);
	     p.setPrice(price);
	     p.setDescription(description);
	     p.setImage(blob);
	     p.setLocation(location);
	     p.setQuantity(quantity);
	     p.setUnit(unit); 
	     String message = farmerService.addProduct(p);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("addedpro");
	     mv.addObject("message", message);

	     return mv;
	 }

	   
	    @GetMapping("viewproducts")
	    public ModelAndView viewAllProducts() {
		 ModelAndView mv = new ModelAndView();
		    mv.setViewName("viewproducts");
	        List<Product> products = farmerService.viewAllProducts();	        
	        mv.addObject("products", products);
	        return mv;	        
	    }
	    
	    @GetMapping("displayproductimage")
	    public ResponseEntity<byte[]> displayproductimage(@RequestParam int id) throws SQLException {
	    	Product product=farmerService.displayProductById(id);
	    	
	    	byte[]  imagesbytes=null;
	    	imagesbytes = product.getImage().getBytes(1, (int) product.getImage().length());
	    	return ResponseEntity.ok().contentType(org.springframework.http.MediaType.IMAGE_JPEG).body(imagesbytes);
	    }
	  
	    
}


	
