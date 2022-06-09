package com.longsys.util;
import java.awt.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.longsys.dao.SignatureDao;
import com.longsys.entity.Signatureinfo;
import com.longsys.service.AesCbc;
import com.longsys.service.ISignatureService;
import com.longsys.service.SignatureService;
import netscape.javascript.JSObject;
import org.nutz.http.*;
import org.nutz.json.entity.JsonEntity;

import javax.print.DocFlavor;

public class Test {
    public static void test1(){
        String name="aaa";
        String ename="";
        String position="";
        String department="bbb";
        String mobile="";
        String tel="111";
        String username="";
        String[] tests = {name,ename,position,department,mobile,tel,username};
        ArrayList<String> arrayList = new ArrayList<String>();
        for (String x:tests) {
            if (x.length()!=0){
                System.out.println(x);
                arrayList.add(x);
            }
        }
        System.out.println(arrayList);
    }
    public static void main(String[] args) throws IOException {
        Signatureinfo signatureinfo=new Signatureinfo("donvin.li","","","老板","","","");
        SignatureDao signatureDao=new SignatureDao();
        signatureDao.updateSignatureinfo(signatureinfo,"1");
     }
}
