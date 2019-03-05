package com.bit_etland.web.proxy;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.bit_etland.web.domain.ImageDTO;


public class ImageProxy implements Proxy{
	ImageDTO img;
	
	@Override
	public void carryOut(Object o) {
		/*HttpServletRequest request = (HttpServletRequest)o;
		if(!ServletFileUpload.isMultipartContent(request)){
			return;
		}
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setFileSizeMax(1024 * 1024 * 40); // 40 MB
		upload.setSizeMax(1024 * 1024 * 50); // 50 MB
		List<FileItem> items = null;
		try {
			File file = null;
			items = upload.parseRequest(new ServletRequestContext(request));
			Iterator<FileItem> it = items.iterator();
			while(it.hasNext()) {
				FileItem item = it.next();
				if(!item.isFormField()) {
					String fileName = item.getName();
					file = new File(Props.IMAGE.getValue()+fileName);
					item.write(file);
					img = new ImageDTO();
					img.setImgName(fileName.substring(0,fileName.indexOf(".")));
					img.setImgExtention(fileName.substring(fileName.indexOf(".")+1));
					img.setOwner(request.getParameter("customer_id"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		
	}
}









