package com.its.member.Service;

import com.its.member.Dto.mDto;
import com.its.member.Repository.mRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class mService {
    @Autowired
    mRepository mr;
   public boolean save(mDto mem){
        if(mr.save(mem)>0){
            return true;
        }else{
            return false;
        }

        }


//        public void login(mDto mem){
//            mr.login(mem);
//        }
    public boolean login(mDto mem){
        return mr.login(mem);}

    public List<mDto> find(){
        List<mDto>findlist= mr.find();
        return findlist;
    }

    public mDto idc(mDto mem){
          return mr.idc(mem);
    }

    public mDto findid(mDto mem){
       return mr.findid(mem);
    }
    public int del(mDto mmm){
       return mr.del(mmm);
    }


    public void update(mDto mmm) {
       mr.update(mmm);
    }
}

