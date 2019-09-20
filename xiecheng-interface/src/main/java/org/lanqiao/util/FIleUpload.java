package org.lanqiao.util;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class FIleUpload {
    public static String doUpload(HttpServletRequest request, MultipartFile file) throws IOException {
        String uploadPath = request.getServletContext().getRealPath("/");
        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath+"upload");
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        //获取唯一值
        String uid = UUID.randomUUID().toString();
        String path = "upload" + "/" + uid+ file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        File newFile=new File(uploadPath + path);
        //通过CommonsMultipartFile的方法直接写文件
        file.transferTo(newFile);
        return path;
    }
}
