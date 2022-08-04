package kr.mr.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.VehicleMapper;
import kr.mr.mapper.WishMapper;
import kr.mr.model.CategoryDTO;
import kr.mr.model.VehicleDTO;
import kr.mr.model.WishDTO;


@Controller
public class WishListController {
	
	@Autowired
	   private WishMapper wishMapper;
	   
	   
	   @RequestMapping("/wishList.do") 
	      public String wishInsert(int cNum,String id,HttpSession session ,HttpServletRequest request,  Model model) {
		   
		   System.out.println("id : "+id);
		   
		   WishDTO wDto = new WishDTO();
		   
	   
		   wDto.setcNum(cNum);
		   wDto.setId(id);
		   
		   if(wDto != null && cNum > -1 && id != null && id != "") {
			   

		   wishMapper.wishInsert(wDto);
		   
		   List<WishDTO> wishList =  wishMapper.wishList();
			/* model.addAttribute("wishList", wishList); */
		   
		   request.setAttribute("wishList", wishList);
		   
		   wishList.toString();
		   
		   
		   
		   return "wish/wish_list"; 
		   
		   
		   
		   
		   
		   
		   
		   }else {
			   System.out.println("로그인안하면 실패!");
			   
			   session.setAttribute("WishInsertFail", "로그인에 실패했습니다!");
			   return "redirect:/home.do";
		   }

	          
	   }  

	}