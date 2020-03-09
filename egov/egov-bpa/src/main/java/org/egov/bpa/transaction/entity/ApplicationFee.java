/*
 * eGov suite of products aim to improve the internal efficiency,transparency,
 * accountability and the service delivery of the government  organizations.
 *
 *  Copyright (C) 2017  eGovernments Foundation
 *
 *  The updated version of eGov suite of products as by eGovernments Foundation
 *  is available at http://www.egovernments.org
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see http://www.gnu.org/licenses/ or
 *  http://www.gnu.org/licenses/gpl.html .
 *
 *  In addition to the terms of the GPL license to be adhered to in using this
 *  program, the following additional terms are to be complied with:
 *
 *      1) All versions of this program, verbatim or modified must carry this
 *         Legal Notice.
 *
 *      2) Any misrepresentation of the origin of the material is prohibited. It
 *         is required that all modified versions of this material be marked in
 *         reasonable ways as different from the original version.
 *
 *      3) This license does not grant any rights to any user of the program
 *         with regards to rights under trademark law for use of the trade names
 *         or trademarks of eGovernments Foundation.
 *
 *  In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
 */
package org.egov.bpa.transaction.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.egov.infra.workflow.entity.StateAware;
import org.egov.pims.commons.Position;
import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "EGBPA_APPLICATION_FEE")
@SequenceGenerator(name = ApplicationFee.SEQ_APPLICATIONFEE, sequenceName = ApplicationFee.SEQ_APPLICATIONFEE, allocationSize = 1)
public class ApplicationFee extends StateAware<Position> {

    public static final String SEQ_APPLICATIONFEE = "SEQ_EGBPA_APPLICATION_FEE";
    private static final long serialVersionUID = 3078684328383202788L;
    @Id
    @GeneratedValue(generator = SEQ_APPLICATIONFEE, strategy = GenerationType.SEQUENCE)
    private Long id;
    @NotNull
    private Date feeDate;
    @Length(min = 1, max = 1024)
    private String feeRemarks;
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "status")
    private BpaStatus status;
   
    @Length(min = 1, max = 128)
    private String challanNumber;
    @OrderBy("id ASC")
    @OneToMany(mappedBy = "applicationFee", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ApplicationFeeDetail> applicationFeeDetail = new ArrayList<>();
  
    private Boolean isRevised = false;
    @Length(min = 1, max = 512)
    private String modifyFeeReason;

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(final Long id) {
        this.id = id;
    }

    public Date getFeeDate() {
        return feeDate;
    }

    public void setFeeDate(final Date feeDate) {
        this.feeDate = feeDate;
    }

    public String getFeeRemarks() {
        return feeRemarks;
    }

    public void setFeeRemarks(final String feeRemarks) {
        this.feeRemarks = feeRemarks;
    }

    public BpaStatus getStatus() {
        return status;
    }

    public void setStatus(final BpaStatus status) {
        this.status = status;
    }

	public String getChallanNumber() {
        return challanNumber;
    }

    public void setChallanNumber(final String challanNumber) {
        this.challanNumber = challanNumber;
    }

    @Override
    public String getStateDetails() {
        return "";
    }

    public List<ApplicationFeeDetail> getApplicationFeeDetail() {
        return applicationFeeDetail;
    }

    public void setApplicationFeeDetail(final List<ApplicationFeeDetail> applicationFeeDetail) {
        this.applicationFeeDetail = applicationFeeDetail;
    }
   
    public Boolean getIsRevised() {
        return isRevised;
    }

    public void setIsRevised(Boolean isRevised) {
        this.isRevised = isRevised;
    }

    public String getModifyFeeReason() {
        return modifyFeeReason;
    }

    public void setModifyFeeReason(String modifyFeeReason) {
        this.modifyFeeReason = modifyFeeReason;
    }

    public void addApplicationFeeDetail(ApplicationFeeDetail applicationFeeDtl) {
        if (this.applicationFeeDetail != null)
            this.applicationFeeDetail.add(applicationFeeDtl);
    }
}