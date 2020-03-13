package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class consultingViewDAO {
	
	@Autowired
	SqlSession session = null;
	
// change 테이블
	public String changeConsulting1(int area_id){
		String changeCodeName = null;
		String statement = "resource.BackstreetMapper.changeConsulting1";
		changeCodeName = session.selectOne(statement,area_id); // area_id 값 들어가면 됨.
		return changeCodeName;
	} // 다이나믹..
	
	public int changeConsulting2(int area_id){
		int oper_month = 0;
		String statement = "resource.BackstreetMapper.changeConsulting2";
		oper_month = session.selectOne(statement,area_id); // area_id 값 들어가면 됨.
		return oper_month;
	} // 영업 개월 
	
	public int changeConsulting3(int area_id){
		int close_month = 0;
		String statement = "resource.BackstreetMapper.changeConsulting3";
		close_month = session.selectOne(statement,area_id); // area_id 값 들어가면 됨.
		return close_month;
	} // 폐업 개월 
//change 테이블 끝
	
//area 테이블
	public String areaConsulting1(int area_id){
		String areaCodeName = null;
		String statement = "resource.BackstreetMapper.areaConsulting1";
		areaCodeName = session.selectOne(statement,area_id); // area_id 값 들어가면 됨.
		return areaCodeName;
	} // 지역명
	
	public int areaConsulting2(int area_id){
		int change_id = 0;
		String statement = "resource.BackstreetMapper.areaConsulting2";
		change_id = session.selectOne(statement,area_id); // area_id 값 들어가면 됨.
		return change_id;
	} // 정체, 상권축소, 상권확장, 다이나믹 등을 을 뽑기 위한 change_id
//area 테이블 끝
	
//service 테이블
	public String serviceConsulting1(String serv_id){
		String serviceCodeName = null;
		String statement = "resource.BackstreetMapper.serviceConsulting1";
		serviceCodeName = session.selectOne(statement,serv_id); // area_id 값 들어가면 됨.
		return serviceCodeName;
	} // 업종 출력
//service 테이블 끝
	
//job 테이블
	public int jobConsulting1(int area_id) {
		int all_job_num = 0;
		String statement = "resource.BackstreetMapper.jobConsulting1";
		all_job_num = session.selectOne(statement,area_id);
		return all_job_num;
	} //총 직장 인구수 출력
//job 테이블 끝
	
//view
	public float changeViewConsulting1(){
		float oper_month_avg = 0;
		String statement = "resource.BackstreetMapper.changeViewConsulting1";
		oper_month_avg = session.selectOne(statement);
		return oper_month_avg;
	} // 영업 개월 평균(View)
	
	public float changeViewConsulting2(){
		float close_month_avg = 0;
		String statement = "resource.BackstreetMapper.changeViewConsulting2";
		close_month_avg = session.selectOne(statement);
		return close_month_avg;
	} // 폐업 개월 평균(View)
	
	public int jobViewConsulting1() {
		int all_job_num_avg = 0;
		String statement = "resource.BackstreetMapper.jobViewConsulting1";
		all_job_num_avg = session.selectOne(statement);
		return all_job_num_avg;
	}
//view 끝
}
