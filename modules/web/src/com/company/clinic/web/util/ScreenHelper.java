package com.company.clinic.web.util;

import com.haulmont.cuba.gui.actions.picker.ClearAction;
import com.haulmont.cuba.gui.actions.picker.LookupAction;
import com.haulmont.cuba.gui.actions.picker.OpenAction;
import com.haulmont.cuba.gui.components.Actions;
import com.haulmont.cuba.gui.components.PickerField;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

@Component(ScreenHelper.NAME)
public class ScreenHelper {
    public static final String NAME = "clinic_ScreenHelper";

    @Inject
    private Actions actions;

    public void setupPickerField(PickerField<?> field) {
        field.removeAllActions();

        field.addAction(actions.create(LookupAction.ID));
        field.addAction(actions.create(OpenAction.ID));
        field.addAction(actions.create(ClearAction.ID));
    }

}
