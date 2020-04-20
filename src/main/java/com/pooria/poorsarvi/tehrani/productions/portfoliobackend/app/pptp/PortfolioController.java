package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.pptp;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PortfolioController {

  @CrossOrigin()
  @GetMapping("/phone-number")
  public PersonalInfoEntity GetPhoneNumber() {
    return new PersonalInfoEntity(
        "+1 (416) 807 9017", "Toronto, On", "pooria.poorsarvi.tehrani@mail.utoronto.ca");
  }
}
