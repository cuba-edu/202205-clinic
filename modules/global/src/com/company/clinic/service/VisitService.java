package com.company.clinic.service;

import com.company.clinic.entity.Pet;
import com.company.clinic.entity.Visit;
import com.haulmont.cuba.security.entity.User;

import java.math.BigDecimal;
import java.util.Date;

public interface VisitService {
    String NAME = "clinic_VisitService";

    BigDecimal calculateAmount(Visit visit);

    Visit scheduleVisit(Pet pet, Date date, User user);
}