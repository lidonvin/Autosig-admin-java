package com.longsys.service;
import com.longsys.dao.ISignatureDao;
import com.longsys.dao.SignatureDao;
import com.longsys.entity.Signatureinfo;
import java.util.List;

public class SignatureService implements ISignatureService{
    ISignatureDao iSignatureDao=new SignatureDao();
    public Signatureinfo querySignatureinfoById(String id,String sign){
        Signatureinfo signatureinfo=new Signatureinfo(id,"","","","","","","");
        if (iSignatureDao.countSignatureinfoById(id,sign)==1){
            List<Signatureinfo> signatureinfos=iSignatureDao.querySignatureinfoByAny(signatureinfo,sign);
            Signatureinfo signatureinfo1=signatureinfos.get(0);
            return signatureinfo1;
        }else {
            return null;
        }
    }
    public boolean copySignatureinfoById(String id,String sign) {
        if (sign.equals("0") && iSignatureDao.countSignatureinfoById(id,sign)==1){
            Signatureinfo signatureinfo1=querySignatureinfoById(id,sign);
            String username=signatureinfo1.getUsername();
            String name=signatureinfo1.getName();
            String ename=signatureinfo1.getEname();
            String position=signatureinfo1.getPosition();
            String department=signatureinfo1.getDepartment();
            String mobile=signatureinfo1.getMobile();
            String tel=signatureinfo1.getTel();
            String email=signatureinfo1.getEmail();
            String company=signatureinfo1.getCompany();
            String cnaddr=signatureinfo1.getCnaddr();
            String enaddr=signatureinfo1.getEnaddr();
            String imagepath=signatureinfo1.getImagepath();
            if (iSignatureDao.countSignatureinfoByusername(username,"1")==0){
                return iSignatureDao.addSignatureinfo(username,name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath,"1");
            }
            else{
                return false;
            }
        }else {
            return false;
        }
    }

    public boolean updateSignature(String username, String isupdate) {
        return false;
    }

    public Signatureinfo querySignatureinfoByname(String username,String sign){
        if (iSignatureDao.countSignatureinfoByusername(username,sign)==1){
            return iSignatureDao.getSignatureinfoByname(username,sign);
        }else {
            if (iSignatureDao.querySignatureinfoByname(username)!=null && sign.equals("0")){
                Signatureinfo signatureinfo=iSignatureDao.querySignatureinfoByname(username);
                String name=signatureinfo.getName();
                String ename=signatureinfo.getEname();
                String position=signatureinfo.getPosition();
                String department=signatureinfo.getDepartment();
                String mobile=signatureinfo.getMobile();
                String tel=signatureinfo.getTel();
                String email=signatureinfo.getEmail();
                String company=signatureinfo.getCompany();
                String cnaddr;
                String enaddr;
                String imagepath;
//            System.out.println(company);
                switch (company) {
                    case "深圳市江波龙电子股份有限公司":
                        cnaddr = "广东省深圳市南山区科发路8号金融服务技术创新基地1栋8楼A、B、C、D、E、F1";
                        enaddr = "8F,1Building,Finance Base,No.8,Kefa Road,Technology Park,Nanshan,Shenzhen,China";
                        imagepath = "sz";
                        break;
                    case "上海江波龙数字技术有限公司":
                        cnaddr = "中国（上海）自由贸易试验区临港新片区环湖西二路888号C楼";
                        enaddr = "Building C, No.888 Huanhu West 2nd Road, Lin-gang Special Area Administration, China (Shanghai) Pilot Free Trade Zone";
                        imagepath = "shsz";
                        break;
                    case "上海江波龙电子有限公司":
                        cnaddr = "上海市杨浦区昆明路596号6幢506室、507室、508室";
                        enaddr = "Room 506, 507, and 508, Building 6, No 596 Kunming Road, Yangpu District, Shanghai, China";
                        imagepath = "shdz";
                        break;
                    case "上海江波龙存储技术有限公司":
                        cnaddr = "中国（上海）自由贸易试验区临港新片区业盛路188号A-522室";
                        enaddr = "Room A-522, No.188 Yesheng Road, Lin-gang Special Area Administration, China (Shanghai) Pilot Free Trade Zone";
                        imagepath = "shcc";
                        break;
                    case "上海江波龙微电子技术有限公司":
                        cnaddr = "中国（上海）自由贸易试验区临港新片区业盛路188号A-522室";
                        enaddr = "Room A-522, No.188 Yesheng Road, Lin-gang Special Area Administration, China (Shanghai) Pilot Free Trade Zone";
                        imagepath = "shwdz";
                        break;
                    case "上海江波龙数字技术有限公司成都分公司":
                        cnaddr = "中国（四川）自由贸易试验区成都高新区府城大道西段399号7栋2单元10层1003号";
                        enaddr = "1003, 10/F, Unit 2, Building 7, No 399, West Section of Fucheng Street, Chengdu Hi-tech Industrial Development Zone, China (Sichuan) Pilot Free Trade Zone";
                        imagepath = "shszcd";
                        break;
                    case "北京市江波龙电子有限公司":
                        cnaddr = "北京市海淀区蓝靛厂南路25号1幢9层08-1号";
                        enaddr = "Room 08-1, 9/F, Building 1, No 25, South Landianchang Road, Haidian District, Beijing, China";
                        imagepath = "bj";
                        break;
                    case "重庆市江波龙电子有限公司":
                        cnaddr = "重庆市渝北区仙桃街道数据谷东路107号";
                        enaddr = "No 107, Data Valley East Road, Xiantao Street, Yubei District, Chongqing, China";
                        imagepath = "cq";
                        break;
                    case "中山市江波龙电子有限公司":
                        cnaddr = "广东省中山市翠亨新区和清路9号";
                        enaddr = "No.9,Heqing Road,Tsui Hang New District,Zhongshan,Guangdong,China";
                        imagepath = "zs";
                        break;
                    case "Longsys HK":
                        cnaddr = "香港新界沙田安睦街28号永得利中心7楼B室";
                        enaddr = "7/F,No B,Ever Gain Centre,28 On Muk Street,Shatin,N .T Hong Kong";
                        imagepath = "hkdz";
                        break;
                    case "江波龙存储技术（香港）有限公司":
                        cnaddr = "香港新界沙田安睦街28号永得利中心7楼B室";
                        enaddr = "7/F,No B,Ever Gain Centre,28 On Muk Street,Shatin,N .T Hong Kong";
                        imagepath = "hkcc";
                        break;
                    case "台湾江波龙电子有限公司":
                        cnaddr = "台北市内湖区文湖街12号10楼";
                        enaddr = "10/F,No.12,Wenhu Street, Neihu District,Taipei";
                        imagepath = "tw";
                        break;
                    case "Lexar US":
                        cnaddr = "161 Baypointe Pkwy, San Jose, CA 95134, USA";
                        enaddr = "161 Baypointe Pkwy, San Jose, CA 95134, USA";
                        imagepath = "usa";
                        break;
                    case "雷克沙电子(深圳)有限公司":
                        cnaddr = "深圳市南山区粤海街道科技园社区科发路8号金融服务技术创新基地1栋5楼";
                        enaddr = "5F,1Building,Finance Base,No.8,kefa Road,Technology";
                        imagepath = "lexarsz";
                        break;
                    case "Lexar JP":
                        cnaddr = "2-25GYB Akihabara Building, Kanda Sudacho, Chiyoda-ku, Tokyo";
                        enaddr = "2-25GYB Akihabara Building, Kanda Sudacho, Chiyoda-ku, Tokyo";
                        imagepath = "lexarjp";
                        break;
                    case "Lexar EU":
                        cnaddr = "2161 WG Grevelingstraat 40 in Lisse, the Netherlands";
                        enaddr = "2161 WG Grevelingstraat 40 in Lisse, the Netherlands";
                        imagepath = "lexarbv";
                        break;
                    default:
                        cnaddr = "广东省深圳市南山区科发路8号金融服务技术创新基地1栋8楼A、B、C、D、E、F1";
                        enaddr = "8F,1Building,Finance Base,No.8,Kefa Road,Technology Park,Nanshan,Shenzhen,China";
                        imagepath = "sz";
                        break;
                }
//            System.out.println(cnaddr);
                Signatureinfo signatureinfo1=new Signatureinfo(name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath);
                if (iSignatureDao.countSignatureinfoByusername(username,sign)==0){
                    iSignatureDao.addSignatureinfo(username,name,ename,position,department,mobile,tel,email,cnaddr,enaddr,company,imagepath,sign);
                }
                return signatureinfo1;
            }
            return null;
        }
    }
    public boolean updateSignatureinfo(Signatureinfo signatureinfo, String sign){
        String username=signatureinfo.getUsername();
        if (iSignatureDao.countSignatureinfoByusername(username,sign)==1){
            System.out.println(username+"——————————————————"+sign);
            return iSignatureDao.updateSignatureinfo(signatureinfo,sign);
        }
        return false;
    }
    public List<Signatureinfo> queryAllSignatureinfo(String sign){
        return iSignatureDao.queryAllSignatureinfo(sign);
    }
    public boolean updateSignatureinfoById(Signatureinfo signatureinfo, String sign){
        String id=signatureinfo.getId();
        if (iSignatureDao.countSignatureinfoById(id,sign)==1){
            return iSignatureDao.updateSignatureinfoById(signatureinfo,sign);
        }
        else {
            return false;
        }
    }
    public boolean delSignById(String id,String sign){
        if (iSignatureDao.countSignatureinfoById(id,sign)==1){
            return iSignatureDao.delSignById(id,sign);
        }
        else {
            return false;
        }
    }
    public List<Signatureinfo> querySignByAny(String id,String username,String name,String department,String sign) {
        if (id.length() == 0 & username.length() == 0 & name.length() == 0 & department.length() == 0) {
            return iSignatureDao.queryAllSignatureinfo(sign);
        } else {
            if (username.length() > 0) {
                username = "%" + username + "%";
            }
            if (name.length() > 0) {
                name = "%" + name + "%";
            }
            if (department.length() > 0) {
                department = "%" + department + "%";
            }
            Signatureinfo signatureinfo = new Signatureinfo(id, username, name, "", "", department, "", "");
            List<Signatureinfo> signatureinfos = iSignatureDao.querySignatureinfoByAny(signatureinfo, sign);
            return signatureinfos;
        }
    }
}
