package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.ReserveDTO;


@Mapper // @Mapper 생략가능 
public interface ReserveMapper {
		
	// 예약정보 등록(insert)
	public int reserveInsert(ReserveDTO dto);
	
	// 예약정보 전체리스트 가져오기
	public List<ReserveDTO> reserveList(); 
	

		

	
}
