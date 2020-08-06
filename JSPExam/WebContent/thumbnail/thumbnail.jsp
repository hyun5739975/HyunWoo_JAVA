<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.awt.Graphics2D" %>   

<%@ page import ="java.awt.image.renderable.ParameterBlock" %>   

<%@ page import ="java.awt.image.BufferedImage" %>

<%@ page import ="javax.media.jai.JAI" %>

<!-- 랜더링 처리 -->
<%@ page import ="javax.media.jai.RenderedOp" %>

<%@ page import ="javax.imageio.ImageIO" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!-- 파일에 대한 중복 처리 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%@ page import="java.util.*" %>

<%@ page import="java.io.*" %>

<%
	String imagePath = request.getRealPath("images"); //폴더 경로
	int size = 1*1024*1024; //1MB
	
	String filename=""; 
	
	try{
		
		MultipartRequest multi = new MultipartRequest(request, imagePath, size, "utf-8", new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		
		String file = (String)files.nextElement();
		
		filename = multi.getFilesystemName(file);
		// 썸네일 이미지로 변환할 이미지를 업로드
		
	 //Exception 발생시 예외 처리
	}catch(Exception e){
		e.printStackTrace();
	}
	
	//객체 생성
	ParameterBlock pb = new ParameterBlock();
	
	//add함수 이용해서 이미지를 담음
	pb.add(imagePath+"/"+filename);
	
	//랜더링 처리
	RenderedOp rOp = JAI.create("fileload", pb);
	// 파라미터 블럭 클래스에 변환할 이미지를 저장하고 그 이미지를 불러옴
    // 파라미터 블럭 클래스를 통해서만 이미지를 담을 수 있음 
    // 파라미터 블럭에 업로드 된 이미지를 담고 JAI가 제공하는 코덱을 사용한다는 옵션을 사용함
	
	//이미지 버퍼 담기 (버퍼 생성)
	//불러온 이미지를 버퍼이미지를 생성해서 저장함
	BufferedImage bi = rOp.getAsBufferedImage();
	BufferedImage thumb = new BufferedImage(100,100, BufferedImage.TYPE_INT_RGB); //버퍼 속성 지정 (가로 사이즈, 세로 사이즈, 버퍼 색깔)

	//썸네일이라는 이미지 버퍼를 생성후 버퍼의 사이즈를 100*100으로 설정
	
	Graphics2D g = thumb.createGraphics(); //그래픽 만들기
	//이미지 버퍼에 원본 이미지를 정해진 버퍼 사이즈로 맞추어 드로우 함
	
	g.drawImage(bi, 0, 0, 100, 100, null);
	
	File thumbnaFile = new File(imagePath, "tn_"+filename);
	ImageIO.write(thumb, "jpg", thumbnaFile);
	//출력 위치와 파일 이름 설정후 썸네일 이미지를 생성함
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
-원본 이미지-<br>
<img src="images/<%=filename %>"><br><br>
-썸네일 이미지-<br>
<img src="images/tn_<%=filename %>"><br><br>
</body>
</html>