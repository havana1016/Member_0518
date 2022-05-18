package com.its.member.Controller;

import com.its.member.Dto.mDto;
import com.its.member.Service.mService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    String login(@RequestParam("logid")String logid,@RequestParam("logpw")String logpw){
        mDto mem=new mDto(logid,logpw);
        System.out.println(mem.getMid()+" "+mem.getMpw());
        if(ms.login(mem)){
            return ("main");
        }return null;

    }
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


}
