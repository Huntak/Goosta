package com.kh.goosta.creview.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goosta.board.vo.ReplyVO;
import com.kh.goosta.creview.vo.CreviewVO;

@Repository("cDao")
public class CreviewDao {
	
	public  CreviewDao(){}
		@Autowired
		private SqlSessionTemplate sqlSession;
		
		public int insertCreview(CreviewVO vo) {
			return sqlSession.insert("creviewVO.insertCreview", vo);
		}

		public List showCreviews(Map<String, Object> commandMap) throws Exception {
			return sqlSession.selectList("creviewVO.showCreviews", commandMap );
		}

		/*public Map<String, Object> creviewDetail(Map<String, Object> commandMap) throws Exception{
			return (Map<String, Object>) sqlSession.selectOne("creview.creviewDetail", commandMap);
			}*/

		public List<CreviewVO> creviewListView() {
			return (List<CreviewVO>) sqlSession.selectList("creviewVO.creviewListView");
		}

		public CreviewVO creviewDetail(int boardno) {
			return (CreviewVO) sqlSession.selectOne("creviewVO.creviewDetail", boardno);
		}

		public void creviewDelete(int boardno) {
			 sqlSession.delete("creviewVO.creviewDelete", boardno);
		}

		public void creviewModify(CreviewVO vo) {
			if(vo.getBoardimage1() == null){
			sqlSession.update("creviewVO.creviewModify", vo);}
			else{
			sqlSession.update("creviewVO.creviewModify", vo);
			sqlSession.update("creviewVO.fileModify", vo);
			}
		}
		public List<CreviewVO> creviewSearch(String searchtext) {
			return (List<CreviewVO>)sqlSession.selectList("creviewVO.creviewSearch", searchtext);
		}

		
	}
