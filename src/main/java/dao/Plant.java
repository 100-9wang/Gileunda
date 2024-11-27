package dao;

public class Plant {

	private String ptID; // 상품 ID
	private String ptName; // 상품 이름
	private int ptPrice; // 상품 가격
	private String ptInfo; // 상품 설명
	private String ptHeight; // 식물 길이
	private String ptCategory; // 카테고리
	private long ptUnit; // 재고 수량
	private String ptdifficulty; // 난이도
	
	public Plant() {
		super();
	}
	
	public Plant(String ptID, String ptName, Integer ptPrice) {
		this.ptID = ptID;
		this.ptName = ptName;
		this.ptPrice = ptPrice;
	}
	
	public String getPtID() {
		return ptID;
	}

	public void setPtID(String ptID) {
		this.ptID = ptID;
	}

	public String getPtName() {
		return ptName;
	}

	public void setPtName(String ptName) {
		this.ptName = ptName;
	}

	public int getPtPrice() {
		return ptPrice;
	}

	public void setPtPrice(int ptPrice) {
		this.ptPrice = ptPrice;
	}

	public String getPtInfo() {
		return ptInfo;
	}

	public void setPtInfo(String ptInfo) {
		this.ptInfo = ptInfo;
	}

	public String getPtHeight() {
		return ptHeight;
	}

	public void setPtHeight(String ptHeight) {
		this.ptHeight = ptHeight;
	}

	public String getPtCategory() {
		return ptCategory;
	}

	public void setPtCategory(String ptCategory) {
		this.ptCategory = ptCategory;
	}

	public long getPtUnit() {
		return ptUnit;
	}

	public void setPtUnit(long ptUnit) {
		this.ptUnit = ptUnit;
	}
	
	public String getPtdifficulty() {
		return ptdifficulty;
	}

	public void setPtdifficulty(String ptdifficulty) {
		this.ptdifficulty = ptdifficulty;
	}
}
