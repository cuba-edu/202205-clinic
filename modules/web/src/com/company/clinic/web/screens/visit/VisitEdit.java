package com.company.clinic.web.screens.visit;

import com.company.clinic.entity.Consumable;
import com.company.clinic.entity.Pet;
import com.company.clinic.entity.Veterinarian;
import com.company.clinic.entity.Visit;
import com.company.clinic.service.VisitService;
import com.company.clinic.web.util.ScreenHelper;
import com.haulmont.cuba.gui.components.PickerField;
import com.haulmont.cuba.gui.model.CollectionChangeType;
import com.haulmont.cuba.gui.model.CollectionContainer;
import com.haulmont.cuba.gui.model.InstanceContainer;
import com.haulmont.cuba.gui.screen.*;

import javax.inject.Inject;

@UiController("clinic_Visit.edit")
@UiDescriptor("visit-edit.xml")
@EditedEntityContainer("visitDc")
@LoadDataBeforeShow
public class VisitEdit extends StandardEditor<Visit> {

    @Inject
    private PickerField<Pet> petField;
    @Inject
    private PickerField<Veterinarian> veterinarianField;

    @Inject
    private VisitService visitService;
    @Inject
    private ScreenHelper screenHelper;

    @Subscribe
    public void onInit(InitEvent event) {
        screenHelper.setupPickerField(petField);
        screenHelper.setupPickerField(veterinarianField);
    }

    protected void refreshAmount() {
        Visit visit = getEditedEntity();
        visit.setAmount(visitService.calculateAmount(visit));
    }

    @Subscribe(id = "visitDc", target = Target.DATA_CONTAINER)
    public void onVisitDcItemPropertyChange(InstanceContainer.ItemPropertyChangeEvent<Visit> event) {
        if ("hoursSpent".equals(event.getProperty())) {
            refreshAmount();
        }
    }

    @Subscribe(id = "consumablesDc", target = Target.DATA_CONTAINER)
    public void onConsumablesDcCollectionChange(CollectionContainer.CollectionChangeEvent<Consumable> event) {
        if (event.getChangeType() != CollectionChangeType.REFRESH) {
            refreshAmount();
        }
    }
}