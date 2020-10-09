package com.springMVCProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.springMVCProject.Entities.HousesAndAppartments;
import com.springMVCProject.Service.HousesAndAppartmentsService;

@Controller
public class HousesAndApartmentController {
	@Autowired
	private HousesAndAppartmentsService houseAndAppartmentsService;
	
	@RequestMapping("/postDetail")
	public String postDetail() {
		
		return "postDetail";
	}
	
	/* @ResponseBody */
	@RequestMapping(path="/postProcess", method = RequestMethod.POST)
	public String postProcess(HousesAndAppartments houseAndApartment,HttpSession session,Model m) {
		
		this.houseAndAppartmentsService.createHousesAndAppartments(houseAndApartment);
		session.setAttribute("houseAndApartment", houseAndApartment);
		m.addAttribute("msg", "Post Add Successfully...");
		return "postDetail";
	}
	
	@RequestMapping(path="/showpostdetails",method = RequestMethod.GET)
	public String showPostDetails(@RequestParam("id") int HAId,Model m) {
		HousesAndAppartments availableHouAndApart = this.houseAndAppartmentsService.getAllAvailableHouAndApart(HAId);
		
		List<HousesAndAppartments> AllavailableHouAndApart = this.houseAndAppartmentsService.getAllAvailableHouAndApart();
		m.addAttribute("relAds", AllavailableHouAndApart);
		
		m.addAttribute("HAById", availableHouAndApart);
		m.addAttribute("msg", HAId);
		return "showpostdetails";
	}
	
	@RequestMapping(path="/search",method = RequestMethod.GET)
	public String search(@RequestParam("search") String search,Model model) {
		
		List<HousesAndAppartments> searchAllAvailableHousesAndApartment = this.houseAndAppartmentsService.searchAllAvailableHousesAndApartment(search);
		if(searchAllAvailableHousesAndApartment.isEmpty()) {
			model.addAttribute("res", "no result found");
			model.addAttribute("result", searchAllAvailableHousesAndApartment);
		}else {
			model.addAttribute("result", searchAllAvailableHousesAndApartment);
		}
		
//		for(HousesAndAppartments h:searchAllAvailableHousesAndApartment) {
//			System.out.println(h.getHAId());
//		}
//		model.addAttribute("res", search);
		return "searchresult";
	}
	
//	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
//	@ExceptionHandler(value = Exception.class)
//	public String exceptionhandler() {
//		
//		return "exp-page";
//	}
}
