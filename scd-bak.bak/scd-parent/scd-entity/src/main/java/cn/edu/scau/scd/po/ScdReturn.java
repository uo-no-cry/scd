package cn.edu.scau.scd.po;

public class ScdReturn {
	// 响应业务状态
    private Integer status;

    // 响应消息
    private String msg;

    // 响应中的数据
    private Object data;
    
    public ScdReturn() {

    }
    
    public ScdReturn(Object data) {
        this.status = 200;
        this.msg = "OK";
        this.data = data;
    }
    
    public static ScdReturn build(Integer status, String msg, Object data) {
        return new ScdReturn(status, msg, data);
    }

    public static ScdReturn ok(Object data) {
        return new ScdReturn(data);
    }

    public static ScdReturn ok() {
        return new ScdReturn(null);
    }

    public static ScdReturn build(Integer status, String msg) {
        return new ScdReturn(status, msg, null);
    }

    public ScdReturn(Integer status, String msg, Object data) {
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
    
    
}
