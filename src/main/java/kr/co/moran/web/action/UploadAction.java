package kr.co.moran.web.action;

import com.oreilly.servlet.MultipartRequest;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface UploadAction extends Action {
	public String fileExecute(MultipartRequest mlp, HttpServletRequest req, HttpServletResponse resp);
}
