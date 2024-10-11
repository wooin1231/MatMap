package com.ki.matMap.map.controller;

import java.lang.System.Logger;
import java.util.List;
import java.util.Locale;

import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ki.matMap.map.service.MapService;
import com.ki.matMap.map.vo.MapVo;

@Controller
public class MapController {
	
	@Autowired
	private MapService mps;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/*
	 * @RequestMapping(value = "/map" , method =RequestMethod.GET) public String
	 * map(Locale locale, Model model) { return "map/map"; }
	 */

	/*
	 * @GetMapping(value = "/getAllLocations" ) public List<MapVo> getAllLocations()
	 * { return mps.getAllLocations(); }
	 */

	
	    // 초기 페이지 로딩 시 맵을 표시할 뷰 반환
	    @GetMapping("/map")
	    public String restaurantMap(Locale locale, Model model) {
	        return "map/map"; // JSP 페이지 이름
	    }
	
		// 유튜버별 매장 위치 정보를 JSON으로 반환
	    @GetMapping("/getLocations")
	    @ResponseBody
	    public List<MapVo> getLocations(String rsYoutube) {
	        List<MapVo> locations = mps.getAllLocations(rsYoutube);
	        if (locations == null || locations.isEmpty()) {
	            System.out.println("No locations found for: " + rsYoutube);
	        }
	        return locations; // JSON으로 반환
	    }
	    
	    /*
	 * @GetMapping(value = "/map/{rsYoutbe}") public String
	 * map(@PathVariable("rsYoutube") String rsYoutube, Model model) { List<MapVo>
	 * locations = mpS.selectList(rsYoutube); model.addAttribute("locations",
	 * locations); return "map/map";
	 * 
	 * }
	 * 
	 */
	
	
	@RequestMapping(value = "/mapTest", method = RequestMethod.GET)
	public String mapTest(Locale locale) {
		
		
		
		return "map/mapTest";
	}


}
