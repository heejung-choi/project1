package my.spring.backstreet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.consultingViewDAO;
import service.getConsultingSearchResult;
import service.getLoginAccessToken;
import service.getLogoutUserId;
import service.getTrandsSearchResult;
import vo.changeVO;


@Controller
public class mainController {
	
	@Autowired
	private getLoginAccessToken kakaoLogin;
	
	@Autowired
	private getLogoutUserId kakaoLogout;
	
	@Autowired
	private getConsultingSearchResult kakaoConsultingSearch;
	
	@Autowired
	private getTrandsSearchResult kakaoTrandsSearch;
	
	@Autowired
	private consultingViewDAO consultingViewDAO;
	
	@RequestMapping(value="/test")
	public String testz() {
		return "test";
	}
	
	@RequestMapping(value="/main")
	public String mainView() {
		return "main";
	}
	@RequestMapping(value="/loginView")
	public String loginView() {
		return "login";
	}
	@RequestMapping(value="/login")
	public ModelAndView login(@RequestParam("code") String code) {
		System.out.println("Controller - login 함수");
		System.out.println("code : " + code ); // 사용자 인증을 통한 code 획득 -> Access Token, Refresh Token 획득 가능 -> API 사용
		String accessToken = kakaoLogin.getAccessToken(code);
		System.out.println("AccessToke : " + accessToken);
		ModelAndView mav = new ModelAndView();
		mav.addObject("code",code);
		mav.addObject("accessToken", accessToken);
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="/logout")
	public String logout(@RequestParam("accessToken") String accessToken) {
		System.out.println("Controller - logout 함수"); // 사용자 인증을 통한 code 획득 -> Access Token, Refresh Token 획득 가능 -> API 사용

		// 로그아웃 서비스 클래스 실행
		String UserId = kakaoLogout.getUserId(accessToken);
		System.out.println("UserID : " + UserId);
		return "main";
	}
	
	
	
	@RequestMapping(value="/trands")
	public String trands() {
		
		return "trands";
	}
	
	@RequestMapping(value="/trandsSearch")
	public ModelAndView trandsSearch(@RequestParam("query") String query) throws Exception {
		ModelAndView mav = new ModelAndView();
		String[] result = kakaoTrandsSearch.getTrands(query);
		mav.addObject("json",result);
		mav.setViewName("trands");
		return mav;
	}
	
	
	@RequestMapping(value="/consulting")
	public String consulting() {
		return "consulting";
	}
	
	//boardController................
	@RequestMapping(value="/consultingSearch")
	public ModelAndView search(@RequestParam("query") String query) throws Exception {
		float[] result = kakaoConsultingSearch.getResult(query);
		ModelAndView mav = new ModelAndView();
		mav.addObject("json", result);
		mav.setViewName("consulting");
		return mav;
	}
	
	//consultingView Controller......
	@RequestMapping(value="/changeConsulting1")
	public ModelAndView changeConsulting1() {//int area_id 를 나중에 매개변수는 나중에 세호형이 보내준거 받으면 됨..
		String changeCodeName = consultingViewDAO.changeConsulting1(1001495);
		System.out.println("컨트롤러 changeCodeName :" + changeCodeName);
		//임시로  설정해줌.. 나중에 매개변수로 받아오면 수정 
		//상권 정보를 받아오는 DAO임.. ex) 다이나믹 상권
		//업종 출력
		
		String areaCodeName = consultingViewDAO.areaConsulting1(1001495); // 
		System.out.println("컨트롤러 areaCodeName :" + areaCodeName);
		// 임시로(area테이블의 area_id) 설정해줌
		// 상권코드명(area테이블의 area_coname)을 받아오는 DAO ex)둔촌역전통시장
		
		int change_id = consultingViewDAO.areaConsulting2(1001495);
		System.out.println("컨트롤러 change_id :" + change_id);
		//change_id 값으로 정체되어 있는상권~ 활발한 상권 구분
		
		String serviceCodeName = consultingViewDAO.serviceConsulting1("CS300005");
		System.out.println("컨트롤러 serviceCodeName :" + serviceCodeName);
		
		int oper_month = consultingViewDAO.changeConsulting2(1001495);
		System.out.println("컨트롤러 oper_month :" + oper_month);
		//change_id 값으로 정체되어 있는상권~ 활발한 상권 구분
		//영업 개월
		
		int close_month = consultingViewDAO.changeConsulting3(1001495);
		System.out.println("컨트롤러 close_month :" + close_month);
		//change_id 값으로 정체되어 있는상권~ 활발한 상권 구분
		//폐업 개월
		
		float oper_month_avg = consultingViewDAO.changeViewConsulting1();	
		System.out.println("컨트롤러oper_month_avg :" + oper_month_avg);
		// 평균 영업 개월
		float close_month_avg = consultingViewDAO.changeViewConsulting2();
		System.out.println("컨트롤러 close_month_avg :" + close_month_avg);
		// 평균 폐업 개월
		
		int all_job_num = consultingViewDAO.jobConsulting1(1001495);
		System.out.println("컨트롤러 all_job_num :" + all_job_num);
		//총 직장 인구수
		
		int all_job_num_avg = consultingViewDAO.jobViewConsulting1();
		System.out.println("컨트롤러 all_job_num_avg :" + all_job_num_avg);
		//총 직장 인구수 평균
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("changeCodeName", changeCodeName);
		mav.addObject("areaCodeName", areaCodeName);
		mav.addObject("change_id", change_id);
		mav.addObject("serviceCodeName", serviceCodeName);
		mav.addObject("oper_month", oper_month);
		mav.addObject("close_month", close_month);
		mav.addObject("oper_month_avg", oper_month_avg);
		mav.addObject("close_month_avg", close_month_avg);
		mav.addObject("all_job_num",all_job_num);
		mav.addObject("all_job_num_avg",all_job_num_avg);
		mav.setViewName("consultingView");
		return mav;
	}

}
