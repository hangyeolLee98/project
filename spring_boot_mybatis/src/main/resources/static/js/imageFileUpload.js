/**
 *  imageFileUpload.js
 */

 $(document).ready(function(){
    $('#imageFileForm').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
        event.preventDefault();
        // 폼 데이타 읽어오기
        var formData = new FormData($('#imageFileForm')[0]);

        // 업로드된 파일명 알아오기 : imageBox 에 이미지 출력하기위함
        // D:\fakepath\cat.jpg 파일경로및 파일명 
        var fileName = $('#uploadFile').val().split("\\").pop(); // 파일명만 추출 
        
        // 서버에 전송하고 결과 받아서 처리
        $.ajax({
            type:"post",
            url:"imageFileUpload",
            enctype:"multipart/form-data",
            processData:false,
            contentType:false,
            data: formData,
            success:function(result){
                if(result == "success"){
                    $('#imageBox').html('<img src="/images/'+fileName+'" width="400px" height="300px">');
                    // /images:매핑 이름
                    // D:\springWorkspace\upload 폴더에 접근하기위해 
                    // Wedconfig에 추가 

                }
            },
            error:function(){
                alert("실패");
            },
            complete:function(){
               // alert("작업 완료");
            }
        }); // ajax 종료 	
    });// submit 종료
});
