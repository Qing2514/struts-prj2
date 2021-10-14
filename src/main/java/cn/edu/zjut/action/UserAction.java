package cn.edu.zjut.action;

import cn.edu.zjut.bean.UserBean;
import cn.edu.zjut.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

public class UserAction extends ActionSupport
{
    private UserBean loginUser;
    private Integer count = 0;

    public UserAction()
    {
        System.out.println("创建了一个 UserAction 类对象。");
    }

    public Integer getCount()
    {
        return count;
    }

    public UserBean getLoginUser()
    {
        return loginUser;
    }

    public void setLoginUser(UserBean loginUser)
    {
        this.loginUser = loginUser;
    }

    public String login()
    {
        count++; //Action 实例化情况测试
        UserService userServ = new UserService();
        if (userServ.login(loginUser))
        {
            this.addActionMessage(this.getText("login.success"));
            return "success";
        }
        this.addActionError(this.getText("login.error"));
        return "fail";
    }

    public String register()
    {
        UserService userServ = new UserService();
        if (userServ.register(loginUser))
        {
            return "registersuccess";
        }
        return "registerfail";
    }

    public String execute()
    {
        UserService userServ = new UserService();
        if (userServ.login(loginUser))
        {
            return "success";
        }
        return "fail";
//        if (userServ.register(loginUser))
//        {
//            return "success";
//        }
//        return "fail";
    }

    public void validate()
    {
        String account = loginUser.getAccount();
        String pwd = loginUser.getPassword();
        if (account == null || account.equals(""))
        {
            this.addFieldError("loginUser.account", this.getText("login.account.null"));
        }
        if (pwd == null || pwd.equals(""))
        {
            this.addFieldError("loginUser.password", this.getText("login.password.null"));
        }
    }

}