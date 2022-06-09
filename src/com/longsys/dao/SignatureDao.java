package com.longsys.dao;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.longsys.entity.Signatureinfo;
import com.longsys.util.DBUtil;
import netscape.javascript.JSObject;
import org.nutz.http.Http;
import org.nutz.http.Response;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

public class SignatureDao implements ISignatureDao {

    public String getToken(){
        String url="http://cloud.longsys.com/oauth/getToken";
        Map<String, Object> params=new HashMap<>();
        params.put("appKey","e-HR");
        params.put("appSecret","f35e6843-9ee4-4be8-abe3-175e53515463");
        Response response = Http.post2(url,params, 3*1000);
        if (response.isOK()) {
            String result =response.getContent();
            Map<String, Object> resultMap = JSON.parseObject(result, Map.class);
            String data = (String) resultMap.get("data");
            return data;
        }
        return null;
    }

    public Signatureinfo querySignatureinfoByname(String username){
        String url="http://cloud.longsys.com/hr/outlook/signatureInfo?account="+username;
        String token=getToken();
        Map<String, Object> headers=new HashMap<>();
        headers.put("token",token);
        Response response = Http.get(url,headers, 3*1000);
        if (response.isOK()) {
            String result =response.getContent();
            JSONObject data = JSON.parseObject(result).getJSONObject("data");
//            JSONObject data = jsonObject.getJSONObject("data");
//            System.out.println(data);
            if (data!=null){
                String name=data.getString("cnName");
                String ename=data.getString("enName");
                String position=data.getString("posTitle");
                String department=data.getString("orgTitle");
                String mobile=data.getString("mobileNo");
                String tel=queryTelByname(username);
                String email=data.getString("email");
                String company=data.getString("conUnit");
                Signatureinfo signatureinfo=new Signatureinfo(username,name,ename,position,department,mobile,tel,email,company);
                return signatureinfo;
            }else {
                return null;
            }

        }
        return null;
    }

    public List<Signatureinfo> queryAllSignatureinfo(String sign){
        Signatureinfo signatureinfo=null;
        List<Signatureinfo> signatureinfos=new ArrayList<>();
        PreparedStatement pstmt = null ;
        ResultSet rs = null ;
        String sql="";
        if (sign.equals("0")){
            sql="select * from signatureinfo order by id desc limit 1000";
        }
        else if (sign.equals("1")){
            sql="select * from signatureinfo1 order by id desc limit 1000";
        }
        try {
            rs= DBUtil.executeQuery(sql,null);
            while (rs.next()){
                String id=rs.getString("id");
                String username=rs.getString("username");
                String name=rs.getString("name");
                String ename=rs.getString("ename");
                String position=rs.getString("position");
                String department=rs.getString("department");
                String mobile=rs.getString("mobile");
                String tel=rs.getString("tel");
                String email=rs.getString("email");
                String cnaddr=rs.getString("cnaddr");
                String enaddr=rs.getString("enaddr");
                String company=rs.getString("company");
                String imagepath=rs.getString("imagepath");
                signatureinfo=new Signatureinfo(id,username,name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath);
                signatureinfos.add(signatureinfo);
            }
            return signatureinfos;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }finally {
            DBUtil.closeAll(rs, pstmt,DBUtil.connection);
        }
    }
    public Signatureinfo getSignatureinfoByname(String username,String sign) {
        Signatureinfo signatureinfo=null;
        List<Signatureinfo> signatureinfos=new ArrayList<>();
        PreparedStatement pstmt = null ;
        ResultSet rs = null ;
        String sql="";
        if (sign.equals("0")){
            sql="select * from signatureinfo where username = ?";
        }else if (sign.equals("1")){
            sql="select * from signatureinfo1 where username = ?";
        }
        try {

            Object[] params={username};
            rs= DBUtil.executeQuery(sql,params);
            if (rs.next()){
                String name=rs.getString("name");
                String ename=rs.getString("ename");
                String position=rs.getString("position");
                String department=rs.getString("department");
                String mobile=rs.getString("mobile");
                String tel=rs.getString("tel");
                String email=rs.getString("email");
                String cnaddr=rs.getString("cnaddr");
                String enaddr=rs.getString("enaddr");
                String company=rs.getString("company");
                String imagepath=rs.getString("imagepath");
                signatureinfo=new Signatureinfo(name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath);
                signatureinfos.add(signatureinfo);
            }
            return signatureinfos.get(0);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }finally {
            DBUtil.closeAll(rs, pstmt,DBUtil.connection);
        }
    }
    //第一次自动签名时插入记录
    public boolean addSignatureinfo(String username, String name, String ename, String position, String department, String mobile, String tel, String email, String cnaddr, String enaddr, String company, String imagepath,String sign) {
        Date day = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String updatetime = df.format(day);
        String sql ="";
        if (sign.equals("0")){
            sql = "insert into signatureinfo(username,name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath,updatetime) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
        else if (sign.equals("1")){
            sql = "insert into signatureinfo1(username,name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath,updatetime) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
        String[] params = {username,name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath,updatetime};
        return DBUtil.executeUpdate(sql, params);
    }
    //每次自动签名时更新记录
//    public boolean updateSignatureinfoAll(String username, String name, String ename, String position, String department, String mobile, String tel, String email, String cnaddr, String enaddr, String company, String imagepath) {
//        Date day = new Date();
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String updatetime = df.format(day);
//        String sql = "update signatureinfo set name=?,ename=?,position=?,department=?,mobile=?,tel=?,email=?,cnaddr=?,enaddr=?,company=?,imagepath=?,updatetime=? where username=?";
//        String[] params = {username,name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath,updatetime};
//        return DBUtil.executeUpdate(sql, params);
//    }

    public List<Signatureinfo> querySignatureinfoByAny(Signatureinfo signatureinfo,String sign){
        Signatureinfo signatureinfo1=null;
        List<Signatureinfo> signatureinfos=new ArrayList<>();
        PreparedStatement pstmt = null ;
        ResultSet rs = null ;
        StringBuilder sql = new StringBuilder();
        String id=signatureinfo.getId();
        String username=signatureinfo.getUsername();
        String name=signatureinfo.getName();
        String ename=signatureinfo.getEname();
        String position=signatureinfo.getPosition();
        String department=signatureinfo.getDepartment();
        String mobile=signatureinfo.getMobile();
        String tel=signatureinfo.getTel();
        String[] temp = {id,name,ename,position,department,mobile,tel,username};
        ArrayList<String> arrayList = new ArrayList<String>();
        for (String x:temp) {
            if (x.length()!=0){
                arrayList.add(x);
            }
        }
        String[] params= arrayList.toArray(new String[arrayList.size()]);
        if (sign.equals("0")){
            sql.append("select * from signatureinfo where 1=1");
        }
        else if (sign.equals("1")){
            sql.append("select * from signatureinfo1 where 1=1");
        }
        if (id.length()!=0) {
            sql.append(" and id = ?");
        }
        if (username.length()!=0) {
            sql.append(" and username like ?");
        }
        if (name.length()!=0) {
            sql.append(" and name like ?");
        }
        if (ename.length()!=0){
            sql.append(" and ename like ?");
        }
        if (position.length()!=0){
            sql.append(" and position like ?");
        }
        if (department.length()!=0){
            sql.append(" and department like ?");
        }
        if (mobile.length()!=0){
            sql.append(" and mobile=?");
        }
        if (tel.length()!=0){
            sql.append(" and tel=?");
        }
        sql.append(" order by id desc");
        try {
            rs= DBUtil.executeQuery(sql.toString(), params);
            while (rs.next()){
                String id1=rs.getString("id");
                String username1=rs.getString("username");
                String name1=rs.getString("name");
                String ename1=rs.getString("ename");
                String position1=rs.getString("position");
                String department1=rs.getString("department");
                String mobile1=rs.getString("mobile");
                String tel1=rs.getString("tel");
                String email1=rs.getString("email");
                String cnaddr1=rs.getString("cnaddr");
                String enaddr1=rs.getString("enaddr");
                String company1=rs.getString("company");
                String imagepath1=rs.getString("imagepath");
                signatureinfo1=new Signatureinfo(id1,username1,name1,ename1,position1,department1,mobile1,tel1,email1,cnaddr1,enaddr1,company1,imagepath1);
                signatureinfos.add(signatureinfo1);
            }
            return signatureinfos;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }finally {
            DBUtil.closeAll(rs, pstmt,DBUtil.connection);
        }
    }
    //通过用户名查询是否已经签名过
    public int countSignatureinfoByusername(String username,String sign) {
        String sql="";
        if (sign.equals("0")){
            sql="select count(*) from signatureinfo where username = ?";
        }else if (sign.equals("1")){
            sql="select count(*) from signatureinfo1 where username = ?";
        }
        Object[] params = {username};
        return DBUtil.getCount(sql, params);
    }
    public int countSignatureinfoById(String id,String sign) {
        String sql="";
        if (sign.equals("0")){
            sql="select count(*) from signatureinfo where id = ?";
        }else if (sign.equals("1")){
            sql="select count(*) from signatureinfo1 where id = ?";
        }
        Object[] params = {id};
        return DBUtil.getCount(sql, params);
    }
    //通过用户名查询分机号表中是否有此用户
    public int countTelUserByusername(String username) {
        String sql = "select count(*) from user_tel where username=?";
        Object[] params = {username};
        return DBUtil.getCount(sql, params);
    }
    //通过用户名查询分机表
    public Signatureinfo queryUsertelByname(String username) {
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        Signatureinfo signatureinfo = null;
        List<Signatureinfo> signatureinfos = new ArrayList<>();
        try {
            String sql = "select * from user_tel where username=?";
            Object[] params = {username};
            rs = DBUtil.executeQuery(sql, params);
            while (rs.next()) {
                String userid = rs.getString("userid");
                String name = rs.getString("username");
                String tel = rs.getString("tel");
                signatureinfo = new Signatureinfo(userid, name, tel);
                signatureinfos.add(signatureinfo);
            }
            return signatureinfos.get(0);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            DBUtil.closeAll(rs, pstmt, DBUtil.connection);
        }
    }

    public boolean updateSignatureinfo(Signatureinfo signatureinfo, String sign) {
        Date day=new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=df.format(day);
        StringBuilder sql = new StringBuilder();
        String username=signatureinfo.getUsername();
        String name=signatureinfo.getName();
        String ename=signatureinfo.getEname();
        String position=signatureinfo.getPosition();
        String department=signatureinfo.getDepartment();
        String mobile=signatureinfo.getMobile();
        String tel=signatureinfo.getTel();
        String[] temp = {name,ename,position,department,mobile,tel,time,username};
        ArrayList<String> arrayList = new ArrayList<String>();
        for (String x:temp) {
            if (x.length()!=0){
                arrayList.add(x);
            }
        }
        String[] params= arrayList.toArray(new String[arrayList.size()]);
        if (sign.equals("0")){
            sql.append("update signatureinfo set ");
        }
        else if (sign.equals("1")){
            sql.append("update signatureinfo1 set ");
        }

        if (name.length()!=0) {
            sql.append("name=?,");
        }
        if (ename.length()!=0){
            sql.append("ename=?,");
        }
        if (position.length()!=0){
            sql.append("position=?,");
        }
        if (department.length()!=0){
            sql.append("department=?,");
        }
        if (mobile.length()!=0){
            sql.append("mobile=?,");
        }
        if (tel.length()!=0){
            sql.append("tel=?,");
        }
        sql.append(" updatetime =? where username=?");
        System.out.println(sql.toString());
        return DBUtil.executeUpdate(sql.toString(), params) ;
    }

    public boolean updateSignatureinfoById(Signatureinfo signatureinfo, String sign) {
        Date day=new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=df.format(day);
        StringBuilder sql = new StringBuilder();
        String id=signatureinfo.getId();
        String username=signatureinfo.getUsername();
        String name=signatureinfo.getName();
        String ename=signatureinfo.getEname();
        String position=signatureinfo.getPosition();
        String department=signatureinfo.getDepartment();
        String mobile=signatureinfo.getMobile();
        String tel=signatureinfo.getTel();
        String[] temp = {name,ename,position,department,mobile,tel,time,id};
        ArrayList<String> arrayList = new ArrayList<String>();
        for (String x:temp) {
            if (x.length()!=0){
                arrayList.add(x);
            }
        }
        String[] params= arrayList.toArray(new String[arrayList.size()]);
        if (sign.equals("0")){
            sql.append("update signatureinfo set ");
        }
        else if (sign.equals("1")){
            sql.append("update signatureinfo1 set ");
        }

        if (name.length()!=0) {
            sql.append("name=?,");
        }
        if (ename.length()!=0){
            sql.append("ename=?,");
        }
        if (position.length()!=0){
            sql.append("position=?,");
        }
        if (department.length()!=0){
            sql.append("department=?,");
        }
        if (mobile.length()!=0){
            sql.append("mobile=?,");
        }
        if (tel.length()!=0){
            sql.append("tel=?,");
        }
        sql.append(" updatetime =? where id=?");
        System.out.println(sql.toString());
        return DBUtil.executeUpdate(sql.toString(), params) ;
    }
    public boolean delSignById(String id,String sign) {
        String sql = "" ;
        if (sign.equals("0")){
            sql="delete from signatureinfo where id = ?";
        }
        else if (sign.equals("1")){
            sql="delete from signatureinfo1 where id = ?";
        }
        Object[] params = {id} ;
        return DBUtil.executeUpdate(sql, params) ;
    }
    //通过用户名查询分机号
    public String queryTelByname(String username){
        if(countTelUserByusername(username)==1){
            String tel=queryUsertelByname(username).getTel();
            return tel;
        }
        return "0";
    }

}