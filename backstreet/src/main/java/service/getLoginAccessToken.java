package service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class getLoginAccessToken {
    
    public String getAccessToken (String authorize_code) {
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";
        
        try {
            URL url = new URL(reqURL);
            // URL 클래스는 URL로 부터 데이터를 가져오기 위한 몇몇 메서드를 제공함.
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            //HttpURLConnection 클래스는 서버와 통신을 구현하는데 쓰이는 클래스 .
            
            
            //    POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            // 서버와 통신을 할 때, 보통 POST, GET을 자주쓰는데,
            // POST 방식의 경우 HttpURLConnection.setDoOutput(true)를 설정하고 파라미터를 바디에 담아서 전송하게 됨.
            // HttpURLConnection.setRequestMethod("GET") (default 는 GET) 를 설정한뒤
            // HttpURLCOnnection.setDoOutPut(true)를 호출하면 setRequestMethod() 가 자동으로 POST로 변경됨. 

            //    POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=818df44d90dfebbf8d7718a985d919b7");
            sb.append("&redirect_uri=http://localhost:8000/backstreet/login");
            sb.append("&code=" + authorize_code);
            bw.write(sb.toString());
            bw.flush();
            
            //    결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);
 
            //    요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            
            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);
            
            //    Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            //    pom.xml에 gson 관련 태그를 추가해야 에러안남
			  JsonParser parser = new JsonParser(); 
			  JsonElement element = parser.parse(result);
			  
			  access_Token = element.getAsJsonObject().get("access_token").getAsString();
			  refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
			  
			  System.out.println("access_token : " + access_Token);
			  System.out.println("refresh_token : " + refresh_Token);
			 
            
            br.close();
            bw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } 
        
        return access_Token;
    }
}
