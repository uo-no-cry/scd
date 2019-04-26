package cn.edu.scau.scd.po;

import java.util.Date;

public class Order {
    private String odId;

    private Integer odStatu;

    private Date odCreateTime;

    private Date odPayTime;

    private Date odConsignTime;

    private Date odEndTime;

    private String custId;

    private String custName;

    private Long odCost;

    public String getOdId() {
        return odId;
    }

    public void setOdId(String odId) {
        this.odId = odId == null ? null : odId.trim();
    }

    public Integer getOdStatu() {
        return odStatu;
    }

    public void setOdStatu(Integer odStatu) {
        this.odStatu = odStatu;
    }

    public Date getOdCreateTime() {
        return odCreateTime;
    }

    public void setOdCreateTime(Date odCreateTime) {
        this.odCreateTime = odCreateTime;
    }

    public Date getOdPayTime() {
        return odPayTime;
    }

    public void setOdPayTime(Date odPayTime) {
        this.odPayTime = odPayTime;
    }

    public Date getOdConsignTime() {
        return odConsignTime;
    }

    public void setOdConsignTime(Date odConsignTime) {
        this.odConsignTime = odConsignTime;
    }

    public Date getOdEndTime() {
        return odEndTime;
    }

    public void setOdEndTime(Date odEndTime) {
        this.odEndTime = odEndTime;
    }

    public String getCustId() {
        return custId;
    }

    public void setCustId(String custId) {
        this.custId = custId == null ? null : custId.trim();
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName == null ? null : custName.trim();
    }

    public Long getOdCost() {
        return odCost;
    }

    public void setOdCost(Long odCost) {
        this.odCost = odCost;
    }
}