package service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class getTrandsSearchResult {
	public String[] getTrands(String query) throws UnsupportedEncodingException {
		String app_key = "818df44d90dfebbf8d7718a985d919b7";
		String reqURL = "https://dapi.kakao.com/v2/search/blog?query=" + URLEncoder.encode(query, "UTF-8");
		String result = "";
		String blogData[] = new String[6];
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "KakaoAK " + app_key);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
			//인풋 스트림 객체를 생성할 때 2번째 아규먼트로 UTF-8을 줘야 받아올 때 한글이 안깨짐.
			String line = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			//result = URLEncoder.encode(result,"UTF-8");
			System.out.println("response body : " + result);
			
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			
			//String result = element.getAsJsonObject("")
			//x = element.getAsString();
			
			String title = element.getAsJsonObject().get("documents").getAsJsonArray().get(0).getAsJsonObject().get("title").toString();
			String content = element.getAsJsonObject().get("documents").getAsJsonArray().get(0).getAsJsonObject().get("contents").toString();
			String doc_url = element.getAsJsonObject().get("documents").getAsJsonArray().get(0).getAsJsonObject().get("url").toString();
			String blogname = element.getAsJsonObject().get("documents").getAsJsonArray().get(0).getAsJsonObject().get("blogname").toString();
			String thumbnail = element.getAsJsonObject().get("documents").getAsJsonArray().get(0).getAsJsonObject().get("thumbnail").toString();
			String datetime = element.getAsJsonObject().get("documents").getAsJsonArray().get(0).getAsJsonObject().get("datetime").toString();
		
			blogData[0] = title;
			blogData[1] = content;
			blogData[2] = doc_url.substring(1);
			blogData[3] = blogname;
			blogData[4] = thumbnail.substring(1);
			blogData[5] = datetime;
		} catch (IOException e) {
			e.printStackTrace();
		}

		return blogData;
	}
}
