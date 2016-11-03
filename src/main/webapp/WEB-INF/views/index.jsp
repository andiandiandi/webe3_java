<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>

<head>
    <meta charset="utf-8">
    <title>Andis Techblog</title>
    <link rel="stylesheet" href="../stylesheets/index.css">
</head>

<body>
    <header class="clearfix">
        <div class="column_70 left clearfix">
            <h1 style="font-size:300%">AndTech</h1>
            <h3>The best place for future technology</h3>
        </div>
        <div class="column_30 left clearfix" style="margin-top:5%;text-align: right;">
            <a href="https://facebook.com" class="facebook"></a>
            <a href="https://twitter.com" class="twitter"></a>
            <a href="#" class="rss"></a>
        </div>
    </header>

    <nav class="nav_div clearfix">
        <div class="column_30 left clearfix">
            <a class="button_nav" href="#"><span>Home</span></a>
            <a class="button_nav" href="#"><span>About</span></a>
            <a class="button_nav" href="#"><span>Contact</span></a>
            <a class="button_nav" href="/post"><span>submit a post</span></a>
        </div>
        <div class="column_30 left clearfix" style="text-align:left;margin-top:15px;">
            <input type="text" id="searchbar" name="search" placeholder="Search blog . . . " style="width:90%" onkeyup="filter()">
        </div>
        <div class="column_40 left clearfix" style="text-align:right;margin-top:10px;">
            <a class="button_login" href="file:///C:/Users/Andi/Documents/GitHub/webe2/partials/login.html">Log in</a>
            <a class="button_logout" href="file:///C:/Users/Andi/Documents/GitHub/webe2/partials/register.html" style="margin-right:15px">Sign Up</a>
        </div>
    </nav>


    <div class="main_content clearfix">
        <aside class="aside_left content column_20 left clearfix">
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>BLOGGER TEMPLATES</h3></a>
                </div>
                <div class="aside_content">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                    in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>BLOGGER NEWS</h3></a>
                </div>
                <div class="aside_content">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                    in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>LABEL</h3></a>
                </div>
                <div class="aside_content">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                    in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </div>
            </div>
        </aside>

        <section class="column_50 left mr_1 blog_content clearfix">

            <c:forEach items="${posts}" var="post">
          		
            <div class="blog_post">
                <span style="vertical-align:top;"><img src="../images/calendar_icon.png" style="width:25px;height:25px;margin-right:5px" alt="calendar" /><c:out value="${post.getDate()}"/></span>
                <h2 class="blog_post_header"><c:out value="${post.getTitle()}"/></h2>
                <div class="blog_post_content" style="word-wrap:break-word;">
                   <c:out value="${post.getContent()}"/>
                </div>
            </div>

            <hr>
            
			</c:forEach>
		
            
        </section>

        <aside class="aside_right content column_22 left mr_1 clearfix">
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>POPULAR POSTS</h3></a>
                </div>
                <div class="aside_content">
                    <ul>
                        <li>post 1</li>
                        <li>post 2</li>
                        <li>post 3</li>
                    </ul>
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>BLOGROLL</h3></a>
                </div>
                <div class="aside_content">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                    in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>BLOG ARCHIVE</h3></a>
                </div>
                <div class="aside_content">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                    in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </div>
            </div>
        </aside>
    </div>

    <footer>
        <div class="footer">
            <span>Information about newest technology, gathered with precision</span>
            <br>
            <span>@Andi | ALL RIGHTS RESERVED</span>
        </div>
    </footer>

    <script type="text/javascript" src="../javascript/filter.js"></script>

</body>

</html>
