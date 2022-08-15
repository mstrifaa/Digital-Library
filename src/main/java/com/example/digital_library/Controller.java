package com.example.digital_library;

import com.example.digital_library.user.User;
import com.example.digital_library.user.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@EnableWebMvc
@RestController
@RequestMapping("/")
public class Controller {

    private User user;
    private UserService userService;

    @GetMapping("/")
    public ModelAndView homepage(Model ui){

        ui.addAttribute("name", "Rifaa");

        return new ModelAndView("home", HttpStatus.OK);
    }


    @GetMapping("/css/style.css")
    public String getCss(Model ui){


        return "css/style";
    }

    @GetMapping("/images/logo.png")
    public String getImageLogo(Model ui){


        return "images/logo";
    }

    @GetMapping("/js/style.css")
    public String getJS(Model ui){


        return "js/script";
    }




//    @GetMapping("/getUser")
//    public User getUser(@RequestParam(value="id") int id, @RequestParam(value = "name") String name){
//
//        return user;
//    }
//
//    @GetMapping("/viewAllUsers")
//    public String viewAllUsers(Model model){
//        model.addAttribute("users", userService.loadAllUsers());
//        return "view-users"; //file name of the view to be displayed (sent in the ResponseBody),
//                          // here, i.e. welcome.jsp
//    }
//
//    @PostMapping("/addUser")
//    public RedirectView createUser(@ModelAttribute("user") User user, RedirectAttributes redirectAttributes){
//
//        final RedirectView redirectView = new RedirectView("/user/addUser", true);
//        String u = userService.signUpUser(user);
//        redirectAttributes.addFlashAttribute("savedUser", u);
//
//        redirectAttributes.addFlashAttribute("addUserSuccess", true);
//        return redirectView;
//    }

}
