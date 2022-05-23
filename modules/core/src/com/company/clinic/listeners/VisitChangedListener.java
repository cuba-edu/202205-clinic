package com.company.clinic.listeners;

import com.company.clinic.entity.Visit;

import java.util.UUID;

import com.google.common.base.Strings;
import com.haulmont.cuba.core.app.EmailService;
import com.haulmont.cuba.core.app.events.AttributeChanges;
import com.haulmont.cuba.core.app.events.EntityChangedEvent;
import com.haulmont.cuba.core.entity.contracts.Id;
import com.haulmont.cuba.core.global.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.event.TransactionPhase;
import org.springframework.transaction.event.TransactionalEventListener;

import javax.inject.Inject;

@Component("clinic_VisitChangedListener")
public class VisitChangedListener {

    private static final Logger log = LoggerFactory.getLogger(VisitChangedListener.class);

    @Inject
    private DataManager dataManager;
    @Inject
    private EmailService emailService;
    @Inject
    private MetadataTools metadataTools;

    @TransactionalEventListener(phase = TransactionPhase.AFTER_COMMIT)
    public void visitChanged(EntityChangedEvent<Visit, UUID> event) {
        AttributeChanges changes = event.getChanges();
        if (changes.isChanged("date")) {
            Id<Visit, UUID> entityId = event.getEntityId();
            Visit visit = dataManager.load(entityId).view("visit-edit").one();

            sendDateChangedEmail(visit);
        }
    }

    private void sendDateChangedEmail(Visit visit) {
        String email = visit.getVeterinarian().getUser().getEmail();
        if (!Strings.isNullOrEmpty(email)) {
            log.info("Email: " + createEmailBody(visit));

            /*EmailInfo emailInfo = EmailInfoBuilder.create()
                    .setAddresses(email)                        // recipients
                    .setCaption("Visit date has been changed")  // subject
                    .setBody(createEmailBody(visit))
                    .build();
            try {
                emailService.sendEmail(emailInfo);
            } catch (EmailException ignore) {
            }*/
        }
    }

    private String createEmailBody(Visit visit) {
        return "Pet: " + metadataTools.getInstanceName(visit.getPet()) +
                "\nDescription: " + visit.getDescription() +
                "\nNew date: " + visit.getDate();
    }
}