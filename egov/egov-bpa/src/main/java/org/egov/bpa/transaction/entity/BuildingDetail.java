/**
 * eGov suite of products aim to improve the internal efficiency,transparency,
   accountability and the service delivery of the government  organizations.
    Copyright (C) <2015>  eGovernments Foundation
    The updated version of eGov suite of products as by eGovernments Foundation
    is available at http://www.egovernments.org
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program. If not, see http://www.gnu.org/licenses/ or
    http://www.gnu.org/licenses/gpl.html .
    In addition to the terms of the GPL license to be adhered to in using this
    program, the following additional terms are to be complied with:
        1) All versions of this program, verbatim or modified must carry this
           Legal Notice.
        2) Any misrepresentation of the origin of the material is prohibited. It
           is required that all modified versions of this material be marked in
           reasonable ways as different from the original version.
        3) This license does not grant any rights to any user of the program
           with regards to rights under trademark law for use of the trade names
           or trademarks of eGovernments Foundation.
  In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
 */
package org.egov.bpa.transaction.entity;

import org.egov.bpa.master.entity.BuildingCategory;
import org.egov.infra.persistence.entity.AbstractAuditable;
import org.hibernate.validator.constraints.Length;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "EGBPA_BUILDINGDETAIL")
@SequenceGenerator(name = BuildingDetail.SEQEGBPABUILDINGDETAIL, sequenceName = BuildingDetail.SEQEGBPABUILDINGDETAIL, allocationSize = 1)
public class BuildingDetail extends AbstractAuditable {
    private static final long serialVersionUID = 3078684328383202788L;
    public static final String SEQEGBPABUILDINGDETAIL = "SEQ_EGBPA_BUILDINGDETAIL";
    @Id
    @GeneratedValue(generator = SEQEGBPABUILDINGDETAIL, strategy = GenerationType.SEQUENCE)
    private Long id;
    private String name;
    private Integer number;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @Valid
    @NotNull
    @JoinColumn(name = "application", nullable = false)
    private BpaApplication application;
    private Integer unitCount;
    @Length(min = 1, max = 128)
    private String unitClassification;
    private Integer floorCount;
    private Integer noofbasementUnit;
    private BigDecimal buildingheightGround;
    private BigDecimal buildingheightFloor;
    private Integer noofupperFloor;
    private Integer noofdwellingUnit;
    private Boolean isGroudFloor;
    private Boolean isStiltFloor;
    private Boolean isMezzanineFloor;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "existBldgcategory")
    private BuildingCategory existBldgCategory;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "proposedBldgCategory")
    private BuildingCategory proposedBldgCategory;
    private BigDecimal proposedSitalinSqmt;
    private BigDecimal proposedfloorArea;
    private BigDecimal totalPlintArea;
    private BigDecimal totalSlab;
    private BigDecimal machineRoom;
    private BigDecimal heightFromGroundWithStairRoom;
    private BigDecimal heightFromGroundWithOutStairRoom;
    private BigDecimal fromStreetLevelWithStairRoom;
    private BigDecimal fromStreetLevelWithOutStairRoom;
    private String townPlanningZone;
    private String crzZone;
    @OneToMany(mappedBy = "buildingDetail", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @OrderBy("orderOfFloor")
    private List<ApplicationFloorDetail> applicationFloorDetails = new ArrayList<>(0);
    private Boolean additionalFeePaymentAccepted;
    private transient List<ApplicationFloorDetail> applicationFloorDetailsForUpdate = new ArrayList<>(0);
    private transient List<ApplicationFloorDetail> buildingFloorDetailsByEdcr = new ArrayList<>(0);
    private transient Long[] deletedFloorIds;

    public Boolean getAdditionalFeePaymentAccepted() {
        return additionalFeePaymentAccepted;
    }

    public void setAdditionalFeePaymentAccepted(Boolean additionalFeePaymentAccepted) {
        this.additionalFeePaymentAccepted = additionalFeePaymentAccepted;
    }

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(final Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getUnitCount() {
        return unitCount;
    }

    public void setUnitCount(final Integer unitCount) {
        this.unitCount = unitCount;
    }

    public String getUnitClassification() {
        return unitClassification;
    }

    public void setUnitClassification(final String unitClassification) {
        this.unitClassification = unitClassification;
    }

    public Integer getFloorCount() {
        return floorCount;
    }

    public void setFloorCount(final Integer floorCount) {
        this.floorCount = floorCount;
    }

    public Integer getNoofbasementUnit() {
        return noofbasementUnit;
    }

    public void setNoofbasementUnit(final Integer noofbasementUnit) {
        this.noofbasementUnit = noofbasementUnit;
    }

    public BigDecimal getBuildingheightGround() {
        return buildingheightGround;
    }

    public void setBuildingheightGround(final BigDecimal buildingheightGround) {
        this.buildingheightGround = buildingheightGround;
    }

    public Integer getNoofupperFloor() {
        return noofupperFloor;
    }

    public void setNoofupperFloor(final Integer noofupperFloor) {
        this.noofupperFloor = noofupperFloor;
    }

    public Integer getNoofdwellingUnit() {
        return noofdwellingUnit;
    }

    public void setNoofdwellingUnit(final Integer noofdwellingUnit) {
        this.noofdwellingUnit = noofdwellingUnit;
    }

    public Boolean getIsGroudFloor() {
        return isGroudFloor;
    }

    public void setIsGroudFloor(final Boolean isGroudFloor) {
        this.isGroudFloor = isGroudFloor;
    }

    public Boolean getIsStiltFloor() {
        return isStiltFloor;
    }

    public void setIsStiltFloor(final Boolean isStiltFloor) {
        this.isStiltFloor = isStiltFloor;
    }

    public Boolean getIsMezzanineFloor() {
        return isMezzanineFloor;
    }

    public void setIsMezzanineFloor(final Boolean isMezzanineFloor) {
        this.isMezzanineFloor = isMezzanineFloor;
    }

    public BigDecimal getProposedSitalinSqmt() {
        return proposedSitalinSqmt;
    }

    public void setProposedSitalinSqmt(final BigDecimal proposedSitalinSqmt) {
        this.proposedSitalinSqmt = proposedSitalinSqmt;
    }

    public BigDecimal getProposedfloorArea() {
        return proposedfloorArea;
    }

    public void setProposedfloorArea(final BigDecimal proposedfloorArea) {
        this.proposedfloorArea = proposedfloorArea;
    }

    public BigDecimal getTotalPlintArea() {
        return totalPlintArea;
    }

    public void setTotalPlintArea(final BigDecimal totalPlintArea) {
        this.totalPlintArea = totalPlintArea;
    }

    public BigDecimal getTotalSlab() {
        return totalSlab;
    }

    public void setTotalSlab(final BigDecimal totalSlab) {
        this.totalSlab = totalSlab;
    }

    public BpaApplication getApplication() {
        return application;
    }

    public void setApplication(final BpaApplication application) {
        this.application = application;
    }

    public void setBuildingheightFloor(final BigDecimal buildingheightFloor) {
        this.buildingheightFloor = buildingheightFloor;
    }

    public BigDecimal getBuildingheightFloor() {
        return buildingheightFloor;
    }

    public BuildingCategory getExistBldgCategory() {
        return existBldgCategory;
    }

    public void setExistBldgCategory(final BuildingCategory existBldgCategory) {
        this.existBldgCategory = existBldgCategory;
    }

    public BuildingCategory getProposedBldgCategory() {
        return proposedBldgCategory;
    }

    public void setProposedBldgCategory(final BuildingCategory proposedBldgCategory) {
        this.proposedBldgCategory = proposedBldgCategory;
    }

    public List<ApplicationFloorDetail> getApplicationFloorDetails() {
        return applicationFloorDetails;
    }

    public void setApplicationFloorDetails(List<ApplicationFloorDetail> applicationFloorDetails) {
        this.applicationFloorDetails = applicationFloorDetails;
    }

    public BigDecimal getMachineRoom() {
        return machineRoom;
    }

    public void setMachineRoom(BigDecimal machineRoom) {
        this.machineRoom = machineRoom;
    }

    public BigDecimal getHeightFromGroundWithStairRoom() {
        return heightFromGroundWithStairRoom;
    }

    public void setHeightFromGroundWithStairRoom(BigDecimal heightFromGroundWithStairRoom) {
        this.heightFromGroundWithStairRoom = heightFromGroundWithStairRoom;
    }

    public BigDecimal getHeightFromGroundWithOutStairRoom() {
        return heightFromGroundWithOutStairRoom;
    }

    public void setHeightFromGroundWithOutStairRoom(BigDecimal heightFromGroundWithOutStairRoom) {
        this.heightFromGroundWithOutStairRoom = heightFromGroundWithOutStairRoom;
    }

    public BigDecimal getFromStreetLevelWithStairRoom() {
        return fromStreetLevelWithStairRoom;
    }

    public void setFromStreetLevelWithStairRoom(BigDecimal fromStreetLevelWithStairRoom) {
        this.fromStreetLevelWithStairRoom = fromStreetLevelWithStairRoom;
    }

    public BigDecimal getFromStreetLevelWithOutStairRoom() {
        return fromStreetLevelWithOutStairRoom;
    }

    public void setFromStreetLevelWithOutStairRoom(BigDecimal fromStreetLevelWithOutStairRoom) {
        this.fromStreetLevelWithOutStairRoom = fromStreetLevelWithOutStairRoom;
    }

    public String getTownPlanningZone() {
        return townPlanningZone;
    }

    public void setTownPlanningZone(String townPlanningZone) {
        this.townPlanningZone = townPlanningZone;
    }

    public String getCrzZone() {
        return crzZone;
    }

    public void setCrzZone(String crzZone) {
        this.crzZone = crzZone;
    }
    
    public List<ApplicationFloorDetail> getApplicationFloorDetailsForUpdate() {
        return applicationFloorDetailsForUpdate;
    }

    public void setApplicationFloorDetailsForUpdate(List<ApplicationFloorDetail> applicationFloorDetailsForUpdate) {
        this.applicationFloorDetailsForUpdate = applicationFloorDetailsForUpdate;
    }

    public Long[] getDeletedFloorIds() {
        return deletedFloorIds;
    }

    public void setDeletedFloorIds(Long[] deletedFloorIds) {
        this.deletedFloorIds = deletedFloorIds;
    }
    
    public void delete(final List<ApplicationFloorDetail> applicationFloorDetail) {
        if(applicationFloorDetail != null)
            this.applicationFloorDetails.removeAll(applicationFloorDetail);
    }

    public List<ApplicationFloorDetail> getBuildingFloorDetailsByEdcr() {
        return buildingFloorDetailsByEdcr;
    }

    public void setBuildingFloorDetailsByEdcr(List<ApplicationFloorDetail> buildingFloorDetailsByEdcr) {
        this.buildingFloorDetailsByEdcr = buildingFloorDetailsByEdcr;
    }
}
