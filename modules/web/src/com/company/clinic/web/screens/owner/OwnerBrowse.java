package com.company.clinic.web.screens.owner;

import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.components.Action;
import com.haulmont.cuba.gui.components.GroupTable;
import com.haulmont.cuba.gui.components.actions.BaseAction;
import com.haulmont.cuba.gui.screen.*;
import com.company.clinic.entity.Owner;

import javax.inject.Inject;
import javax.inject.Named;

@UiController("clinic_Owner.browse")
@UiDescriptor("owner-browse.xml")
@LookupComponent("ownersTable")
@LoadDataBeforeShow
public class OwnerBrowse extends StandardLookup<Owner> {

    @Inject
    private GroupTable<Owner> ownersTable;

    @Inject
    private Notifications notifications;

    @Named("ownersTable.greet")
    private BaseAction ownersTableGreet;

    @Subscribe
    public void onInit(InitEvent event) {
        // this is available for all versions
        /*ownersTableGreet.addActionPerformedListener(actionPerformedEvent -> {
            Owner selected = ownersTable.getSingleSelected();
            if (selected != null) {
                notifications.create()
                        .withCaption("Hello, " + selected.getName())
                        .show();
            }
        });*/
    }

    @Subscribe("ownersTable.greet")       // Since 7.0
    public void onOwnersTableGreet(Action.ActionPerformedEvent event) {
        Owner selected = ownersTable.getSingleSelected();
        if (selected != null) {
            notifications.create()
                    .withCaption("Hello, " + selected.getName())
                    .show();
        }
    }
}