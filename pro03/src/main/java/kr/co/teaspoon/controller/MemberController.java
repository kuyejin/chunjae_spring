package kr.co.teaspoon.controller;

import kr.co.teaspoon.dao.MemberDAO;
import kr.co.teaspoon.dto.Board;
import kr.co.teaspoon.dto.Member;
import kr.co.teaspoon.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member/*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    HttpSession session;

    /*로그인 폼 이동*/
    @GetMapping("login.do")
    public String memberLoginForm(Model model) throws Exception{
        return "/member/loginForm";
    }

    /*로그인 성공 후*/
/*    @GetMapping("login.do")
    public String memberLogin(Model model) throws Exception{
        return "/";
    }*/

    /* 회원가입 */
    @RequestMapping(value = "insert.do", method = RequestMethod.POST)
    public String memberWrite(HttpServletRequest request, Model model) throws Exception{
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String msg = "로그인 페이지";

        Member mem = new Member();
        //boolean pass = mem.login(id, pw);

        HttpSession session = request.getSession();
        return "redirect:/";
    }

    //회원 가입 - 약관 동의 페이지 로딩
    @GetMapping("agree.do")
    public String getAgree(Model model) throws Exception {
        return "/member/agree";
    }
    //회원 가입 - 회원가입폼 페이지 로딩
    @GetMapping("join.do")
    public String getJoin(Model model) throws Exception {
        return "/member/memberInsert";
    }
    //회원 가입 - Ajax로 아이디 중복 체크
    @RequestMapping(value="idCheck.do", method=RequestMethod.POST)
    public void idCheck(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {

    }




    /*관리자가 볼 수 있는 회원 목록*/
    @RequestMapping(value = "list.do", method = RequestMethod.GET)
    public String memberList(Model model) throws Exception{
        List<Member> memberList = memberService.memberList();
        model.addAttribute("memberList",memberList);
        model.addAttribute("title", "회원 목록");
        return "/member/memberList";
    }

    /*관리자가 회원의 상세 정보 보기 -> 해당 클릭한 사람의 정보를 보여줘야한다*/
    @GetMapping(value = "detail.do")
    public String memberDetail(@RequestParam String id, Model model) throws Exception{
        Member member = memberService.getMember(id);
        model.addAttribute("member",member);
        return "/member/memberDetail";
    }

    /*로그인한 사람의 아이디를 물어온다*/
    @GetMapping(value = "mypage.do")
    public String mypage(Model model) throws Exception{
        String id = (String) session.getAttribute("sid");
        Member member = memberService.getMember(id);
        model.addAttribute("member",member);
        return "/member/mypage";
    }


    /*회원 삭제*/
    @GetMapping("delete.do")
    public String memberelete(HttpServletRequest request, Model model) throws Exception {
        String id = request.getParameter("id");
        memberService.memberDelete(id);
        return "redirect:list.do";
    }

    /*회원 정보 수정*/

    @GetMapping("edit.do")
    public String editForm(HttpServletRequest request, Model model) throws Exception {
        String id = request.getParameter("id");
        Member member = memberService.getMember(id);
        model.addAttribute("member",member );
        return "/member/memberEdit";
    }

    @PostMapping("edit.do")
    public String memberEdit(HttpServletRequest request, Model model) throws Exception {
        String id = request.getParameter("id");
        Member member = new Member();
        //member.setId(id);
        member.setPw(request.getParameter("pw"));
        member.setName(request.getParameter("name"));
        member.setBirth(request.getParameter("email"));
        member.setTel(request.getParameter("tel"));
        member.setAddr1(request.getParameter("addr1"));
        member.setAddr2(request.getParameter("addr2"));
        member.setPostcode(request.getParameter("postcode"));
        member.setBirth(request.getParameter("birth"));

        memberService.memberEdit(member);
        return "redirect:list.do";
    }









}
