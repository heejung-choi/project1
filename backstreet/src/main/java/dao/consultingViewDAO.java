package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.salesVO;
import vo.storeVO;

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

//living_population
   public int livingPopulationConsulting1(int area_id) {
      int all_living_num = 0;
      String statement = "resource.BackstreetMapper.livingPopulationConsulting1";
      all_living_num = session.selectOne(statement,area_id);
      return all_living_num;
   }
//living_population 끝
   
//apartment
   public int apartmentConsulting1(int area_id) {
      int apart_num= 0;
      String statement = "resource.BackstreetMapper.apartmentConsulting1";
      apart_num = session.selectOne(statement,area_id);
      return apart_num;
   }
//apartment 끝
   
//store
   public int storeConsulting1(storeVO vo) {
      int store_num;
      vo.setArea_id(1001495);
      vo.setServ_id("CS300011");
      String statement = "resource.BackstreetMapper.storeConsulting1";
      store_num = session.selectOne(statement,vo);
      return store_num;
   }
   
   public int storeConsulting2(storeVO vo) {
      int sim_store_num;
      vo.setArea_id(1001495);
      vo.setServ_id("CS300011");
      String statement = "resource.BackstreetMapper.storeConsulting2";
      sim_store_num = session.selectOne(statement,vo);
      return sim_store_num;
   }
   
   public int storeConsulting3(storeVO vo) {
      int  start_rate;
      vo.setArea_id(1001495);
      vo.setServ_id("CS300011");
      String statement = "resource.BackstreetMapper.storeConsulting3";
       start_rate = session.selectOne(statement,vo);
      return start_rate;
   }
   
   public int storeConsulting4(storeVO vo) {
      int start_store_num;
      vo.setArea_id(1001495);
      vo.setServ_id("CS300011");
      String statement = "resource.BackstreetMapper.storeConsulting4";
      start_store_num = session.selectOne(statement,vo);
      return start_store_num;
   }
   
   public int storeConsulting5(storeVO vo) {
      int close_rate;
      vo.setArea_id(1001495);
      vo.setServ_id("CS300011");
      String statement = "resource.BackstreetMapper.storeConsulting5";
      close_rate = session.selectOne(statement,vo);
      return close_rate;
   }
   
   public int storeConsulting6(storeVO vo) {
      int close_store_num;
      vo.setArea_id(1001495);
      vo.setServ_id("CS300011");
      String statement = "resource.BackstreetMapper.storeConsulting6";
      close_store_num = session.selectOne(statement,vo);
      return close_store_num;
   }
//store 끝
   
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
   
   public int livingPopulationViewConsulting1() {
      int all_job_num_avg = 0;
      String statement = "resource.BackstreetMapper.livingPopulationViewConsulting1";
      all_job_num_avg = session.selectOne(statement);
      return all_job_num_avg;
   }
   
   public int apartmentViewConsulting1() {
      int apart_num_avg = 0;
      String statement = "resource.BackstreetMapper.apartmentViewConsulting1";
      apart_num_avg = session.selectOne(statement);
      return apart_num_avg;
   }
   
   public int storeViewConsulting1() {
      int start_rate_avg = 0;
      String statement = "resource.BackstreetMapper.storeViewConsulting1";
      start_rate_avg = session.selectOne(statement);
      return start_rate_avg;
   }
   
   public int storeViewConsulting2() {
      int start_store_num_avg = 0;
      String statement = "resource.BackstreetMapper.storeViewConsulting1";
      start_store_num_avg = session.selectOne(statement);
      return  start_store_num_avg;
   }
   
   public int storeViewConsulting3() {
      int start_store_num_avg = 0;
      String statement = "resource.BackstreetMapper.storeViewConsulting1";
      start_store_num_avg = session.selectOne(statement);
      return start_store_num_avg;
   }
   
   public int storeViewConsulting4() {
      int close_store_num_avg = 0;
      String statement = "resource.BackstreetMapper.storeViewConsulting1";
      close_store_num_avg = session.selectOne(statement);
      return close_store_num_avg;
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