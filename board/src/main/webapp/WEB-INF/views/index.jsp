<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
    <h1>Main BBS</h1>
    <hr>
    <div>
        <span id="spnWelcome"></span>
        <button type="button" id="btnLogin"></button>
    </div>
    
    <table border="1" id="tblBBS">
        <thead>
            <th>순번</th>
            <th>번호</th>
            <th>아이디</th>
            <th>날짜</th>
        </thead>
        <tbody>
        </tbody>
    </table>

    <button type="button" id="btnPrev">이전</button>
    <button type="button" id="btn1" class="btns">1</button>
    <button type="button" id="btn2" class="btns">2</button>
    <button type="button" id="btn3" class="btns">3</button>
    <button type="button" id="btn4" class="btns">4</button>
    <button type="button" id="btn5" class="btns">5</button>
    <button type="button" id="btnNext">다음</button>

<script src="/JS/jquery-3.7.0.min.js"></script>
<script>
(()=>{   

    let sessionState = false;

    // 로우 관련 정보
    let rowCount = 0;           // 전체 건수
    
    // 페이지 관련 정보
    let rowsPerPage = 5;        // 페이지 당 건수 (테이블에서 보여지는 최대 건수)
    let curPage = 0;
    let totalPage = 0;          // 전체 페이지 넘버

    // 섹션 관련 정보
    let curSection = 0;         // 현재 섹션 (다음 버튼 = 증가, 이전 버튼 = 감소)
    let pagesPerSection = 5;    // 섹션 당 페이지 수 (버튼 수와 동일)
    let totalSectionNum = 0;

    const spnWelcome = document.querySelector('#spnWelcome');
    const btnLogin = document.querySelector('#btnLogin');

    const btnPrev = document.querySelector('#btnPrev');
    const btn1 = document.querySelector('#btn1');
    const btn2 = document.querySelector('#btn2');
    const btn3 = document.querySelector('#btn3');
    const btn4 = document.querySelector('#btn4');
    const btn5 = document.querySelector('#btn5');
    const btnNext = document.querySelector('#btnNext')

    //////////////////////////////////////////////////////////

    // 현재 세션이 존재하는지 확인
    const setsessionState = function()
    {
        if('${vo.userId}' == '')
        {
            sessionState = false;
        }
        else
        {
            sessionState = true;
        }
    }

    // 웰컴 메세지 설절
    const setWelcomeMsg = function()
    {
        if (sessionState == true)
        {
            spnWelcome.textContent = '${vo.name}님 반갑습니다.';
        }
        else
        {
            spnWelcome.textContent = 'Guest Mode로 이용중입니다.';
        }
    }

    const setLoginButton = function()
    {
        if (sessionState == true)
        {
            btnLogin.textContent = '로그아웃'
        }
        else
        {
            btnLogin.textContent = '로그인'
        }
    }

    const setBBS = function(page)
    {
        // 객체로 생성하기
        let requestData = {
            divi : 'C',
            page : page,
            rowsPerPage : rowsPerPage
        };

        $.ajax({
            url : 'bbs/list',
            type : 'POST',
            data : requestData,
            success : function(data)
            {
                let bstr = '';
                const tblBody = document.querySelector('#tblBBS > tbody');

                // data : 1. 전체 rowCount, 2. bbsList

                // 1. 전체 카운트를 저장한다.
                rowCount = data.rowCount;
                // 2. 테이블 body를 채워준다.
                tblBody.innerHTML = '';

                for (let i = 0; i < data.bbsList.length; i++)
                {
                    bstr = '';
                    bstr += '<tr>';
                        bstr += '<td>' + data.bbsList[i].rowNum + '</td>';
                        bstr += '<td>' + data.bbsList[i].title + '</td>';
                        bstr += '<td>' + data.bbsList[i].userId + '</td>';
                        bstr += '<td>' + data.bbsList[i].regDate + '</td>';
                    bstr += '</tr>';

                    tblBody.innerHTML += bstr;
                }
            }
        });
    }


    //////////////////////////////////////////////////////////
    ////////////////////// 이벤트 핸들러 /////////////////////
    btnLogin.addEventListener('click', ()=>{

        // 로그인 상태일 시 로그아웃
        if (sessionState == true)
        {
            location.href = '/logout';
        }
        // 로그아웃 상태일 시 로그인
        else
        {
            location.href = '/login';
        }
    })

    btnPrev.addEventListener('click', ()=>{

        // 현재 rowCount의 개수를 한 번 더 출력
        

        totalPage = Math.ceil(rowCount / rowsPerPage) - 1;
        totalSectionNum = Math.ceil(rowCount / rowsPerPage / pagesPerSection) - 1;

        // let rowsPerSection = rowsPerPage * pagesPerSection;
        // 'rowCount - (rowsPerSection * (curSection + 1)) > 0' 조건을 만족해야 next 가능

        // 1. Prev 불가능 : 첫번째 섹션에 위치해있는 경우
        if (curSection == 0)
        {
            return;
        }
        // 2. Prev 가능 : 섹션 이동 후 curSection--
        else
        {
            const startPage = (pagesPerSection * (curSection - 1));
            setBBS(startPage);
            curSection--;

            // 하단 숫자 버튼 변경
            const btns = document.querySelectorAll('.btns');
            let count = 1;

            for (let i = 0; i < btns.length; i++)
            {
                btns[i].textContent = (startPage + count);
                count++;
            }
            curPage = startPage;
        }
    });

    btnNext.addEventListener('click', ()=>{

        // 현재 rowCount의 개수를 한 번 더 출력

        
        totalPage = Math.ceil(rowCount / rowsPerPage) - 1;
        totalSectionNum = Math.ceil(rowCount / rowsPerPage / pagesPerSection) - 1;

        // 1. Next 불가능 : 마지막 섹션에 와있는 경우
        if (curSection == totalSectionNum)
        {
            return;
        }
        // 2. Next 가능 : 섹션 이동 후 curSection++
        else
        {
            const startPage = pagesPerSection * (curSection + 1);
            setBBS(startPage);
            curSection++;

            // 하단 숫자 버튼 변경
            const btns = document.querySelectorAll('.btns');
            let num = 1;

            for (let i = 0; i < btns.length; i++)
            {
                btns[i].textContent = (startPage + num);
                num++;
            }

            // 버튼 히든 - 수정 중
            // if (curSection == totalSectionNum)
            // {
            //    
            // }

            // 현재 페이지 저장
            curPage = startPage;
        }
    });

    btn1.addEventListener('click', ()=>{
        setBBS(curPage);
    });

    btn2.addEventListener('click', ()=>{
        setBBS(curPage + 1);
    });

    btn3.addEventListener('click', ()=>{
        setBBS(curPage + 2);
    });

    btn4.addEventListener('click', ()=>{
        setBBS(curPage + 3);
    });

    btn5.addEventListener('click', ()=>{
        setBBS(curPage + 4);
    });



    //////////////////////////////////////////////////////////
    ///////////////////////// 호출부 /////////////////////////
    setsessionState();      // 세션이 있는지 없는지 상태값을 저장
    setWelcomeMsg();        // 웰컴 메세지 설정
    setLoginButton();       // 로그인-로그아웃 버튼 설정
    setBBS(0);

})(); 
</script>
        
</body>
</html>