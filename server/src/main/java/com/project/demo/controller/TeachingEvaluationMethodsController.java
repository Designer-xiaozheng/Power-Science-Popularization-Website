package com.project.demo.controller;

import com.project.demo.entity.TeachingEvaluationMethods;
import com.project.demo.service.TeachingEvaluationMethodsService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.*;


/**
 * 评教办法：(TeachingEvaluationMethods)表控制层
 *
 */
@RestController
@RequestMapping("/teaching_evaluation_methods")
public class TeachingEvaluationMethodsController extends BaseController<TeachingEvaluationMethods, TeachingEvaluationMethodsService> {

    /**
     * 评教办法对象
     */
    @Autowired
    public TeachingEvaluationMethodsController(TeachingEvaluationMethodsService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
