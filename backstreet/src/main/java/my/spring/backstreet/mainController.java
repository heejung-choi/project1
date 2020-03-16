package my.spring.backstreet;

import java.text.DecimalFormat;

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
import vo.salesVO;


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
		System.out.println("Controller - login �Լ�");
		System.out.println("code : " + code ); // ����� ������ ���� code ȹ�� -> Access Token, Refresh Token ȹ�� ���� -> API ���
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
		System.out.println("Controller - logout �Լ�"); // ����� ������ ���� code ȹ�� -> Access Token, Refresh Token ȹ�� ���� -> API ���

		// �α׾ƿ� ���� Ŭ���� ����
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
	public ModelAndView changeConsulting1() {//int area_id �� ���߿� �Ű������� ���߿� ��ȣ���� �����ذ� ������ ��..
		String changeCodeName = consultingViewDAO.changeConsulting1(1001495);
		System.out.println("��Ʈ�ѷ� changeCodeName :" + changeCodeName);
		//�ӽ÷�  ��������.. ���߿� �Ű������� �޾ƿ��� ���� 
		//��� ������ �޾ƿ��� DAO��.. ex) ���̳��� ���
		//���� ���
		
		String areaCodeName = consultingViewDAO.areaConsulting1(1001495); // 
		System.out.println("��Ʈ�ѷ� areaCodeName :" + areaCodeName);
		// �ӽ÷�(area���̺��� area_id) ��������
		// ����ڵ��(area���̺��� area_coname)�� �޾ƿ��� DAO ex)���̿��������
		
		int change_id = consultingViewDAO.areaConsulting2(1001495);
		System.out.println("��Ʈ�ѷ� change_id :" + change_id);
		//change_id ������ ��ü�Ǿ� �ִ»��~ Ȱ���� ��� ����
		
		String serviceCodeName = consultingViewDAO.serviceConsulting1("CS300005");
		System.out.println("��Ʈ�ѷ� serviceCodeName :" + serviceCodeName);
		
		int oper_month = consultingViewDAO.changeConsulting2(1001495);
		System.out.println("��Ʈ�ѷ� oper_month :" + oper_month);
		//change_id ������ ��ü�Ǿ� �ִ»��~ Ȱ���� ��� ����
		//���� ����
		
		int close_month = consultingViewDAO.changeConsulting3(1001495);
		System.out.println("��Ʈ�ѷ� close_month :" + close_month);
		//change_id ������ ��ü�Ǿ� �ִ»��~ Ȱ���� ��� ����
		//��� ����
		
		float oper_month_avg = consultingViewDAO.changeViewConsulting1();	
		System.out.println("��Ʈ�ѷ�oper_month_avg :" + oper_month_avg);
		// ��� ���� ����
		float close_month_avg = consultingViewDAO.changeViewConsulting2();
		System.out.println("��Ʈ�ѷ� close_month_avg :" + close_month_avg);
		// ��� ��� ����
		
		int all_job_num = consultingViewDAO.jobConsulting1(1001495);
		System.out.println("��Ʈ�ѷ� all_job_num :" + all_job_num);
		//�� ���� �α���
		
		int all_job_num_avg = consultingViewDAO.jobViewConsulting1();
		System.out.println("��Ʈ�ѷ� all_job_num_avg :" + all_job_num_avg);
		//�� ���� �α��� ���
		
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

	@RequestMapping(value="/map")
	public String mapStreet() {
		return "map";
	}
	
	
	@RequestMapping(value="/searchreport") 
	public String searchStreet() { 
		return "searchReport"; 
	}
	
	
	@RequestMapping(value="/report")
	public ModelAndView report(salesVO vo) {
		//System.out.println(vo);
		long money = consultingViewDAO.sales_1Area1(vo);	
		ModelAndView mav = new ModelAndView();
		DecimalFormat formatter = new DecimalFormat("###,###");
		//System.out.println(formatter.format(money));
		mav.addObject("list", formatter.format(money));
		mav.setViewName("report");
		return mav;
	}
}
