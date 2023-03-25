package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css\" \r\n");
      out.write("                        integrity=\"sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==\" \r\n");
      out.write("                        crossorigin=\"anonymous\" \r\n");
      out.write("                        referrerpolicy=\"no-referrer\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/stylehome.css\"> \r\n");
      out.write("        <title>home</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <header>\r\n");
      out.write("            <div class=\"navbar\">\r\n");
      out.write("                <div class=\"logo\"><a href=\"home.jsp\"><strong style=\"color: darksalmon\">AcMe</strong> Univ</a></div>\r\n");
      out.write("                <ul class=\"links\">\r\n");
      out.write("                    <li><a href=\"signUp.jsp\">Create Account</a></li>\r\n");
      out.write("                    <li><a href=\"logIn.jsp\">Log In</a></li>\r\n");
      out.write("                    <li><a href=\"about.jsp\">About</a></li>\r\n");
      out.write("                    <li><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <a href=\"signUp.jsp\" class=\"action_btn\">Get Started</a>\r\n");
      out.write("                <div class=\"toggle_btn\">\r\n");
      out.write("                    <i class=\"fa-solid fa-bars\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"dropdown_menu\">\r\n");
      out.write("                   <li><a href=\"signUp.jsp\">Create Account</a></li>\r\n");
      out.write("                    <li><a href=\"logIn.jsp\">Log In</a></li>\r\n");
      out.write("                    <li><a href=\"about.jsp\">About</a></li>\r\n");
      out.write("                    <li><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("                    <li><a href=\"signUp.jsp\" class=\"action_btn\">Get Started</a></li>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("        \r\n");
      out.write("        <main>\r\n");
      out.write("            <section id=\"hero\" >\r\n");
      out.write("<!--                <br><br><br><br><br><br><br><br><br>\r\n");
      out.write("                <h1>WELCOME TO <strong style=\"color: darksalmon;\">ACME</strong> UNIVERSITY</h1>-->\r\n");
      out.write("<!--                <p><italic>The highest point of perfection and or achievement</italic></p>-->\r\n");
      out.write("<!--                <p>wertyuiokjhfdsxcvb rfgbhnjmkjnhb hgfdscfgbhjnm </br> dedrftghnjmnb vc gfdsdrfgyhjk.</p>-->\r\n");
      out.write("                 <section class=\"slideshow\">\r\n");
      out.write("                    <div class=\"content\">\r\n");
      out.write("                        <div class=\"content-carrousel\">\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/Nyungwe_National_Park.jpg\"></figure>\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/GDWrU0.jpg\"></figure>\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/rwanda-kigali-64waves-sunset.jpg\"></figure>\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/wp2017235.jpg\"></figure>\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/3950692.jpg\"></figure>\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/cricket-things-to-do-in-kigali-rwanda_104ce97a70.jpeg\"></figure>\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/photo-1523050854058-8df90110c9f1.jpeg\"></figure>\r\n");
      out.write("                            <figure class =\"shadow\"><img src=\"../images/wp2468647.jpg\"></figure>\r\n");
      out.write("                             <figure class =\"shadow\"><img src=\"../images/rwanda-kigali-64waves-sunset.jpg\"></figure>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("               <h1 style=\"text-align:center;\">WELCOME TO <strong style=\"color: darksalmon\">ACME</strong> UNIVERSITY</h1>\r\n");
      out.write("            </section>\r\n");
      out.write("            \r\n");
      out.write("        </main>\r\n");
      out.write("       \r\n");
      out.write("        <script>\r\n");
      out.write("            const toggleBtn = document.querySelector('.toggle_btn')\r\n");
      out.write("            const toggleBtnIcon = document.querySelector('.toggle_btn i')\r\n");
      out.write("            const dropDownMenu = document.querySelector('.dropdown_menu')\r\n");
      out.write("            \r\n");
      out.write("            toggleBtn.onclick = function()\r\n");
      out.write("            {\r\n");
      out.write("                dropDownMenu.classList.toggle('open')\r\n");
      out.write("                const isOpen = dropDownMenu.classList.contains('open')\r\n");
      out.write("                \r\n");
      out.write("                toggleBtnIcon.classList = isOpen\r\n");
      out.write("                ? 'fa-solid fa-bars'\r\n");
      out.write("                : 'fa-solid fa-bars'\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
