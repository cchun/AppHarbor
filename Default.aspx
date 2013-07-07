<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                
                <h2> Web编程课程作业</h2>
            </hgroup>
             <p>
                本次课程除了大作业的项目还有五个小作业。<br />
                作业一即申请此域名<br />
                作业二,三,四,五还有最终项目可以直接点击链接!
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>作业:</h3>
    <ol class="round">
        <li class="one">
            作业一<br /><br />
            申请了http://guichunyu-1.apphb.com该地址(已完成)<br />
        </li>
        <li class="two">
            <a id="A5" runat="server" href="~/Account/staticPage.aspx">作业二</a><br />
            <br />
            设计一个简单静态网页。 熟悉相关的制作工具以及B/S环境的构成和工作过程。<br />
          
        </li>
        <li class="three">
           
             <a id="A1" runat="server" href="~/Account/Login.aspx">作业三</a> <br /><br />
            设计一个在客户端进行用户名和密码的非空判断程序。<br />
            使用了一些css代码和部分js代码
           
        </li>
        <li class="four">
             <a id="A2" runat="server" href="~/Account/multiplicationTable.aspx">作业四</a> <br /><br />
            用C#语言编写99乘法表，用Table控件显示
        </li>
        <li class="five">
             <a id="A3" runat="server" href="~/Account/Register.aspx">作业五</a> <br /><br />
            实现在线人数和网站访问量统计 +　制作注册页面进行服务器端验证<br />
            在线人数和网站访问量统计主要利用session 和　全局的Application实现.
        </li>

        <li class="six">
             <a id="A4" runat="server" href="http://guichunyu.apphb.com/">期末大项目</a> <br /><br />
           我们是C2组，做的是课后讨论室,小组成员是:余桂淳,蒋利武<br />
           这个是大作业，但是由于apphor上面的数据库不支持读写，而我们的项目含有数据库,<br />
           所以含数据库部分没办法显示,故将项目代码与项目的截图发给老师qq邮箱17503032@qq.com<br />
        </li>
    </ol>
</asp:Content>