package cn.tjzc.common.service;

import org.springframework.web.multipart.MultipartFile;

import cn.tjzc.common.enums.EUploadType;
import cn.tjzc.common.pojo.ImageUploadResult;

public interface IUploadService {

	public ImageUploadResult processupload(Integer memberId,MultipartFile file,EUploadType uploadType);

}
