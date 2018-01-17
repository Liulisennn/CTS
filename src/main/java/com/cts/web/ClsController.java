package com.cts.web;

import com.cts.entity.Cls;
import com.cts.service.ClsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by LARK on 2018/01/17
 */

@Controller
@RequestMapping("/clsController")
public class ClsController {

    @Resource(name = "clsService")
    private ClsService clsService;

    /**
     * 添加班级
     * @param cls 班级对象
     */
    @RequestMapping("/addCls")
    @ResponseBody
    public boolean addCls(Cls cls){
        return clsService.addCls(cls);
    }

    @RequestMapping("/getClsById/sdk/{cno}/ktl")
    public String getClsById(@PathVariable(name="cno") int cno, ModelMap modelMap){
        modelMap.addAttribute("cls",clsService.getClsById(cno));
        return "pages/updateCls";
    }

    //修改班级
    @RequestMapping("/updateCls")
    @ResponseBody
    public boolean updateCls(Cls cls){
        return clsService.updateCls(cls);
    }

    /**
     * 删除班级
     * @param cls 班级对象
     */
    @RequestMapping("/deleteCls")
    @ResponseBody
    public boolean deleteCls(Cls cls){
        return clsService.deleteCls(cls);
    }

    //查询班级
    @RequestMapping("/findClsList")
    @ResponseBody
    public List findClsList(){
        return clsService.findClsInfo();
    }

    public void setClsService(ClsService clsService) {
        this.clsService = clsService;
    }
}
