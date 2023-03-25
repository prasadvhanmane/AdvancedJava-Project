package maam;

public class productbean {
	private String pid;
	private String pname;
	private String ptype;
	private String pcost;
	private String pimg;
	public productbean(String pid, String pname, String ptype, String pcost,String pimg) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.ptype = ptype;
		this.pcost = pcost;
		this.pimg=pimg;
	}
	public productbean() {
		// TODO Auto-generated constructor stub
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPcost() {
		return pcost;
	}
	public void setPcost(String pcost) {
		this.pcost = pcost;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	
	
}