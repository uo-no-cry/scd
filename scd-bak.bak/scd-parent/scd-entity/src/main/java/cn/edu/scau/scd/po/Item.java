package cn.edu.scau.scd.po;

public class Item {
    private String itemId;

    private String itemName;

    private Long itemPrice;

    private Integer itemNum;

    private String itemCatName;

    private String itemImgs;

    private Integer itemStatus;

    private String itemDesc;

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId == null ? null : itemId.trim();
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public Long getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(Long itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Integer getItemNum() {
        return itemNum;
    }

    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }

    public String getItemCatName() {
        return itemCatName;
    }

    public void setItemCatName(String itemCatName) {
        this.itemCatName = itemCatName == null ? null : itemCatName.trim();
    }

    public String getItemImgs() {
        return itemImgs;
    }

    public void setItemImgs(String itemImgs) {
        this.itemImgs = itemImgs == null ? null : itemImgs.trim();
    }

    public Integer getItemStatus() {
        return itemStatus;
    }

    public void setItemStatus(Integer itemStatus) {
        this.itemStatus = itemStatus;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc == null ? null : itemDesc.trim();
    }

	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemNum=" + itemNum
				+ ", itemCatName=" + itemCatName + ", itemImgs=" + itemImgs + ", itemStatus=" + itemStatus
				+ ", itemDesc=" + itemDesc + "]";
	}
}