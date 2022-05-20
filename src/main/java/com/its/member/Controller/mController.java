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
        mDto logmember=ms.login(mem);
        if(logmember!=null){
            session.setAttribute("logmem",logmember);
            session.setAttribute("logmemid",logmember.getMid());
            session.setAttribute("logid",logmember.getId());
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
//    @PostMapping("/idc")
//    String test1(@RequestParam("mid")String mid, Model model,HttpSession session){
//       mDto mem =new mDto(mid);
//        mDto resultmem=ms.idc(mem);
//        if(resultmem==null){
//            System.out.println("중복아님");
//            System.out.println("mem: "+mem);
//            model.addAttribute("ttt",mem);
//
//
//            return "save-form1";
//        }else{
//            System.out.println("중복");
//            return "save-form2";
//
//        }
//    }
//    String testsave(Model model,String mid){
//        model.getAttribute(mid);
//        return "save-form1";
//    }

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
//            List<mDto>findlist=ms.find();
//            model.addAttribute("findlist",findlist);
//            return ("list");
            return "redirect:/find";
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

    @GetMapping ("/update-form")
    String updateform(){
        return "update-form";
    }


    @PostMapping("/upnum")
    String upnum(@ModelAttribute mDto upmem){
        int up=ms.upnum(upmem);
        System.out.println(up);
        if(up>0){
            return "redirect:/login";
        }return null;
    }


    @PostMapping("/idchk")
       @ResponseBody String idchk(@RequestParam("mid")String mid){
        mDto mem=new mDto();
        mem.setMid(mid);
        String result=ms.idc(mem);
        System.out.println(mid);
        //아이디 중복체크후 없으면 오케이 있으면 노라는 스트링값을 리턴 받으셈
        System.out.println(result);
        return result;
    }
    @GetMapping("/response-test")
    public @ResponseBody String rtest(){
        return "main";
    }

    @GetMapping("/response-test2")
    public @ResponseBody List<mDto> rtest2(){
        return ms.find();
    }
    @GetMapping("/see")
    public @ResponseBody mDto see(@RequestParam("id") int id){
        mDto mem=new mDto();
        mem.setId(id);
        mDto rere=ms.findid(mem);
        System.out.println("controller findid"+rere);
        return rere;
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return"index";
    }

    @GetMapping("/test")
    String test(){
        return "test";
    }
}
