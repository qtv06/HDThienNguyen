package bean;

import java.sql.Date;

public class ThanhVien {
	private String MaTV;
	private String HoTen;
	private String DiaChiEmail;
	private Date NgaySinh;
	private String SDT;
	public String getMaTV() {
		return MaTV;
	}
	public void setMaTV(String maTV) {
		MaTV = maTV;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getDiaChiEmail() {
		return DiaChiEmail;
	}
	public void setDiaChiEmail(String diaChiEmail) {
		DiaChiEmail = diaChiEmail;
	}
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	
}
