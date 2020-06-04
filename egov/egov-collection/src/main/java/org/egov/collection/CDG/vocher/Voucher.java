package org.egov.collection.CDG.vocher;

import java.text.SimpleDateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.egov.commons.CGeneralLedger;
import org.egov.commons.CVoucherHeader;
import org.egov.egf.contract.model.AccountDetailContract;
import org.egov.egf.contract.model.EgwStatusContract;
import org.egov.egf.contract.model.FiscalPeriodContract;
import org.egov.egf.contract.model.FunctionContract;
import org.egov.egf.contract.model.FunctionaryContract;
import org.egov.egf.contract.model.FundContract;
import org.egov.egf.contract.model.FundsourceContract;
import org.egov.egf.contract.model.SchemeContract;

public class Voucher {

	private Long id;
	private String name;
	private String type;
	private String voucherNumber;
	private String description;
	private String voucherDate;
	private FundContract fund;
	private FunctionContract function;
	private FiscalPeriodContract fiscalPeriod;
	private EgwStatusContract status;
	private Long originalVhId;
	private Long refVhId;
	private String cgvn;
	private Long moduleId;
	private String department;
	private String source;
	private SchemeContract scheme;
//	private SubSchemeContract subScheme;
	private FunctionaryContract functionary;
	private FundsourceContract fundsource;
	private List<AccountDetailContract> ledgers = new ArrayList<>(0);
	// this is only to keep standard .As of now this field is not used
	private String tenantId;
	private String serviceName;
	private String referenceDocument;

	public Voucher(CVoucherHeader vh) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		this.voucherNumber = vh.getVoucherNumber();
		this.voucherDate = sdf.format(vh.getVoucherDate());
	//	this.fund = new FundContract().code(vh.getFundId().getCode());
		this.id = vh.getId();
		this.cgvn = vh.getCgvn();
	//	this.department = vh.getVouchermis().getDepartmentcode();
		if(vh.getVouchermis().getFunction()!=null)
	//	this.function=new FunctionContract().code(vh.getVouchermis().getFunction().getCode());
		this.type = vh.getType();
		this.name = vh.getName();
		if (vh.getModuleId() != null)
			this.moduleId = Long.valueOf(vh.getModuleId());
	//	this.status = new EgwStatusContract().code(vh.getStatus());
		for (CGeneralLedger gl : vh.getGeneralLedger()) {

	//		this.getLedgers().add(new AccountDetailContract(gl));
		}
	//	this.setServiceName(vh.getVouchermis().getServiceName());
	//	this.setReferenceDocument(vh.getVouchermis().getReferenceDocument());
	}

	public Voucher() {
		super();
	}

	public String getTenantId() {
		return tenantId;
	}

	public void setTenantId(String tenantId) {
		this.tenantId = tenantId;
	}

	public String getName() {
		return name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(final String type) {
		this.type = type;
	}

	public String getVoucherNumber() {
		return voucherNumber;
	}

	public void setVoucherNumber(final String voucherNumber) {
		this.voucherNumber = voucherNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(final String description) {
		this.description = description;
	}

	public String getVoucherDate() {
		return voucherDate;
	}

	public void setVoucherDate(final String voucherDate) {
		this.voucherDate = voucherDate;
	}

	public FundContract getFund() {
		return fund;
	}

	public void setFund(final FundContract fund) {
		this.fund = fund;
	}

	public FunctionContract getFunction() {
		return function;
	}

	public void setFunction(FunctionContract function) {
		this.function = function;
	}

	public FiscalPeriodContract getFiscalPeriod() {
		return fiscalPeriod;
	}

	public void setFiscalPeriod(final FiscalPeriodContract fiscalPeriod) {
		this.fiscalPeriod = fiscalPeriod;
	}

	public EgwStatusContract getStatus() {
		return status;
	}

	public void setStatus(final EgwStatusContract status) {
		this.status = status;
	}

	public Long getOriginalVhId() {
		return originalVhId;
	}

	public void setOriginalVhId(final Long originalVhId) {
		this.originalVhId = originalVhId;
	}

	public Long getRefVhId() {
		return refVhId;
	}

	public void setRefVhId(final Long refVhId) {
		this.refVhId = refVhId;
	}

	public String getCgvn() {
		return cgvn;
	}

	public void setCgvn(final String cgvn) {
		this.cgvn = cgvn;
	}

	public Long getModuleId() {
		return moduleId;
	}

	public void setModuleId(final Long moduleId) {
		this.moduleId = moduleId;
	}

	public List<AccountDetailContract> getLedgers() {
		return ledgers;
	}

	public void setLedgers(final List<AccountDetailContract> ledgers) {
		this.ledgers = ledgers;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(final String department) {
		this.department = department;
	}

	public Long getId() {
		return id;
	}

	public void setId(final Long id) {
		this.id = id;
	}

	public String getSource() {
		return source;
	}

	public void setSource(final String source) {
		this.source = source;
	}

	public SchemeContract getScheme() {
		return scheme;
	}

	public void setScheme(final SchemeContract scheme) {
		this.scheme = scheme;
	}

	public FunctionaryContract getFunctionary() {
		return functionary;
	}

	public void setFunctionary(final FunctionaryContract functionary) {
		this.functionary = functionary;
	}

	public FundsourceContract getFundsource() {
		return fundsource;
	}

	public void setFundsource(final FundsourceContract fundsource) {
		this.fundsource = fundsource;
	}

//	public SubSchemeContract getSubScheme() {
//		return subScheme;
//	}
//
//	public void setSubScheme(final SubSchemeContract subScheme) {
//		this.subScheme = subScheme;
//	}

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getReferenceDocument() {
        return referenceDocument;
    }

    public void setReferenceDocument(String referenceDocument) {
        this.referenceDocument = referenceDocument;
    }
	

}