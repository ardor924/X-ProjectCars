package kr.mr.mapper;

import java.util.List;

import kr.mr.model.CategoryDTO;
import kr.mr.model.MemberDTO;
import kr.mr.model.WishDTO;

public interface WishMapper {
	
	// 위시리스트 전체리스트 가져오기
	public List<WishDTO> wishList(); 
	
	// 위시리스트 저장(insert)
	public int wishInsert(WishDTO wDto);
	

	
}
