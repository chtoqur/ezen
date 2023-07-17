package com.study.board.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.board.common.SessionUtil;
import com.study.board.user.UserTblVO;


@Controller
public class BbsController {

    @Autowired
    BbsDAO bbsDAO;
    
    @PostMapping("/bbs/list")
    @ResponseBody   // divi, page, rowsPerPage 수신
    public BbsMstVO bbsList(@ModelAttribute("BbsTblVO") BbsTblVO vo) throws Exception
    {
        BbsMstVO bbsMstVO = new BbsMstVO();

        // System.out.println(vo.getDivi());
        // System.out.println(vo.getPage());
        // System.out.println(vo.getRowsPerPage());

        // 1. 전체 row의 개수를 가지고 온다.
        int rowCount = bbsDAO.selectBbsRowCount();
        System.out.println(rowCount);

        // 2. page에 해당하는 BBS 데이터를 가지고 온다.
        List<BbsTblVO> list = bbsDAO.selectBbsList(vo);

        // 3. Master VO에 가져온 데이터를 저장하고 전송한다.
        bbsMstVO.setRowCount(rowCount);
        bbsMstVO.setBbsList(list);

        return bbsMstVO;
    }
}
