package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MyListVo;

@Repository
public class MyDao {

	@Autowired
	private SqlSession sqlSession;

	// 유저번호로 전체 리스트 불러오기
	public List<MyListVo> getUserList(int no) {
		System.out.println("MyDao>getUserList()");

		return sqlSession.selectList("my.getUserList", no);
	}

	// 유저번호로 예약완료 리스트 불러오기
	public List<MyListVo> getReserveList(int no) {
		System.out.println("MyDao>getReserveList()");
		return sqlSession.selectList("my.getReserveList", no);
	}

	// 유저번호로 이용완료 리스트 불러오기
	public List<MyListVo> getUsedList(int no) {
		System.out.println("MyDao>getUsedList()");

		return sqlSession.selectList("my.getUsedList", no);
	}

	// 유저번호로 예약취소 리스트 불러오기
	public List<MyListVo> getCancelList(int no) {
		System.out.println("MyDao>getCancelList()");

		return sqlSession.selectList("my.getCancelList", no);
	}

	// 유저번호로 양도대기 리스트 불러오기
	public List<MyListVo> getRelistList(int no) {
		System.out.println("MyDao>getRelistList()");

		return sqlSession.selectList("my.getRelistList", no);
	}

	// 유저번호로 양도완료 리스트 불러오기
	public List<MyListVo> getTransferList(int no) {
		System.out.println("MyDao>getTransferList()");

		return sqlSession.selectList("my.getTransferList", no);
	}

	// 예약번호로 예약상세 정보 불러오기
	public List<MyListVo> getDetail(int resNo) {
		System.out.println("MyDao>getDetail()");

		return sqlSession.selectList("my.getDetail", resNo);
	}

	// 예약취소하기 -> 예약상태 업데이트하기
	public int cancelUpdate(MyListVo myVo) {
		System.out.println("MyDao>cancelUpdate");

		return sqlSession.update("my.updateOne", myVo);
	}

	// 예약내역 삭제하기
	public int remove(int resNo) {
		System.out.println("MyService>remove()");

		return sqlSession.delete("my.deleteOne", resNo);
	};

}
