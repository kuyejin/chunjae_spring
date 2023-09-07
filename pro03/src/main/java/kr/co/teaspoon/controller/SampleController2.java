/*
package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.People;
import kr.co.teaspoon.dto.Sample;
import kr.co.teaspoon.service.SampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/sample/*")
public class SampleController2 {
    @Autowired
    private SampleService sampleService;

    @RequestMapping("list.do")
    public String sampleList(Model model) throws Exception {
        List<Sample> sampleList = sampleService.sampleList();
        model.addAttribute("sampleList", sampleList);
        return "/sample/sampleList";
    }

}
*/