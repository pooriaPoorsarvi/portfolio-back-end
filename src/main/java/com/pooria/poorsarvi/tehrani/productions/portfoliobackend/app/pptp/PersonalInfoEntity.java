package com.pooria.poorsarvi.tehrani.productions.portfoliobackend.app.pptp;

public class PersonalInfoEntity {
    public String phoneNumber;
    public String address;
    public String emailAddress;

    public PersonalInfoEntity() {
    }

    public PersonalInfoEntity(String phoneNumber, String address, String emailAddress) {
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.emailAddress = emailAddress;
    }
}
