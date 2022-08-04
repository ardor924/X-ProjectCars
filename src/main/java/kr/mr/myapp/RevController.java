package kr.mr.myapp;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.mr.mapper.ReserveMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.ReserveDTO;
import kr.mr.model.VehicleDTO;

@Controller
public class RevController {


	@Autowired
	private ReserveMapper reserveMapper;
	
	@Autowired
	private VehicleMapper vehicleMapper;

	// 1일 예약 페이지 전환
	@RequestMapping("/oneDayRev.do")
	public String reserveOneDay(Model model , int cNum) {
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		
		
		return "reserve/DayReserve";

	}

	// 장기 예약 페이지 전환
	@RequestMapping("/longDayRev.do")
	public String reserveLongDay(Model model) {
		return "reserve/LongReserve";

	}

	// 즉시예약 페이지 전환
	@RequestMapping("/revLongDay.do")
	public String reserveNow(Model model) {
		return "reserve/myNowReserv";

	}

	// 예약정보 입력 -> 결제
	@RequestMapping("/payment.do")
	public String reserveInsert(ReserveDTO dto,int cNum,Model model, HttpSession session) {

		int cnt = reserveMapper.reserveInsert(dto);

		if (cnt > 0) { // 등록성공

			// 회원정보
			List<ReserveDTO> revList = reserveMapper.reserveList();		
			model.addAttribute("revList", revList);
			
			// cNum으로 차량 정보 가져오기
			VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
			
			model.addAttribute("vDto", vDto);
			
			
			return "payment/payment";

			
			
			
		} else {
			session.setAttribute("1", "1 1!!");
			return "reserve/myNowReserv";

		}

	}

}
