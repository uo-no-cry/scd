package org.apache.jsp.WEB_002dINF.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logins_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\">\r\n");
      out.write("\r\n");
      out.write("    <title>少吃点·后台管理系统 - 登录</title>\r\n");
      out.write("    <meta name=\"keywords\" content=\"\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"css/font-awesome.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"css/animate.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"css/login.css\" rel=\"stylesheet\">\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script> \r\n");
      out.write("    \r\n");
      out.write("    <script>\r\n");
      out.write("        if (window.top !== window.self) {\r\n");
      out.write("            window.top.location = window.location;\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("\t<script>\r\n");
      out.write("       function sub1(){\r\n");
      out.write("    \t   var loginData = $('#loginForm').serialize();\r\n");
      out.write("    \t   var username = $('#adminName').val();\r\n");
      out.write("    \t   $.ajax({\r\n");
      out.write("    \t\t   url: 'logins.action',\r\n");
      out.write("    \t\t   data: loginData,\r\n");
      out.write("    \t\t   dataType: 'json',\r\n");
      out.write("    \t\t   type: 'POST',\r\n");
      out.write("    \t\t   success: function (rtn) {\r\n");
      out.write("    \t\t\t   if (rtn.status == 200) {\r\n");
      out.write("    \t\t\t\t   window.location.href='/admin/index.action?token=' + rtn.data;\r\n");
      out.write("    \t\t\t   } else {\r\n");
      out.write("    \t\t\t\t   window.alert(rtn.msg);\r\n");
      out.write("    \t\t\t   }\r\n");
      out.write("    \t\t   }\r\n");
      out.write("    \t   })\r\n");
      out.write("       }\r\n");
      out.write("       \r\n");
      out.write("       $(function () {\r\n");
      out.write("  \t     //点击图片更换验证码\r\n");
      out.write("  \t     $(\"#Verify\").click(function(){\r\n");
      out.write("  \t         $(this).attr(\"src\",\"SecurityCodeImageAction.action?timestamp=\"+new Date().getTime());\r\n");
      out.write("  \t     });\r\n");
      out.write("  \t });\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"signin\">\r\n");
      out.write("<!-- <script src=\"js/canvas-nest.min.js\" count=\"200\" zindex=\"-2\" opacity=\"0.8\" color=\"46,190,246\" type=\"text/javascript\"></script> -->\r\n");
      out.write("    <div class=\"signinpanel\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-sm-12\">\r\n");
      out.write("             <form id=\"loginForm\" autocomplete=\"off\">\r\n");
      out.write("                    <h3 class=\"no-margins\">少吃点·后台管理系统 - 登录</h3>\r\n");
      out.write("                   \r\n");
      out.write("                    <input autocomplete=\"off\" type=\"text\" id='adminName' class=\"form-control uname\" name=\"adminName\" placeholder=\"用户名\" value=\"\"/>\r\n");
      out.write("                    <input autocomplete=\"off\" type=\"password\" class=\"form-control pword m-b\" name=\"password\" placeholder=\"密码\" value=\"\"/>\r\n");
      out.write("                    <input name=\"verifycode\" class=\"form-control pword m-b\" type=\"text\" placeholder=\"验证码\" onblur=\"if(this.value==''){this.value=''}\" onclick=\"if(this.value=='验证码:'){this.value='';}\" value=\"\" style=\"width: 190px;\">\r\n");
      out.write("          \t\t\t<img src=\"images/securitycodeimageaction.action\"  id=\"Verify\" style=\"cursor:hand;height: 30px;float: right;margin-top: -45px;\" alt=\"看不清，换一张\"/>\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-success btn-block\" onclick=\"sub1()\" >登录</button>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"signup-footer\">\r\n");
      out.write("            <div class=\"pull-left\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
