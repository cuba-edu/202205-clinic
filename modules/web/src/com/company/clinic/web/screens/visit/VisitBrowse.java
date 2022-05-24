package com.company.clinic.web.screens.visit;

import com.haulmont.cuba.gui.screen.*;
import com.company.clinic.entity.Visit;

import java.math.BigDecimal;

@UiController("clinic_Visit.browse")
@UiDescriptor("visit-browse.xml")
@LookupComponent("visitsTable")
@LoadDataBeforeShow
public class VisitBrowse extends StandardLookup<Visit> {

    @Install(to = "visitsTable", subject = "styleProvider")
    private String visitsTableStyleProvider(Visit entity, String property) {
        if (property == null && entity.getHoursSpent() >= 2) {
            return "long-visit";
        }

        if ("amount".equals(property)
                && entity.getAmount().compareTo(BigDecimal.valueOf(100)) > 0) {
            return "big-amount";
        }

        return null;
    }


}