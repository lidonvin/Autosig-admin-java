package com.longsys.dao;

import com.longsys.entity.Signatureinfo;

import java.util.List;

public interface ISignatureDao {
    public Signatureinfo querySignatureinfoByname(String username);
    public boolean addSignatureinfo(String username, String name, String ename, String position, String department, String mobile, String tel, String email, String cnaddr, String enaddr, String company, String imagepath,String sign);
    public Signatureinfo getSignatureinfoByname(String username,String sign);
    public int countSignatureinfoByusername(String username,String sign);
    public int countTelUserByusername(String username);
    public Signatureinfo queryUsertelByname(String username);
    public boolean updateSignatureinfo(Signatureinfo signatureinfo,  String sign);
    public List<Signatureinfo> queryAllSignatureinfo(String sign);
    public List<Signatureinfo> querySignatureinfoByAny(Signatureinfo signatureinfo,String sign);
    public int countSignatureinfoById(String id,String sign);
    public boolean updateSignatureinfoById(Signatureinfo signatureinfo, String sign);
    public boolean delSignById(String id,String sign);
}
