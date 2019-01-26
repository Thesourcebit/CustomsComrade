package com.commerceo.springmvc.model;

public class InvoiceModel {

	private String invoicedate;
	private String  jobno;
	private String  jobdate;


	/*------description---------
	*/
	private String description;
	private String air;
	private String mawb;
	private String assvalue;
	private String txtport;
	private String hawb;
	private String grossweight;
	private String benumber;
	private String noofpkg;
	private String datesbno;
	private String fcllcl;
	private String sbno;
	 private String seaemptycells;
	private String sbnodate;
	
	/*
	 * -------------------PARTICULARS
	 */
	
	private String sealingstrapping;
	private String examinationexpenses;
	private String documentationcms;
	private String depbexpenses;
	private String transport;
	private String deliveryexpensesforklifts;
	private String miscexpenses;
	private String labour;
	private String agencycharges;

	/*------------------Invoice Details*/
	private String subtotal;
	private String tax;
	private String advance;
	private String balance;
	private String total;

	/*
	 * ------------------- ENCLOSURE
	 */
	private boolean duplicate;
	private boolean exchange;
	private boolean copy;
	private boolean billofloading;
	private boolean invoice;
	private boolean packing;
	private boolean challan;
	private boolean othersdocument;

	private String invoicenumber;
	 public String getInvoicenumber() {
		return invoicenumber;
	}
	public void setInvoicenumber(String invoicenumber) {
		this.invoicenumber = invoicenumber;
	}
	public String getInvoicedate() {
		return invoicedate;
	}
	public void setInvoicedate(String invoicedate) {
		this.invoicedate = invoicedate;
	}
	public String getJobno() {
		return jobno;
	}
	public void setJobno(String jobno) {
		this.jobno = jobno;
	}
	public String getJobdate() {
		return jobdate;
	}
	public void setJobdate(String jobdate) {
		this.jobdate = jobdate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAir() {
		return air;
	}
	public void setAir(String air) {
		this.air = air;
	}
	public String getMawb() {
		return mawb;
	}
	public void setMawb(String mawb) {
		this.mawb = mawb;
	}
	public String getAssvalue() {
		return assvalue;
	}
	public void setAssvalue(String assvalue) {
		this.assvalue = assvalue;
	}
	public String getTxtport() {
		return txtport;
	}
	public void setTxtport(String txtport) {
		this.txtport = txtport;
	}
	public String getHawb() {
		return hawb;
	}
	public void setHawb(String hawb) {
		this.hawb = hawb;
	}
	public String getGrossweight() {
		return grossweight;
	}
	public void setGrossweight(String grossweight) {
		this.grossweight = grossweight;
	}
	public String getBenumber() {
		return benumber;
	}
	public void setBenumber(String benumber) {
		this.benumber = benumber;
	}
	public String getNoofpkg() {
		return noofpkg;
	}
	public void setNoofpkg(String noofpkg) {
		this.noofpkg = noofpkg;
	}
	public String getDatesbno() {
		return datesbno;
	}
	public void setDatesbno(String datesbno) {
		this.datesbno = datesbno;
	}
	public String getFcllcl() {
		return fcllcl;
	}
	public void setFcllcl(String fcllcl) {
		this.fcllcl = fcllcl;
	}
	public String getSbno() {
		return sbno;
	}
	public void setSbno(String sbno) {
		this.sbno = sbno;
	}
	public String getSeaemptycells() {
		return seaemptycells;
	}
	public void setSeaemptycells(String seaemptycells) {
		this.seaemptycells = seaemptycells;
	}
	public String getSbnodate() {
		return sbnodate;
	}
	public void setSbnodate(String sbnodate) {
		this.sbnodate = sbnodate;
	}
	public String getSealingstrapping() {
		return sealingstrapping;
	}
	public void setSealingstrapping(String sealingstrapping) {
		this.sealingstrapping = sealingstrapping;
	}
	public String getExaminationexpenses() {
		return examinationexpenses;
	}
	public void setExaminationexpenses(String examinationexpenses) {
		this.examinationexpenses = examinationexpenses;
	}
	public String getDocumentationcms() {
		return documentationcms;
	}
	public void setDocumentationcms(String documentationcms) {
		this.documentationcms = documentationcms;
	}
	public String getDepbexpenses() {
		return depbexpenses;
	}
	public void setDepbexpenses(String depbexpenses) {
		this.depbexpenses = depbexpenses;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}
	public String getDeliveryexpensesforklifts() {
		return deliveryexpensesforklifts;
	}
	public void setDeliveryexpensesforklifts(String deliveryexpensesforklifts) {
		this.deliveryexpensesforklifts = deliveryexpensesforklifts;
	}
	public String getMiscexpenses() {
		return miscexpenses;
	}
	public void setMiscexpenses(String miscexpenses) {
		this.miscexpenses = miscexpenses;
	}
	public String getLabour() {
		return labour;
	}
	public void setLabour(String labour) {
		this.labour = labour;
	}
	public String getAgencycharges() {
		return agencycharges;
	}
	public void setAgencycharges(String agencycharges) {
		this.agencycharges = agencycharges;
	}
	public String getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}
	public String getTax() {
		return tax;
	}
	public void setTax(String tax) {
		this.tax = tax;
	}
	public String getAdvance() {
		return advance;
	}
	public void setAdvance(String advance) {
		this.advance = advance;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public boolean isDuplicate() {
		return duplicate;
	}
	public void setDuplicate(boolean duplicate) {
		this.duplicate = duplicate;
	}
	public boolean isExchange() {
		return exchange;
	}
	public void setExchange(boolean exchange) {
		this.exchange = exchange;
	}
	public boolean isCopy() {
		return copy;
	}
	public void setCopy(boolean copy) {
		this.copy = copy;
	}
	public boolean isBillofloading() {
		return billofloading;
	}
	public void setBillofloading(boolean billofloading) {
		this.billofloading = billofloading;
	}
	public boolean isInvoice() {
		return invoice;
	}
	public void setInvoice(boolean invoice) {
		this.invoice = invoice;
	}
	public boolean isPacking() {
		return packing;
	}
	public void setPacking(boolean packing) {
		this.packing = packing;
	}
	public boolean isChallan() {
		return challan;
	}
	public void setChallan(boolean challan) {
		this.challan = challan;
	}
	public boolean isOthersdocument() {
		return othersdocument;
	}
	public void setOthersdocument(boolean othersdocument) {
		this.othersdocument = othersdocument;
	}
	

}
