package cn.edu.scau.scd.utils;

import java.util.UUID;

public class UpLoadUtil {
	/**
	 * 解决目录文件名重复
	 * @param fileName
	 * @return
	 */
	public static String getUuidFileName (String fileName) {
		int idx = fileName.lastIndexOf(".");
		String extension = fileName.substring(idx);
		return UUID.randomUUID().toString().replace("-", "") + extension;
	}
	
	public static String getPath (String uuidFileName) {
		int code1 = uuidFileName.hashCode();
		int d1 = code1 & 0xF;
		int code2 = code1 >>> 4;
		int d2 = code2 & 0xF;
		return "/" + d1 + "/" + d2;
	}
}
