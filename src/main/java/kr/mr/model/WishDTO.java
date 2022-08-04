package kr.mr.model;

public class WishDTO {
	
	private int wID;
	private String id; // 멤버
	private int cNum; // 차량\
	
	
	// wishList 담을그릇
	private String company; // 차량\
	private String cName; // 차량\
	private String price; // 차량\
	private String fileName; // 차량\

	
	

	public WishDTO() {}




	public WishDTO(int wID, String id, int cNum, String company, String cName, String price, String fileName) {
		super();
		this.wID = wID;
		this.id = id;
		this.cNum = cNum;
		this.company = company;
		this.cName = cName;
		this.price = price;
		this.fileName = fileName;
	}




	public int getwID() {
		return wID;
	}




	public void setwID(int wID) {
		this.wID = wID;
	}




	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public int getcNum() {
		return cNum;
	}




	public void setcNum(int cNum) {
		this.cNum = cNum;
	}




	public String getCompany() {
		return company;
	}




	public void setCompany(String company) {
		this.company = company;
	}




	public String getcName() {
		return cName;
	}




	public void setcName(String cName) {
		this.cName = cName;
	}




	public String getPrice() {
		return price;
	}




	public void setPrice(String price) {
		this.price = price;
	}




	public String getFileName() {
		return fileName;
	}




	public void setFileName(String fileName) {
		this.fileName = fileName;
	}




	@Override
	public String toString() {
		return "WishDTO [wID=" + wID + ", id=" + id + ", cNum=" + cNum + ", company=" + company + ", cName=" + cName
				+ ", price=" + price + ", fileName=" + fileName + "]";
	}


	
	
	
	
	
	
	
	
	
	
}
