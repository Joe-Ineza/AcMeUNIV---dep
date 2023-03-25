<%-- 
    Document   : about.jsp
    Created on : Mar 23, 2023, 9:47:25 AM
    Author     : joe7n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" 
                        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" 
                        crossorigin="anonymous" 
                        referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="../css/stylehome.css"> 
        <title>about</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="logo"><a href="home.jsp"><strong style="color: darksalmon">AcMe</strong> Univ</a></div>
                <ul class="links">
                    <li><a href="signUp.jsp">Create Account</a></li>
                    <li><a href="logIn.jsp">Log In</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
                <a href="signUp.jsp" class="action_btn">Get Started</a>
                <div class="toggle_btn">
                    <i class="fa-solid fa-bars"></i>
                </div>
            </div>
            <div class="dropdown_menu">
                   <li><a href="signUp.jsp">Create Account</a></li>
                    <li><a href="logIn.jsp">Log In</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="signUp.jsp" class="action_btn">Get Started</a></li>
                
            </div>
        </header>
        
        
        <section class="slideshow">
                    <div class="content">
                        <div class="content-carrousel">
                            <figure class ="shadow"><img src="../images/Nyungwe_National_Park.jpg"></figure>
                            <figure class ="shadow"><img src="../images/GDWrU0.jpg"></figure>
                            <figure class ="shadow"><img src="../images/rwanda-kigali-64waves-sunset.jpg"></figure>
                            <figure class ="shadow"><img src="../images/wp2017235.jpg"></figure>
                            <figure class ="shadow"><img src="../images/3950692.jpg"></figure>
                            <figure class ="shadow"><img src="../images/cricket-things-to-do-in-kigali-rwanda_104ce97a70.jpeg"></figure>
                            <figure class ="shadow"><img src="../images/photo-1523050854058-8df90110c9f1.jpeg"></figure>
                            <figure class ="shadow"><img src="../images/wp2468647.jpg"></figure>
                             <figure class ="shadow"><img src="../images/rwanda-kigali-64waves-sunset.jpg"></figure>
                        </div>
                    </div>
         </section>
        
        <script>
            const toggleBtn = document.querySelector('.toggle_btn')
            const toggleBtnIcon = document.querySelector('.toggle_btn i')
            const dropDownMenu = document.querySelector('.dropdown_menu')
            
            toggleBtn.onclick = function()
            {
                dropDownMenu.classList.toggle('open')
                const isOpen = dropDownMenu.classList.contains('open')
                
                toggleBtnIcon.classList = isOpen
                ? 'fa-solid fa-bars'
                : 'fa-solid fa-bars'
            }
        </script>
    </body>
</html>
