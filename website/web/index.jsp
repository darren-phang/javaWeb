<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/22
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">

</head>

<body>
<%!
    int showindex = 0;
    String[] readmore = new String[9];
    String[] lagetitle = new String[9];
    String[] titlemore = new String[9];
    String[] imageUrl = new String[9];
    String[] body = new String[9];
%>
<%
    //加载驱动程序
    String driverName = "com.mysql.jdbc.Driver";
//数据库信息
    String userName = "JavaWeb";
//密码
    String userPasswd = "cdut6a502";
//数据库名
    String dbName = "JavaWeb";
//表名
    String tableName = "HomeNews";
//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
    String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection(url);
    Statement stmt = conn.createStatement();
    String sql = "SELECT * FROM " + tableName;
    ResultSet rs = stmt.executeQuery(sql);
    int i = 0;
    while (rs.next()) {
        if (i > 8)
            break;
        readmore[i] = rs.getString(2);
        lagetitle[i] = rs.getString(3);
        titlemore[i] = rs.getString(4);
        imageUrl[i] = rs.getString(5);

        System.out.println(imageUrl[i]);
        body[i] = rs.getString(6);
        i += 1;
    }
    rs.close();
    stmt.close();
    conn.close();
%>
<header>
    <nav>
        <div class="container">
            <div class="wrapper">
                <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.jsp" class="current">文明你我</a></li>
                    <li><a href="index-1.html">志愿者APP</a></li>
                    <li><a href="index-2.html">志愿者网</a></li>
                    <li><a href="index-3.html">雷锋热线</a></li>
                    <li><a href="index-3.html">公益活动</a></li>
                    <li><a href="index-3.html">公益广告</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="adv-content">
        <div class="container">
            <ul class="breadcrumbs">
                <li>首页</li>
            </ul>
            <form action="" id="search-form">
                <fieldset>

                    <input type="text" value=""><input type="submit" value="">
                </fieldset>
            </form>
        </div>
    </section>
</header>
<section id="content">
    <div class="top">
        <div class="container">
            <div class="clearfix">
                <!--图片显示区-->
                <section id="gallery">
                    <div class="pics">
                        <img src="images/poster1.png" alt="" width="495" height="329">
                        <img src="images/poster2.png" alt="" width="495" height="329">
                        <img src="images/poster3.png" alt="" width="495" height="329">
                    </div>
                    <a href="#" id="prev"></a>
                    <a href="#" id="next"></a>
                </section>
                <!--图片右边那一块-->
                <section id="intro">
                    <div class="inner">
                        <h2>志愿者活动中心</h2>
                        <p style="font-size: 18px">
                            志愿者（Volunteer）联合国定义为“自愿进行社会公共利益服务而不获取任何利益、金钱、名利的活动者”，具体指在不为任何物质报酬的情况下，能够主动承担社会责任而不获取报酬，奉献个人时间和行动的人。
                            根据中国的具体情况来说，志愿者是这样定义的：“在自身条件许可的情况下，参加相关团体，在不谋求任何物质、金钱及相关利益回报的前提下，在非本职职责范围内，合理运用社会现有的资源，服务于社会公益事业，为帮助有一定需要的人士，开展力所能及的、切合实际的，具一定专业性、技能性、长期性服务活动的人。"
                            自愿参与社会公益活动的人。享受乘坐公交车，地铁免费，免费进公园及旅游景点。
                            志愿者也叫义工、义务工作者或志工。他们致力于免费、无偿地为社会进步贡献自己的力量。
                            志愿工作是指一种具有组织性的助人及基于社会公益责任的参与行为，其发展可追溯至第二次世界大战后，福利主义抬头导致各国政府支出崩塌，发展义务工作以解决社会上不胜负荷的需求。</p>
                        <a href="#" class="extra-button">更多</a>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container">
            <div class="wrapper">
                <div class="grid3 first">
                    <ul class="categories">
                        <li><a href="#" name="one"
                               onclick, onmouseenter="changeContent(0)"><%=lagetitle[0]%>
                        </a></li>
                        <li><a href="#" name="tow"
                               onmouseenter="changeContent(1)"><%=lagetitle[1]%>
                        </a></li>
                        <li><a href="#" name="three"
                               onmouseenter="changeContent(2)"><%=lagetitle[2]%>
                        </a></li>
                        <li><a href="#" name="four"
                               onmouseenter="changeContent(3)"><%=lagetitle[3]%>
                        </a></li>
                        <li><a href="#" name="five"
                               onmouseenter="changeContent(4)"><%=lagetitle[4]%>
                        </a></li>
                        <li><a href="#" name="six"
                               onmouseenter="changeContent(5)"><%=lagetitle[5]%>
                        </a></li>
                        <li><a href="#" name="seven"
                               onmouseenter="changeContent(6)"><%=lagetitle[6]%>
                        </a></li>
                        <li><a href="#" name="eight"
                               onmouseenter="changeContent(7)"><%=lagetitle[7]%>
                        </a></li>
                        <li><a href="#" name="nine"
                               onmouseenter="changeContent(8)"><%=lagetitle[8]%>
                        </a></li>
                    </ul>
                </div>
                <div class="grid9">
                    <h2 id="newstitle"
                        style="padding-top: 10px;line-height: 40px"><%=titlemore[showindex]%>
                    </h2>
                    <p id="newscontent"><%=body[showindex]%>
                    </p>
                    <p><a id="newsurl" href=<%=readmore[showindex]%>>了解更多</a></p>

                    <section class="images">
                        <figure style="height: 200px; width: 200px  ;"><a href="#"><img
                                class="center-cropped" id="img1"
                                src=<%=imageUrl[0]%> alt=""></a></figure>
                        <figure style="height: 200px; width: 200px  ;"><a href="#"><img
                                class="center-cropped" id="img2"
                                src=<%=imageUrl[1]%> alt=""></a></figure>
                        <figure style="height: 200px; width: 200px  ;"><a href="#"><img
                                class="center-cropped" id="img3"
                                src=<%=imageUrl[2]%>  alt=""></a></figure>
                    </section>
                </div>
            </div>
        </div>
    </div>

</section>
<%@ include file="footer.jsp" %>

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
<script type="text/javascript" src="js/html5.js"></script>
<script type="text/javascript">
    var body = new Array();
    var title = new Array();
    var url = new Array();
    var imgurl = new Array();

    <% for(int j=0;j <body.length;j++){ %>
    body[<%=j%>] = " <%=body[j]%> ";
    title[<%=j%>] = " <%=titlemore[j]%> ";
    url[<%=j%>] = " <%=readmore[j]%> ";
    imgurl[<%=j%>] = " <%=imageUrl[j]%> ";
    <% } %>

    function changeContent(index) {
        newstitle.innerText = title[index];
        newscontent.innerText = body[index];
        newsurl.href = url[index];
        var imgurls = imgurl[index].split(";");
        for (var i = 0; i < imgurls.length; i++) {
            var str = "img" + (i + 1);
            document.getElementById(str).src = imgurls[i];
            /* var div2=document.createElement("div");
             div2.innerHTML="aaaaa"
             document.getElementById("images").appendChild(div2);*/

            /* console.log(imgurls[i]);
             var div = document.createElement("figure");
             div.innerHTML = "<a href=\"#\"><img class=\"center-cropped\" src=\"" + imgurls[i] + "\"></a>";
             document.getElementsByClassName("images").appendChild(div);*/
        }


    }

</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.pics').cycle({
            fx: 'toss',
            next: '#next',
            prev: '#prev'
        });
        // Datepicker
        $('#datepicker').datepicker({
            inline: true
        });
    });
</script>

</body>
</html>