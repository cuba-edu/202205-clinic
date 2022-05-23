package com.company.clinic.core.group;

import com.company.clinic.entity.Visit;
import com.haulmont.cuba.security.app.group.AnnotatedAccessGroupDefinition;
import com.haulmont.cuba.security.app.group.annotation.AccessGroup;
import com.haulmont.cuba.security.app.group.annotation.JpqlConstraint;
import com.haulmont.cuba.security.group.ConstraintsContainer;

@AccessGroup(name = VeterinariansGroup.NAME)
public class VeterinariansGroup extends AnnotatedAccessGroupDefinition {

    public static final String NAME = "Veterinarians";

    @JpqlConstraint(target = Visit.class, where = "{E}.veterinarian.user.id = :session$userId")
    @Override
    public ConstraintsContainer accessConstraints() {
        return super.accessConstraints();
    }
}
