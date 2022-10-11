package com.gdhsweetcakejavafinal.model.client;

public class CustomerCL {
    private static final long serialVersionUID = 1L;
    private String maKH;
    private String tenKH;
    private String email;
    private String gioiTinh;
    private String matKhau;
    private String sdt;
    private String diaChi;

    private String code;

    public CustomerCL(String email, String matKhau) {
        super();
        this.email=email;
        this.matKhau=matKhau;
    }

    public CustomerCL(String tenKH, String email, String matKhau, String code) {
        this.tenKH = tenKH;
        this.email=email;
        this.matKhau=matKhau;
        this.code = code;
    }


    public CustomerCL(String maKH, String tenKH, String email, String gioiTinh, String matKhau, String sdt, String diaChi) {
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.email = email;
        this.gioiTinh = gioiTinh;
        this.matKhau = matKhau;
        this.sdt = sdt;
        this.diaChi = diaChi;
    }
    public CustomerCL()
    {
        super();
    }
    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "KhachHang{" +
                "maKH='" + maKH + '\'' +
                ", tenKH='" + tenKH + '\'' +
                ", email='" + email + '\'' +
                ", gioiTinh='" + gioiTinh + '\'' +
                ", matKhau='" + matKhau + '\'' +
                ", sdt='" + sdt + '\'' +
                ", diaChi='" + diaChi + '\'' +
                '}';
    }
}
