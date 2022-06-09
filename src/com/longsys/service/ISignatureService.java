package com.longsys.service;

import com.longsys.entity.Signatureinfo;

import java.util.List;

public interface ISignatureService {
    public Signatureinfo querySignatureinfoById(String id,String sign);
    public boolean updateSignature(String username, String isupdate);
    public Signatureinfo querySignatureinfoByname(String username,String sign);
    public boolean updateSignatureinfo(Signatureinfo signatureinfo,  String sign);
    public List<Signatureinfo> queryAllSignatureinfo(String sign);
    public boolean copySignatureinfoById(String id,String sign);
    public boolean updateSignatureinfoById(Signatureinfo signatureinfo, String sign);
    public boolean delSignById(String id,String sign);
    public List<Signatureinfo> querySignByAny(String id,String username,String name,String department,String sign);
}
