package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.ReserveMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.VehicleDTO;


@Controller
public class RentController {
	
	@Autowired
	   private VehicleMapper vehicleMapper;
	
	@Autowired
	private ReserveMapper reserveMapper;
	   
	   
	   @RequestMapping("/oneDayCar.do") 
	      public String DayCar(Model model) {
	  
	      List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();	  
	      model.addAttribute("vehicleList", vehicleList);
	  
	       return "rental/oneDayCar"; 
	          
	   }  
	   
	   @RequestMapping("/longDayCar.do") 
	   public String LongDayCar(Model model) {
		   
		   List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();	  
		   model.addAttribute("vehicleList", vehicleList);
		   
		   return "rental/longDayCar"; 
		   
	   }  
	   
	   
	   
	   @RequestMapping("/paymentOk.do") 
	   public String paymentOk(Model model,int cNum) {
		   
			VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
			
			model.addAttribute("vDto", vDto);
		   
		   return "rental/paymentOk"; 
		   
	   }  
	   	   
	   
	   
	   
	   
	   
	   

	}