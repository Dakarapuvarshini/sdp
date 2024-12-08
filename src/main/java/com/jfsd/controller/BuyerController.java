package com.jfsd.controller;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;
import com.jfsd.model.Buyer;
import com.jfsd.model.Product;
import com.jfsd.service.BuyerService;
import com.jfsd.service.FarmerService;
import com.jfsd.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class BuyerController 
{
	@Autowired
	private BuyerService buyerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private FarmerService farmerService;
	private Buyer buyer;
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("buyerreg")
	public ModelAndView buyerreg()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("buyerreg");
		return mv;
	}
	@PostMapping("insertbuyer")
	public ModelAndView insertbuyer(HttpServletRequest request) 
	{
		Buyer buyer = new Buyer();	
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String contact = request.getParameter("contactno");
		String location = request.getParameter("location");
		System.out.println(id);
		System.out.println(name);
		System.out.println(email);
		System.out.println(password);
		System.out.println(contact);
		System.out.println(location);
		buyer.setId(id);
		buyer.setName(name);
		buyer.setEmail(email);
		buyer.setPassword(password);
		buyer.setLocation(location);
		buyer.setContactno(contact);
	    String message = buyerService.buyerRegisteration(buyer);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("buyerregsuc");
	    mv.addObject("message", message);
	    return mv;
	}
	 @GetMapping("/buyerhome")
	    public ModelAndView buyerHome(@RequestParam(value = "location", required = false) String location) {
	        ModelAndView mv= new ModelAndView("buyerhome");
	        List<Product> allProducts = productService.getAllProducts();
	        List<String> locations = allProducts.stream()
	                .map(Product::getLocation)
	                .distinct()
	                .collect(Collectors.toList());
	        List<Product> filteredProducts = location == null || location.isEmpty() ?
	                allProducts : 
	                allProducts.stream()
	                        .filter(product -> product.getLocation().equalsIgnoreCase(location))
	                        .collect(Collectors.toList());

	        mv.addObject("locations", locations);
	        mv.addObject("selectedLocation", location);
	        mv.addObject("products", filteredProducts);

	        return mv;
	    }
	 @PostMapping("/checkbuyerLogin")
	 public ModelAndView checkbuyerLogin(HttpServletRequest request) {
	     ModelAndView mv = new ModelAndView();
	     String cemail = request.getParameter("bemail");
	     String cpwd = request.getParameter("bpwd");
	     Buyer buyer = buyerService.checkBuyerLogin(cemail, cpwd);
	     if (buyer != null) 
	     {
	         HttpSession session = request.getSession();
	         session.setAttribute("buyer", buyer);
	         mv.setViewName("buyerhome");
	     } 
	     else
	     {
	         mv.setViewName("buyerlogin");
	         mv.addObject("message", "Login failed! Please check your credentials.");
	     }
	     return mv;
	 }
	 @GetMapping("buyerlogout")
		public ModelAndView buyerlogout()
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("buyerlogin");
			return mv;
		}   
	     @GetMapping("/buyer")
	     public String buyerPage()
	     {
	         return "buyer"; 
	     }
	     @GetMapping("/viewbuyer")
		    public ModelAndView viewBuyers() 
	     {
			 ModelAndView mv = new ModelAndView();
			    mv.setViewName("viewbuyer");
			    List<Buyer> buyers=buyerService.getAllBuyers();	
		        mv.addObject("buyerlist", buyers);
		        return mv;
		    }
	         @GetMapping("updateproduct/{id}")
	         public ModelAndView showUpdateProductForm(@PathVariable("id") int fid)
	         {
	        	 ModelAndView mv = new ModelAndView();
	        	 mv.setViewName("updateproduct");
	     		mv.addObject("id",fid);	     		
	     		return mv;
	         }
	         @PostMapping("/updatepro")
	         public ModelAndView updateProductDetails(HttpServletRequest request) {
	             ModelAndView mv = new ModelAndView("updateproduct");
	             try {
	                 Long productId = Long.parseLong(request.getParameter("pid"));
	                 Double price = Double.parseDouble(request.getParameter("pprice"));
	                 Long quantity = Long.parseLong(request.getParameter("pquantity"));
	                 String unit = request.getParameter("punit");

	                 Product product = productService.findById(productId);
	                 if (product == null) {
	                     mv.addObject("errorMessage", "Product not found.");
	                     return mv;
	                 }

	                 product.setPrice(price);
	                 product.setQuantity(quantity);
	                 product.setUnit(unit);
	                 productService.updateProduct(product);

	                 mv.addObject("successMessage", "Product updated successfully!");
	             } catch (NumberFormatException e) 
	             {
	                 mv.addObject("errorMessage", "Invalid input! Please check the values.");
	             
	             } catch (Exception e) 
	             {
	                 mv.addObject("errorMessage", "An unexpected error occurred.");
	             }
	             return mv;
	         }

	         @PostMapping("/removeFromCart")
	         public String removeFromCart(@RequestParam("productId") Long productId, HttpSession session) {          
	             List<Product> cart = (List<Product>) session.getAttribute("cart");
	             if (cart != null) {
	                 cart.removeIf(product -> product.getId().equals(productId));
	                 session.setAttribute("cart", cart);
	             }
	             return "redirect:/cart.jsp";
	         }     
	     @GetMapping("buyerprofile")
	 	public ModelAndView customerprofile(){	
	 		ModelAndView mv=new ModelAndView();
	 		mv.setViewName("buyerprofile");
	 		return mv;
	 	}
	     @PostMapping("/addToCart")
	     public ModelAndView addToCart(@RequestParam("productId") int productId, @RequestParam("quantity") int quantity, HttpSession session) {
	         List<Product> cart = (List<Product>) session.getAttribute("cart");

	         if (cart == null) {
	             cart = new ArrayList<>();
	         }
	         Product product = productService.getAllProducts()
	                                         .stream()
	                                         .filter(p -> p.getId() == productId)
	                                         .findFirst()
	                                         .orElse(null);

	         if (product != null) {
	         
	             Optional<Product> existingProductOpt = cart.stream().filter(p -> p.getId() == productId).findFirst();
	             if (existingProductOpt.isPresent()) {
	              
	                 Product existingProduct = existingProductOpt.get();
	                 existingProduct.setQuantity(existingProduct.getQuantity() + quantity); 
	             } else {

	                 product.setQuantity(quantity);
	                 cart.add(product);
	             }
	         }
	         session.setAttribute("cart", cart);
	         ModelAndView modelAndView = new ModelAndView("redirect:/cart.jsp");
	         return modelAndView;
	     }
	     @PostMapping("/addToWishlist")
	     public ModelAndView addToWishlist(@RequestParam("productId") int productId, HttpSession session) { 
	         List<Product> wishlist = (List<Product>) session.getAttribute("wishlist");
	         if (wishlist == null) {
	             wishlist = new ArrayList<>();
	         }
	         Product product = productService.getAllProducts()
	                                         .stream()
	                                         .filter(p -> p.getId() == productId)
	                                         .findFirst()
	                                         .orElse(null);	         
	         if (product != null && !wishlist.contains(product)) {
	             wishlist.add(product);
	         }
	         session.setAttribute("wishlist", wishlist);
	         ModelAndView modelAndView = new ModelAndView("redirect:/wishlist.jsp");
	         return modelAndView;
	     }
}