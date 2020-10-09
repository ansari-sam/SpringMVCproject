package com.springMVCProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.springMVCProject.Entities.CardDetails;
import com.springMVCProject.Service.CardDetailsService;

@Controller
public class CardController {
	@Autowired
	private CardDetailsService cardService;
	
	@PostMapping("/cardField")
	public String CardField(CardDetails cardDetails) {
		
		
		this.cardService.createCardDetails(cardDetails);
		
		return "cardDet";
	}
}
