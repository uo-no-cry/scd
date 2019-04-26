package cn.edu.scau.scd.po;

import java.util.List;

public class BootstrapTableData {
	private long total;
	private List<Item> rows;
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public List<Item> getRows() {
		return rows;
	}
	public void setRows(List<Item> rows) {
		this.rows = rows;
	}
	
	
}
