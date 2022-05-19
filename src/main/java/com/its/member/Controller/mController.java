package com.its.member.Controller;

import com.its.member.Dto.mDto;
import com.its.member.Service.mService;
import com.mysql.cj.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class mController {
    @Autowired
    mService ms;



    @GetMapping("/save-form")
    String save(){
        return ("save-form");
    }
    @PostMapping("/save")
   public String save(@ModelAttribute mDto mem){
        if(ms.save(mem)){
            return ("login-form");
        }
        return null;
    }
    @PostMapping("/login")
    String login(@ModelAttribute mDto mem, Model model, HttpSession session){
        System.out.println(mem.getMid()+" "+mem.getMpw());
        if(ms.login(mem)){
            model.addAttribute("logmem",mem);
            session.setAttribute("logmemid",mem.getMid());
            session.setAttribute("logid",mem.getId());
            return ("main");
        }return null;

    }



//    @PostMapping("/login")
//    String login(@RequestParam("logid")String logid,@RequestParam("logpw")String logpw){
//        mDto mem=new mDto(logid,logpw);
//        System.out.println(mem.getMid()+" "+mem.getMpw());
//        if(ms.login(mem)){
//            return ("main");
//        }return null;
//
//    }
//    @PostMapping("/login")
//    void login(@RequestParam("logid")String logid,
//               @RequestParam("logpw")String logpw){
//        ms.login(logid,logpw);
//    }


    @GetMapping("/login-form")
    String loginform(){
        return("login-form");
    }

    @GetMapping("/find")
    String find(Model model){
        List<mDto>findlist=ms.find();
        model.addAttribute("findlist",findlist);
        return ("list");
    }
//    @PostMapping("/idc")
//    String test(){
//        return null;
//    }
    @PostMapping("/idc")
    String test1(@RequestParam("mid")String mid, Model model,HttpSession session){
       mDto mem =new mDto(mid);
        mDto resultmem=ms.idc(mem);
        if(resultmem==null){
            System.out.println("중복아님");
            System.out.println("mem: "+mem);
            model.addAttribute("ttt",mem);


            return "save-form1";
        }else{
            System.out.println("중복");
            return "save-form2";

        }
    }
    String testsave(Model model,String mid){
        model.getAttribute(mid);
        return "save-form1";
    }

    @GetMapping("/detail")
    String detail(@RequestParam("id")int fid,HttpSession session){
        mDto mmm=new mDto();
        mmm.setId(fid);
        session.setAttribute("findmem", ms.findid(mmm));
        return("detail");
    }
    @GetMapping("/detail-d")
    String detaild(@RequestParam("id")int fid,HttpSession session,Model model){
        mDto mmm=new mDto();
        mmm.setId(fid);
        if(ms.del(mmm)>0){
            List<mDto>findlist=ms.find();
            model.addAttribute("findlist",findlist);
            return ("list");
        }else{
            return null;
        }
    }

    @GetMapping("/detail-up")
    String update(@RequestParam("id")int fid,HttpSession session,Model model){

        mDto mmm=new mDto();
        mmm.setId(fid);
        session.setAttribute("upmem",ms.findid(mmm));

        return "update";

    }

}
