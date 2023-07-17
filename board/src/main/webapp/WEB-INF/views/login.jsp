<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
    <h1>Login</h1>

    <form action="/login" method="post" name="frmLogin" id="frmLogin">
        <!-- ID/PW와 인풋 사이 마진 조절을 위해 table 테크닉-->
        <table>
            <tr>
                <!-- name은 서버에서 인식하는 이름, id는 jsp 내부 페이지 인식용 -->
                <td><label for="userId">아이디</label></td>
                <td><input type="text" name="userId" id="userId"></td>
            </tr>

            <tr>
                <td><label for="userPw">패스워드</label></td>
                <td><input type="text" name="userPw" id="userPw"></td>
            </tr>
        </table>
    </form>

    <!-- button의 디폴트 기능은 submit이기 때문에 사용자가 수동 핸들하기 위해서
         button이라고 명시적으로 하는 것이 좋음 -->
    <div>
        <button type="button" id="btnLogin">로그인</button>
        <button type="button" id="btnIndex">첫화면</button>
    </div>
    <hr>
    <div>
        <button type="button" id="btnJoin">회원가입</button>
        <button type="button" id="btnFindId">ID 찾기</button>
        <button type="button" id="btnFindPw">PW 찾기</button>
    </div>

<script>
(()=>{

    // 메세지 핸들러

    // 버튼에 대한 DOM 로딩
    const btnLogin = document.querySelector('#btnLogin');
    const btnIndex = document.querySelector('#btnIndex');
    const btnJoin = document.querySelector('#btnJoin');
    const btnFindId = document.querySelector('#btnFindId');
    const btnFindPw = document.querySelector('#btnFindPw');

    
    const checkInputStatus = function()
    {
        const frmLogin = document.querySelector('#frmLogin');

        if((frmLogin.userId.value == "") || (frmLogin.userPw.value == ""))
        {
            alert("아이디와 패스워드를 입력해주세요.")
        }
        else
        {
            if("${userAccountData}" === "NotExist")
            {
                alert("존재하지 않는 계정입니다. 회원가입 후 이용해주세요.");
            }
        }
    }


    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////// 이벤트 핸들러 영역 //////////////////////////////

    btnLogin.addEventListener('click', ()=>{
        // ID, PW 서버로 전달

        checkInputStatus();

        // 1. 클릭 시 마다 실시간으로 form DOM을 로딩한다. 
        const frmLogin = document.querySelector('#frmLogin');

        // 2. form DOM의 submit 함수를 호출한다. > 서버로 전송 완료
        frmLogin.submit();
    });

    btnIndex.addEventListener('click', ()=>{
        location.href = '/index';
    });

    btnJoin.addEventListener('click', ()=>{

    });

    btnFindId.addEventListener('click', ()=>{

    });

    btnFindPw.addEventListener('click', ()=>{

    });


        
})(); 
</script>
        
</body>
</html>