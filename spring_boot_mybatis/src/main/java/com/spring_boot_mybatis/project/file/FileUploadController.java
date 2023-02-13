package com.spring_boot_mybatis.project.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {
	// 파일 업로드 폼 열기 
	@RequestMapping("/fileUploadForm")
	public String fileUploadFoem() {
		return "upload/fileUploadForm";
	}
	
	// 1)파일 업로드
	@RequestMapping("/fileUpload")
	public String fileUpload(@RequestParam("uploadFile") MultipartFile file, Model model) throws IOException {
		
		// 1. 파일 저장 경로 설정 D:/springWorkspace/upload/
		String uploadPath = "D:/springWorkspace/upload/";
		
		// 2. 원본 파일 이름 저장
		String originalFileName = file.getOriginalFilename();
				
		// 3. 파일이름 중복되지 않도록 파일이름 변경
		// 서버에 저장할 파일이름 설정 : UUID 사용
		UUID uuid = UUID.randomUUID();
		String savedFileName = uuid.toString() + "_" + originalFileName;
		
		// 4. 파일 (객체) 샐성
		File sendFile = new File(uploadPath + savedFileName);
		
		// 5. 서버로 전송
		file.transferTo(sendFile);
		
		// 웹브라우저에서 원본 파일명 출력 : Model로 저장
		model.addAttribute("originalFileName", originalFileName);
		return "upload/fileUploadResultView";
	}
	
	// 2) 여러개의 파일 업로드 
	@RequestMapping("/fileUploadMultiple")
	public String fileUploadMultiple(@RequestParam("uploadFileMulti") ArrayList<MultipartFile>files, Model model) throws IOException {
		
		// 1. 파일 저장 경로 설정 D:/springWorkspace/upload/
		String uploadPath = "D:/springWorkspace/upload/";
		
		// 여러개의 파일 이름을 저장한 리스트 변수 생성 
		ArrayList<String> originalFileNameList = new ArrayList<String>();
		
		for(MultipartFile file : files) {
			// 2. 원본 파일 이름 저장
			String originalFileName = file.getOriginalFilename();
			// 원본 파일 이름을 리스트에 저장 
			originalFileNameList.add(originalFileName);
			
			// 3. 파일이름 중복되지 않도록 파일이름 변경
			// 서버에 저장할 파일이름 설정 : UUID 사용
			UUID uuid = UUID.randomUUID();
			String savedFileName = uuid.toString() + "_" + originalFileName;
			
			// 4. 파일 (객체) 샐성
			File sendFile = new File(uploadPath + savedFileName);
			
			// 5. 서버로 전송
			file.transferTo(sendFile);
		}
		
		model.addAttribute("originalFileNameList", originalFileNameList);
		return "upload/fileUploadMultipleResultView";
	}
	
	
	//3) 파일 이름 변경 x 업로드
	@RequestMapping("/fileOriginalNameUpload")
	public String fileOriginalNameUpload(@RequestParam("uploadFileOrigin") MultipartFile file, Model model) throws IOException {
		
		// 1. 파일 저장 경로 설정 D:/springWorkspace/upload/
		String uploadPath = "D:/springWorkspace/upload/";
		
		// 2. 원본 파일 이름 저장
		String originalFileName = file.getOriginalFilename();
				
		// 3. 파일 (객체) 샐성
		File sendFile = new File(uploadPath + originalFileName);
		
		// 4. 서버로 전송
		file.transferTo(sendFile);
		
		// 웹브라우저에서 원본 파일명 출력 : Model로 저장
		model.addAttribute("originalFileName", originalFileName);
		return "upload/fileUploadResultView";
	}
		
	// 이미지 파일 업로드할 페이지 열기 
	@RequestMapping("/imageFileUploadForm")
	public String imageFileUploadForm() {
		return"upload/imageFileUpload";
	}
	
	// upload 폴더에 파일 업로드 
	@ResponseBody
	@RequestMapping("/imageFileUpload")
	public String imageFileUpload(@RequestParam("uploadFile") MultipartFile file) throws IOException {
		// 1. 파일 저장 경로 설정 D:/springWorkspace/upload/
		String uploadPath = "D:/springWorkspace/upload/";
		
		// 2. 원본 파일 이름 저장
		String originalFileName = file.getOriginalFilename();
				
		// 3. 파일 (객체) 샐성
		File sendFile = new File(uploadPath + originalFileName);
		
		// 4. 서버로 전송
		file.transferTo(sendFile);
		String result = "success";
		return result;
	}
	
	// 오디오 파일 업로드할 페이지 열기 
	@RequestMapping("/audioFileUploadForm")
	public String audioFileUploadForm() {
		return"upload/audioFileUpload";
	}
	
	// upload 폴더에 파일 업로드 
	// 이미지 파일 업로드와 동일 : 두개 합쳐서 사용해도됨
	@ResponseBody
	@RequestMapping("/audioFileUpload")
	public String audioFileUpload(@RequestParam("uploadFile") MultipartFile file) throws IOException {
		// 1. 파일 저장 경로 설정 D:/springWorkspace/upload/
		String uploadPath = "D:/springWorkspace/upload/";
		
		// 2. 원본 파일 이름 저장
		String originalFileName = file.getOriginalFilename();
		
		// 3. 파일 (객체) 샐성
		File sendFile = new File(uploadPath + originalFileName);
		
		// 4. 서버로 전송
		file.transferTo(sendFile);
		String result = "success";
		return result;
	}
	
	// 녹음 파일 업로드할 페이지 열기 
	@RequestMapping("/recordFileUploadForm")
	public String recordFileUploadForm() {
		return"upload/recordFileUpload";
	}
}
