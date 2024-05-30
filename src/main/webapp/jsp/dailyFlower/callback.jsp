<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 파라미터값 가져오기
	String dataNo = request.getParameter("dataNo");
	// System.out.println(flowerNo);
	
	// API 에 필요한 값들
	String apiKey = "u0Tp99G1%2BoV0ccrfBPXo9sPWNLGfzFfB7BnTUhQK%2FMW%2BEvp1l0VX6%2ByF35BCJVpBcUbY%2FUe3tuFmKngTmnvxJA%3D%3D";
	String mainUrl = "https://apis.data.go.kr/1390804/NihhsTodayFlowerInfo01/";
	String url1 = mainUrl + "selectTodayFlower01?serviceKey=" + apiKey;
	String url2 = mainUrl + "selectTodayFlowerView01?serviceKey=" + apiKey + "&dataNo=";
	
	// 파라미터 값이 없다면 URL1
	// 파라미터 값이 있다면 URL2
	String selectedUrl = "";
	if (dataNo == null || dataNo.equals("")) {
		selectedUrl = url1;
	} else {
		selectedUrl = url2 + dataNo;
	}
	
	// System.out.println(selectedUrl);
	
	StringBuilder urlBuilder = new StringBuilder(selectedUrl);

	URL url = new URL(urlBuilder.toString());
	HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	conn.setRequestMethod("GET");
	conn.setRequestProperty("Content-type", "application/json");
	// System.out.println("Response code: " + conn.getResponseCode());
	BufferedReader rd;
	if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	    rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	} else {
	    rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	}
	StringBuilder sb = new StringBuilder();
	String line;
	while ((line = rd.readLine()) != null) {
	    sb.append(line);
	}
	rd.close();
	conn.disconnect();
	
	String text = sb.toString().replace("<![CDATA[", "").replace("]]>", "");
	out.println(text);
%>