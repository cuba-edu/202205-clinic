package com.company.clinic.entity;

import com.google.common.base.Strings;
import com.haulmont.chile.core.annotations.MetaProperty;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Listeners;
import com.haulmont.cuba.core.entity.annotation.PublishEntityChangedEvents;

import javax.annotation.PostConstruct;
import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;

@PublishEntityChangedEvents
@Listeners("clinic_VisitEntityListener")
@Table(name = "CLINIC_VISIT")
@Entity(name = "clinic_Visit")
@NamePattern("%s|description")
public class Visit extends StandardEntity {
    private static final long serialVersionUID = -8254124810105648524L;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PET_ID")
    private Pet pet;

    @NotNull
    @Column(name = "NUMBER_", nullable = false)
    private Long number;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "VETERINARIAN_ID")
    private Veterinarian veterinarian;

    @Temporal(TemporalType.TIMESTAMP)
    @NotNull
    @Column(name = "DATE_", nullable = false)
    private Date date;

    @NotNull
    @Lob
    @Column(name = "DESCRIPTION", nullable = false)
    private String description;

    @Column(name = "HOURS_SPENT")
    @Min(0)
    private Integer hoursSpent;

    @NotNull
    @Column(name = "AMOUNT", nullable = false)
    private BigDecimal amount;

    @JoinTable(name = "CLINIC_VISIT_CONSUMABLE_LINK",
            joinColumns = @JoinColumn(name = "VISIT_ID"),
            inverseJoinColumns = @JoinColumn(name = "CONSUMABLE_ID"))
    @ManyToMany
    private List<Consumable> consumables;

    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public List<Consumable> getConsumables() {
        return consumables;
    }

    public void setConsumables(List<Consumable> consumables) {
        this.consumables = consumables;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Integer getHoursSpent() {
        return hoursSpent;
    }

    public void setHoursSpent(Integer hoursSpent) {
        this.hoursSpent = hoursSpent;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Veterinarian getVeterinarian() {
        return veterinarian;
    }

    public void setVeterinarian(Veterinarian veterinarian) {
        this.veterinarian = veterinarian;
    }

    public Pet getPet() {
        return pet;
    }

    public void setPet(Pet pet) {
        this.pet = pet;
    }

    @MetaProperty(related = {"date", "hoursSpent"})
    public Date getEndDate() {
        if (date == null) {
            return null;
        }

        int visitLen = hoursSpent != null ? hoursSpent * 60 : 30;

        return Date.from(date.toInstant().plus(visitLen, ChronoUnit.MINUTES));
    }

    @MetaProperty(related = {"description", "pet"})
    public String getCaption() {
        StringBuilder sb = new StringBuilder();

        if (pet != null) {
            sb.append(pet.getName());
        }

        if (!Strings.isNullOrEmpty(description)) {
            sb.append(": ").append(description);
        }

        return sb.toString();
    }

    @PostConstruct
    public void postConstruct() {
        setAmount(BigDecimal.ZERO);
    }
}