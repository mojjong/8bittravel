package org.yo.file.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileVO {
	private List<MultipartFile> folder;
	private String folderName;

	
	
	public List<MultipartFile> getFolder() {
		return folder;
	}

	public void setFolder(List<MultipartFile> folder) {
		this.folder = folder;
	}

	public String getFolderName() {
		return folderName;
	}

	public void setFolderName(String folderName) {
		this.folderName = folderName;
	}

	@Override
	public String toString() {
		return "FileVO [folder=" + folder + ", folderName=" + folderName + "]";
	}
	
	
	
	
	
}
