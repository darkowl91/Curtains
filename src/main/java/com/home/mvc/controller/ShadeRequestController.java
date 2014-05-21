package com.home.mvc.controller;

import com.home.model.curtains.Shade;
import com.home.model.curtains.ShadeRequest;
import com.home.mvc.service.IBaseEntityService;
import com.home.mvc.service.IShadeRequestService;
import com.home.mvc.service.IUserService;
import com.home.repository.IShadeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;
import java.util.Collections;


@Controller
public class ShadeRequestController {

    @Autowired
    private IShadeRequestService shadeRequestService;


    @Qualifier("ShadeService")
    @Autowired
    private IBaseEntityService<Shade, Long, IShadeRepository> shadeService;

    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/manageServiceRequestList", method = RequestMethod.GET)
    public String viewServiceRequestList(ModelMap model, String filterId) {
        switch (filterId) {
            case "all":
                model.put("SHADE_REQUEST", shadeRequestService.findAll());
                break;
            case "toApprove":
                model.put("SHADE_REQUEST", shadeRequestService.findToApprove());
                break;
            case "approved":
                model.put("SHADE_REQUEST", shadeRequestService.findApproved());
                break;
            default:
                model.put("SHADE_REQUEST", Collections.emptyList());
                break;
        }
        model.put("filterId", filterId);
        return "carWash.admin.serviceRequest";
    }

    @RequestMapping(value = "/newServiceRequest", method = RequestMethod.GET)
    @ResponseBody
    public String newServiceRequest(Long id, Principal principal) {
        ShadeRequest newServiceRequest = new ShadeRequest();
        newServiceRequest.setShade(shadeService.findOne(id));
        newServiceRequest.setUser(userService.findByUsername(principal.getName()));
        if (shadeRequestService.save(newServiceRequest) != null) {
            return "alert-success";
        } else {
            return "alert-error";
        }
    }

    @RequestMapping(value = "/removeServiceRequest", method = RequestMethod.GET)
    public String removeServiceRequest(Long id, String filterId) {
        shadeRequestService.delete(id);
        return "redirect:/manageServiceRequestList?filterId=" + filterId;
    }

    @RequestMapping(value = "/approveServiceRequest", method = RequestMethod.GET)
    public String approveServiceRequest(Long id) {
        ShadeRequest request = shadeRequestService.findOne(id);
        request.setApproved(true);
        shadeRequestService.save(request);
        return "redirect:/manageServiceRequestList?filterId=toApprove";
    }

    @RequestMapping(value = "/removeSelfServiceRequest", method = RequestMethod.GET)
    public String removeSelfServiceRequest(Long id) {
        shadeRequestService.delete(id);
        return "redirect:/selfServiceRequests";
    }

    @RequestMapping(value = "/selfServiceRequests", method = RequestMethod.GET)
    public String viewSelfServiceRequests(Model model, Principal principal) {
        model.addAttribute("requests", shadeRequestService.findByUsername(principal.getName()));
        return "carWash.selfServiceRequests";
    }
}
