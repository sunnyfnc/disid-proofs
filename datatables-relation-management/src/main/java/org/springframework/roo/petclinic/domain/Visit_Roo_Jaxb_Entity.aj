// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.domain;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlIDREF;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.Vet;
import org.springframework.roo.petclinic.domain.Visit;
import org.springframework.roo.petclinic.domain.Visit_Roo_Jaxb_Entity;

privileged aspect Visit_Roo_Jaxb_Entity {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, Visit_Roo_Jaxb_Entity;
    
    declare @type: Visit: @XmlRootElement(name = "visit", namespace = "http://ws.petclinic.roo.springframework.org/");
    
    declare @method: public Pet Visit.getPet(): @XmlIDREF;
    
    declare @method: public Pet Visit.getPet(): @XmlElement(name = "pet");
    
    declare @method: public Vet Visit.getVet(): @XmlIDREF;
    
    declare @method: public Vet Visit.getVet(): @XmlElement(name = "vet");
    
    declare @method: public Long Visit.getId(): @XmlTransient;
    
    /**
     * Must return an unique ID across all entities
     * 
     * @return String
     */
    @XmlID
    @XmlAttribute(name = "id")
    public String Visit.getXmlIdentityInfo() {
        return getClass().getName() + ":" + getId();
    }
    
}
