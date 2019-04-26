package cn.edu.scau.scd.po;

public class Cms {
    private String cmsId;

    private String cmsCatId;

    private String cmsName;

    private String cmsPic;

    private String cmsUrl;

    private Long cmsPrice;

    private Long cmsOldPrice;

    private String cmsItemId;

    public String getCmsId() {
        return cmsId;
    }

    public void setCmsId(String cmsId) {
        this.cmsId = cmsId == null ? null : cmsId.trim();
    }

    public String getCmsCatId() {
        return cmsCatId;
    }

    public void setCmsCatId(String cmsCatId) {
        this.cmsCatId = cmsCatId == null ? null : cmsCatId.trim();
    }

    public String getCmsName() {
        return cmsName;
    }

    public void setCmsName(String cmsName) {
        this.cmsName = cmsName == null ? null : cmsName.trim();
    }

    public String getCmsPic() {
        return cmsPic;
    }

    public void setCmsPic(String cmsPic) {
        this.cmsPic = cmsPic == null ? null : cmsPic.trim();
    }

    public String getCmsUrl() {
        return cmsUrl;
    }

    public void setCmsUrl(String cmsUrl) {
        this.cmsUrl = cmsUrl == null ? null : cmsUrl.trim();
    }

    public Long getCmsPrice() {
        return cmsPrice;
    }

    public void setCmsPrice(Long cmsPrice) {
        this.cmsPrice = cmsPrice;
    }

    public Long getCmsOldPrice() {
        return cmsOldPrice;
    }

    public void setCmsOldPrice(Long cmsOldPrice) {
        this.cmsOldPrice = cmsOldPrice;
    }

    public String getCmsItemId() {
        return cmsItemId;
    }

    public void setCmsItemId(String cmsItemId) {
        this.cmsItemId = cmsItemId == null ? null : cmsItemId.trim();
    }
}