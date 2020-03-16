package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.salesVO;

@Repository
public class consultingViewDAO {
	
	@Autowired
	SqlSession session = null;
	
// change ���̺�
	public String changeConsulting1(int area_id){
		String changeCodeName = null;
		String statement = "resource.BackstreetMapper.changeConsulting1";
		changeCodeName = session.selectOne(statement,area_id); // area_id �� ���� ��.
		return changeCodeName;
	} // ���̳���..
	
	public int changeConsulting2(int area_id){
		int oper_month = 0;
		String statement = "resource.BackstreetMapper.changeConsulting2";
		oper_month = session.selectOne(statement,area_id); // area_id �� ���� ��.
		return oper_month;
	} // ���� ���� 
	
	public int changeConsulting3(int area_id){
		int close_month = 0;
		String statement = "resource.BackstreetMapper.changeConsulting3";
		close_month = session.selectOne(statement,area_id); // area_id �� ���� ��.
		return close_month;
	} // ��� ���� 
//change ���̺� ��
	
//area ���̺�
	public String areaConsulting1(int area_id){
		String areaCodeName = null;
		String statement = "resource.BackstreetMapper.areaConsulting1";
		areaCodeName = session.selectOne(statement,area_id); // area_id �� ���� ��.
		return areaCodeName;
	} // ������
	
	public int areaConsulting2(int area_id){
		int change_id = 0;
		String statement = "resource.BackstreetMapper.areaConsulting2";
		change_id = session.selectOne(statement,area_id); // area_id �� ���� ��.
		return change_id;
	} // ��ü, ������, ���Ȯ��, ���̳��� ���� �� �̱� ���� change_id
//area ���̺� ��
	
//service ���̺�
	public String serviceConsulting1(String serv_id){
		String serviceCodeName = null;
		String statement = "resource.BackstreetMapper.serviceConsulting1";
		serviceCodeName = session.selectOne(statement,serv_id); // area_id �� ���� ��.
		return serviceCodeName;
	} // ���� ���
//service ���̺� ��
	
//job ���̺�
	public int jobConsulting1(int area_id) {
		int all_job_num = 0;
		String statement = "resource.BackstreetMapper.jobConsulting1";
		all_job_num = session.selectOne(statement,area_id);
		return all_job_num;
	} //�� ���� �α��� ���
//job ���̺� ��
	
//view
	public float changeViewConsulting1(){
		float oper_month_avg = 0;
		String statement = "resource.BackstreetMapper.changeViewConsulting1";
		oper_month_avg = session.selectOne(statement);
		return oper_month_avg;
	} // ���� ���� ���(View)
	
	public float changeViewConsulting2(){
		float close_month_avg = 0;
		String statement = "resource.BackstreetMapper.changeViewConsulting2";
		close_month_avg = session.selectOne(statement);
		return close_month_avg;
	} // ��� ���� ���(View)
	
	public int jobViewConsulting1() {
		int all_job_num_avg = 0;
		String statement = "resource.BackstreetMapper.jobViewConsulting1";
		all_job_num_avg = session.selectOne(statement);
		return all_job_num_avg;
	}
//view ��
	
//골목상권분석
	public long sales_1Area1(salesVO vo){
		long money;
		//System.out.println(vo);
		String statement = "resource.BackstreetMapper.sales_1Area1";
		money = session.selectOne(statement,vo);
		//System.out.println("DAO 에서 추출된 값"+money);
		return money;
	}
//골목상권분석 끝
}
