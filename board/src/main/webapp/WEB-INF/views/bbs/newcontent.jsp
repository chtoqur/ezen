<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
    <h1>글 작성</h1>

    <input type="text" id="txtTitle">
    <select name="divi" id="divi">
        <option value="C">C: 일반</option>
        <option value="N">N: 공지</option>
        <option value="R">R: 필독</option>
    </select>
    <br>
    <textarea name="" id="txtContent" cols="30" rows="10"></textarea>
    </form>

    <br>
    <button type="button" id="btnList">목록으로</button>
    <button type="button" id="btnInsert">등록</button>

<script src="/JS/jquery-3.7.0.min.js"></script>
<script>
(()=>{

    const btnList = document.querySelector('#btnList');
    const btnInsert = document.querySelector('#btnInsert');

    const txtTitle = document.querySelector('#txtTitle');
    const txtContent = document.querySelector('#txtContent');
    const divi = document.querySelector('#divi');


    ////////////////////////////////////////////////////////////////////

    btnList.addEventListener('click', ()=>{
        location.href = '/index';
    })

    btnInsert.addEventListener('click', ()=>{

        let requestData = {
            title : txtTitle.value,
            content : txtContent.value,
            userId : '${session.userId}',
            divi : divi.options[divi.selectedIndex].value
        };

        $.ajax({
            url : '/bbs/newcontent',
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


    })


        
})(); 
</script>
        
</body>
</html>