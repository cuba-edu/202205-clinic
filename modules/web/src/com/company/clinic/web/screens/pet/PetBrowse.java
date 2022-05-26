package com.company.clinic.web.screens.pet;

import com.haulmont.cuba.gui.screen.*;
import com.company.clinic.entity.Pet;
import com.vaadin.ui.JavaScript;

@UiController("clinic_Pet.browse")
@UiDescriptor("pet-browse.xml")
@LookupComponent("petsTable")
@LoadDataBeforeShow
public class PetBrowse extends StandardLookup<Pet> {
    @Subscribe
    public void onInit(InitEvent event) {
        JavaScript.eval("alert(\"Test\")");
    }
}