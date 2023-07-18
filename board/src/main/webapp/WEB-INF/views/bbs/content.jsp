<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

    <form action="/bbs/content" method="post" name="editContent" id="editContent">
    <input type="text" id="txtTitle" value="${vo.title}"><span id="txtId">${vo.userId}</span>
    <br>
    <textarea name="" id="txtContent" cols="30" rows="10">${vo.content}</textarea>
    </form>

    <br>
    <button type="button" id="btnList">목록으로</button>
    <button type="button" id="btnUpdate">수정</button>

<script src="/JS/jquery-3.7.0.min.js"></script>
<script>
(()=>{   

    let myContent = false;

    const txtTitle = document.querySelector('#txtTitle');
    const txtContent = document.querySelector('#txtContent');

    const btnList = document.querySelector('#btnList');
    const btnUpdate = document.querySelector('#btnUpdate');

    /////////////////////////////////////////////////////////////////
    // 함수

    const checkMyContent = function()
    {
        // 현재 로그인 한 아이디와 게시글 작성자 아이디가 동일하다면
        if ('${session.userId}' === '${vo.userId}')
        {
            myContent = true;
        }
        else
        {
            myContent = false;
        }
    }

    const setUiObject = function()
    {
        // 내 컨텐츠가 아니라면 읽기만 가능
        if (myContent === false)
        {
            // 1. 타이틀과 컨텐츠를 read-only로 설정
            txtTitle.setAttribute('readonly', 'readyonly');
            txtContent.setAttribute('readonly', 'readonly');
            // 2. 수정 버튼 disable
            btnUpdate.setAttribute('disabled', 'disabled');

        }
        else
        {
            // txtTitle.removeAttribute("readonly", false);
            // txtContent.removeAttribute("readonly", false);
        }
    }

    // /////////////////////////////////////////////////////////////////////////

    btnList.addEventListener('click', ()=>{
        location.href = '/index';
    })

    btnUpdate.addEventListener('click', ()=>{

        // 던질 데이터를 마련한다.
        let requestData = {
            userId : '${vo.userId}',
            seq : '${vo.seq}',
            title : txtTitle.value,
            content : txtContent.value
        };

        $.ajax({
            url : '/bbs/content',
            type : 'POST',
            data : requestData,
            success : function(data)
            {
                if (data == "OK")
                {
                    alert("수정되었습니다.");
                }
                else
                {
                    alert("수정에 실패하였습니다.");
                }
                
            }
        });
        
        // if (myContent == true)
        // {
        //     if (confirm("수정하시겠습니까?"))
        //     {
        //         const editContent = document.querySelector('#editContent');
        //         editContent.submit();   // 서버로 전송

        //         // txtTitle.setAttribute('value', '${updateVO.title}');
        //         location.href = '/index';
        //     }
        // }
        
        // 바뀐 정보를 서버에 던져주고,
        // 서버가 받았을 때 
    })

    /////////////////////////////////////////////////////////////////
    // 호출부
    checkMyContent();   // 본인이 작성한 글인지 체크 > boolean
    setUiObject();
        
})(); 
</script>
        
</body>
</html>