package com.its.member.Dto;

import lombok.*;

@NoArgsConstructor
@Getter
@Setter

public class mDto {
    int id;
    String mid;
String mpw;
String mname;
int mage;
String mnum;

    public mDto(String mid) {
        this.mid = mid;
    }

    public mDto(String mid, String mpw, String mname, int mage, String mnum){

    this.mid=mid;
    this.mpw=mpw;
    this.mage=mage;
    this.mname=mname;
    this.mnum=mnum;
}
   public mDto(String mid,String mpw){

        this.id=0;
        this.mid=mid;
        this.mpw=mpw;
        this.mage=0;
        this.mname=null;
        this.mnum=null;

    }

    @Override
    public String toString() {
        return "회원정보 [ " +
                "관리번호 : "+id+
                ", 아이디 : " + mid +
                ", 비밀번호 : " + mpw +
                ", 이름 : " + mname +
                ", 나이 : " + mage +
                ", 연락처 : " + mnum +
                " ]";
    }
}
