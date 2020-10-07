/*
 *    eGov  SmartCity eGovernance suite aims to improve the internal efficiency,transparency,
 *    accountability and the service delivery of the government  organizations.
 *
 *     Copyright (C) 2017  eGovernments Foundation
 *
 *     The updated version of eGov suite of products as by eGovernments Foundation
 *     is available at http://www.egovernments.org
 *
 *     This program is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     any later version.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with this program. If not, see http://www.gnu.org/licenses/ or
 *     http://www.gnu.org/licenses/gpl.html .
 *
 *     In addition to the terms of the GPL license to be adhered to in using this
 *     program, the following additional terms are to be complied with:
 *
 *         1) All versions of this program, verbatim or modified must carry this
 *            Legal Notice.
 *            Further, all user interfaces, including but not limited to citizen facing interfaces,
 *            Urban Local Bodies interfaces, dashboards, mobile applications, of the program and any
 *            derived works should carry eGovernments Foundation logo on the top right corner.
 *
 *            For the logo, please refer http://egovernments.org/html/logo/egov_logo.png.
 *            For any further queries on attribution, including queries on brand guidelines,
 *            please contact contact@egovernments.org
 *
 *         2) Any misrepresentation of the origin of the material is prohibited. It
 *            is required that all modified versions of this material be marked in
 *            reasonable ways as different from the original version.
 *
 *         3) This license does not grant any rights to any user of the program
 *            with regards to rights under trademark law for use of the trade names
 *            or trademarks of eGovernments Foundation.
 *
 *   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
 *
 */
package org.egov.collection.config.properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Configuration
@PropertySource(name = "collectionApplicationProperties", value = {
		"classpath:config/application-config-collection.properties", "classpath:config/payment-gateway.properties",
		"classpath:config/egov-erp-${user.name}.properties",
		"classpath:config/application-config-${client.id}.properties",
		"classpath:config/egov-erp-override.properties" }, ignoreResourceNotFound = true)
public class CollectionApplicationProperties {

	@Autowired
	private Environment environment;
	
	public String financeVocherUrl() {
		return environment.getProperty("finance.vocher.url");
	}
	
	public String financeVocherAuthToken() {
		return environment.getProperty("finance.vocher.authToken");
	}
	
	public String financeVocherCorrelationId() {
		return environment.getProperty("finance.vocher.correlationId");
	}

	public String axisTransactionMessage() {
		return environment.getProperty("AXIS.transactionmessage");
	}

	public String axisVersion() {
		return environment.getProperty("axis.version", String.class);
	}

	public String axisCommand() {
		return environment.getProperty("axis.command");
	}

	public String axisCommandQuery() {
		return environment.getProperty("axis.command.query");
	}

	public String axisAccessCode() {
		return environment.getProperty("axis.access.code");
	}

	public String axisMerchant() {
		return environment.getProperty("axis.merchant");
	}

	public String axisLocale() {
		return environment.getProperty("axis.locale");
	}

	public String axisOperator() {
		return environment.getProperty("axis.operator.id");
	}

	public String axisPassword() {
		return environment.getProperty("axis.password");
	}

	public String axisReconcileUrl() {
		return environment.getProperty("axis.reconcile.url");
	}

	public String axisSecureSecret() {
		return environment.getProperty("axis.secure.secret");
	}

	public String getEmailSubject() {
		return environment.getProperty("email.subject.message");
	}

	public String getEmailBody() {
		return environment.getProperty("email.body.message");
	}

	public String getValue(final String key) {
		return environment.getProperty(key);
	}

	public String sbimopsDdocode(final String cityCode) {
		return environment.getProperty(cityCode.concat(".sbimops.ddocode"));
	}

	public String sbimopsHoa(final String cityCode) {
		return environment.getProperty(cityCode.concat(".sbimops.hoa"));
	}

	public String getUpdateDemandUrl(final String serviceCode) {
		return environment.getProperty(serviceCode.concat(".updatedemand.url"));
	}

	public String getLamsServiceUrl() {
		return environment.getProperty("egov.services.lams.hostname");
	}
	
	public Boolean isPaymentMerchantProduction() {
		return environment.getProperty("is.payment.merchant.production", Boolean.class);
	}

	public String atomProdid(String prefix) {
		return environment.getProperty(prefix+".atom.prodid", String.class);
	}

	public String atomPass(String prefix) {
		return environment.getProperty(prefix+".atom.pass", String.class);
	}

	public String atomTtype(String prefix) {
		return environment.getProperty(prefix+".atom.ttype", String.class);
	}

	public String atomClientcode(String prefix) {
		return environment.getProperty(prefix+".atom.clientcode", String.class);
	}

	public String atomCustacc(String prefix) {
		return environment.getProperty(prefix+".atom.custacc", String.class);
	}

	public String atomMdd(String prefix) {
		return environment.getProperty(prefix+".atom.mdd", String.class);
	}
	
	public String atomReqHashKey(String prefix) {
		return environment.getProperty(prefix+".atom.reqHashKey",String.class);
	}
	
	public String atomAESRequestKey(String prefix) {
		return environment.getProperty(prefix+".atom.AESRequestKey",String.class);
	}
	
	public String atomAESResponseKey(String prefix) {
		return environment.getProperty(prefix+".atom.AESResponseKey",String.class);
	}
	
	public String atomRequestIV_Salt(String prefix) {
		return environment.getProperty(prefix+".atom.requestIV_Salt",String.class);
	}
	
	public String atomResponseIV_Salt(String prefix) {
		return environment.getProperty(prefix+".atom.responseIV_Salt",String.class);
	}

	public String atomTxncurr(String prefix) {
		return environment.getProperty(prefix+".atom.txncurr", String.class);
	}

	public String atomLogin(String prefix) {
		return environment.getProperty(prefix+".atom.login", String.class);
	}

	public String atomTxnscamt(String prefix) {
		return environment.getProperty(prefix+".atom.txnscamt", String.class);
	}

	public String atomTransactionMessage(String prefix) {
		return environment.getProperty(prefix+".atom.transactionmessage");
	}

	public String atomReconcileUrl(String prefix) {
		return environment.getProperty(prefix+".atom.reconcile.url");
	}
	
	public Integer atomCronExpressionDelayTime(String prefix) {
		return environment.getProperty(prefix+".atom.cron.expression.delay.time", Integer.class);
	}
	
	public String payuMerchantkey(String prefix) {
		return environment.getProperty(prefix+".payu.merchant-key");
	}
	
	public String payuMerchantSalt(String prefix) {
		return environment.getProperty(prefix+".payu.merchant-salt");
	}
	
	public String payuUrl(String prefix) {
		return environment.getProperty(prefix+".payu.url");
	}
	
	public String payuUrlStatus(String prefix) {
		return environment.getProperty(prefix+".payu.url-status");
	}

	public String payuPathPay(String prefix) {
		return environment.getProperty(prefix+".payu.path-pay");
	}
	
	public String payuPathStatus(String prefix) {
		return environment.getProperty(prefix+".payu.path-status");
	}
	
	public Integer payUCronExpressionDelayTime() {
		return environment.getProperty("payu.cron.expression.delay.time", Integer.class);
	}
	
	public String sbiMID(String prefix) {
		return environment.getProperty(prefix+".sbi.mid");
	}
	
	public String sbiCollaboratorId(String prefix) {
		return environment.getProperty(prefix+".sbi.collaborator.id");
	}
	
	public String sbiOperatingMode(String prefix) {
		return environment.getProperty(prefix+".sbi.operating.mode");
	}

	public String sbiCountry(String prefix) {
		return environment.getProperty(prefix+".sbi.country");
	}

	public String sbiCurrency(String prefix) {
		return environment.getProperty(prefix+".sbi.currency");
	}
	
	public String sbiMkey(String prefix) {
		return environment.getProperty(prefix+".sbi.mkey");
	}
	
	public String sbiUrl(String prefix) {
		return environment.getProperty(prefix+".sbi.url");
	}
	
	public String sbiPath(String prefix) {
		return environment.getProperty(prefix+".sbi.path");
	}
	
	public Integer sbiCronExpressionDelayTime() {
		return environment.getProperty("sbi.cron.expression.delay.time", Integer.class);
	}
	
	
	public String pnbMid() {
		return environment.getProperty("pnb.mid");
	}

	public String pnbEncryptionKey() {
		return environment.getProperty("pnb.encryption.key");
	}

	public String pnbTransactionCurrency() {
		return environment.getProperty("pnb.transaction.currency");
	}

	public String pnbTransactionRequestType() {
		return environment.getProperty("pnb.transaction.request.type");
	}
	
	public String pnbTransactionMessage() {
		return environment.getProperty("pnb.transactionmessage");
	}
	
	public String pnbReconcileUrl() {
		return environment.getProperty("pnb.reconcile.url");
	}

    public String hdfcKey()
    {
        return environment.getProperty("hdfc.key");
    }

    public String hdfcSalt()
    {
        return environment.getProperty("hdfc.salt");
    }

    public String hdfcPg()
    {
        return environment.getProperty("hdfc.pg");
    }

    public String hdfcReconsileUrl()
    {
        return environment.getProperty("hdfc.reconcile.url");
    }

    public String hdfcReconsileCommand()
    {
        return environment.getProperty("hdfc.reconcile.command");
    }

    public String hdfcTransactionCurrency()
    {
        return environment.getProperty("hdfc.transaction.currency");
    }

    public String hdfcRequestType()
    {
        return environment.getProperty("hdfc.transaction.request.type");
    }

    public String hdfcTransactionMsg(){
	    return environment.getProperty("hdfc.transactionmessage");
    }

    public String hdfcTransactionEmail(){
	    return environment.getProperty("hdfc.email");
    }

    public String hdfcTransactionPhone(){
	    return environment.getProperty("hdfc.phone");
    }

}
