package com.its.member.Repository;

import com.its.member.Dto.mDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Repository
public class mRepository {
    @Autowired
    SqlSessionTemplate sql;
    public int save(mDto mem){
        return sql.insert("data.save",mem);
    }


    public mDto login(mDto mem){
        mDto result=sql.selectOne ("data.login",mem);
        System.out.println("repository : "+result);
        return result ;

//        if(result!=null){
//            System.out.println("성공");
//            return true;
//        }else {
//            System.out.println("정보 다름");
//            return false;
//        }

    }

    public List<mDto> find(){
        List<mDto> findlist =sql.selectList("data.find");
        return findlist;
    }

//    public void login(String logid,String logpw){
//        mDto result= sql.selectMap ("data.login",logid);
//        if(result!=null){
//            System.out.println("성공");
//        }else {
//            System.out.println("정보 다름");
//        }
//    }
//    public void login(String logid,String logpw){
//        mDto result= sql.selectMap ("data.login",logid);
//        if(result!=null){
//            System.out.println("성공");
//        }else {
//            System.out.println("정보 다름");
//        }
//    }
    public String idc(mDto mem){
       if(sql.selectOne("data.idc",mem)==null){
           return "ok";
       }else{
           return "no";
       }

    }

    public mDto findid(mDto mem){
        return sql.selectOne("data.findid",mem);
    }
    public int del(mDto mmm){
        return sql.delete("data.del",mmm);
    }

    public void update(mDto mmm) {
        sql.update("data.update",mmm);
    }


    public int upnum(mDto upmem) {
        int up= sql.update("data.upmnum",upmem);
        System.out.println(up);
        return up;
    }
}
