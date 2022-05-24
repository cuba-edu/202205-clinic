package com.company.clinic.web.screens.app.mainscreen;

import com.company.clinic.entity.Pet;
import com.company.clinic.entity.Visit;
import com.company.clinic.service.VisitService;
import com.haulmont.cuba.core.entity.Entity;
import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.ScreenBuilders;
import com.haulmont.cuba.gui.components.Action;
import com.haulmont.cuba.gui.components.Calendar;
import com.haulmont.cuba.gui.components.DateField;
import com.haulmont.cuba.gui.components.LookupField;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.*;
import com.haulmont.cuba.security.global.UserSession;
import com.haulmont.cuba.web.app.main.MainScreen;

import javax.inject.Inject;
import java.util.Date;


@UiController("extMainScreen")
@UiDescriptor("ext-main-screen.xml")
@LoadDataBeforeShow
public class ExtMainScreen extends MainScreen {

    @Inject
    private CollectionLoader<Pet> petsDl;
    @Inject
    private CollectionLoader<Visit> visitsDl;

    @Inject
    private DateField<Date> dateSelector;
    @Inject
    private LookupField<Pet> petSelector;

    @Inject
    private VisitService visitService;

    @Inject
    private UserSession userSession;

    @Inject
    private Notifications notifications;

    @Inject
    private ScreenBuilders screenBuilders;

    @Subscribe("visitsCalendar")
    public void onVisitsCalendarCalendarEventClick(Calendar.CalendarEventClickEvent<Date> event) {
        Visit visit = ((Visit) event.getEntity());

        if (visit == null) {
            return;
        }

        Screen screen = screenBuilders.editor(Visit.class, this)
                .editEntity(visit)
                .withOpenMode(OpenMode.DIALOG)
                .build();

        screen.addAfterCloseListener(afterCloseEvent -> {
            if (afterCloseEvent.closedWith(StandardOutcome.COMMIT)) {
                visitsDl.load();
            }
        });

        screen.show();
    }



    @Subscribe("refresh")
    public void onRefresh(Action.ActionPerformedEvent event) {
        petsDl.load();
        visitsDl.load();
    }

    @Subscribe("schedule")
    public void onSchedule(Action.ActionPerformedEvent event) {
        if (petSelector.getValue() == null
                || dateSelector.getValue() == null) {
            notifications.create()
                    .withCaption("Please fill all the fields")
                    .withType(Notifications.NotificationType.WARNING)
                    .show();
            return;
        }

        visitService.scheduleVisit(
                petSelector.getValue(),
                dateSelector.getValue(),
                userSession.getCurrentOrSubstitutedUser()
        );

        visitsDl.load();

        petSelector.setValue(null);
        dateSelector.setValue(null);
    }


}