package com.study.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.study.board.common.SessionUtil;
import com.study.board.user.UserDAO;
import com.study.board.user.UserTblVO;

@Controller
public class MainController {

    @Autowired
    UserDAO userDAO;

    @GetMapping("/index")
    public String index(Model model) throws Exception
    {
        // 1. index를 요청한 대상에 세션이 존재하는지 여부 확인
        //    USER라는 대상의 VO를 가져옴
        UserTblVO userTblVO = (UserTblVO)SessionUtil.getAttribute("USER");

        if (userTblVO != null)
        {
            // 2-1. 세션O : model에 사용자 정보 저장 후 index.jsp로 전송
            model.addAttribute("vo", userTblVO);
        }

        // 2-2. 세션X : 정보 전송 없이 index.jsp 전송

        return "index";
    }

    @GetMapping("/login")
    public String login(Model model) throws Exception
    {
        UserTblVO userTblVO = (UserTblVO)SessionUtil.getAttribute("USER");

        if (userTblVO != null)
        {
            model.addAttribute("vo", userTblVO);
        }
        return "login";
    }

    // 아이디 패스워드를 넘겨서 로그인을 실제로 처리해달라는 요청
    @PostMapping("/login")
    public void login(@ModelAttribute("UserTblVO") UserTblVO vo,
                        HttpServletResponse response,
                        HttpServletRequest request, Model model) throws Exception
    {
        // UserTblVo의 데이터가 잘 넘어왔는지 테스트
        // System.out.println(vo.getUserId());
        // System.out.println(vo.getUserPw());

        // 오라클에 쿼리를 전송 후 결과 받아오기
        // DAO가 필요함 > UserDAO 생성
        UserTblVO resultVO = userDAO.selectOneUser(vo);
        System.out.println(resultVO);
    
        // DB에 해당 계정이 있는지 확인
        if (resultVO == null)
        {
            // 1. 사용자 정보 존재하지 않는 경우 로그인 화면 재출력
            model.addAttribute("userAccountData", "NotExist");
            response.sendRedirect("login");
        }
        else
        {
            // 2. 사용자가 존재하는 경우 세션에 정보 저장
            SessionUtil.set(request, "USER", resultVO);
            // 인덱스로 해당 정보 보내기
            response.sendRedirect("index");
        }
    }

    @GetMapping("/logout")
    public void logout(HttpServletResponse response,
                        HttpServletRequest request) throws Exception
    {
        // 세션 삭제 후 인덱스로
        SessionUtil.remove(request, "USER");
        response.sendRedirect("index");
    }

}
