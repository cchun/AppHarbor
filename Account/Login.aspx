<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script lang="javascript" type="text/javascript">
        //把缺少名字的错误显示出来
        function displayNameError() {
            if (document.getElementById("name").value.length == 0) {
                document.getElementById("namehint").style.display = "block";
            }
        }
        //把缺少密码的错误显示出来
        function displayPasswordError() {
            if (document.getElementById("password").value.length == 0) {
                document.getElementById("passwordhint").style.display = "block";
            }
        }
        //隐藏缺少名字的错误
        function hideNameError() {
            document.getElementById("namehint").style.display = "none";
        }
        //隐藏缺少密码的错误
        function hidePasswordError() {
            document.getElementById("passwordhint").style.display = "none";
        }

        function submit() {
            window.open('page.html');
            if (document.getElementById("name").value.length == 0) {
             //   document.getElementById("namehint").style.display = "block";
            }
            else if (document.getElementById("password").value.length == 0) {
             //   document.getElementById("passwordhint").style.display = "block";
            }
            else {
                window.open('page.html');
            }
        }
    </script>


    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <h2>作业3-客户端技术: 客户端进行用户名和密码的非空判断</h2>

    <section id="loginForm">
        <h2>Use a local account to log in.</h2>

        <fieldset>
            <legend>log in form</legend>

            <ol>
                <li>
                    <label class="control-label" for="inputEmail">用户名</label>&nbsp;
                    <span class="field-validation-error" id="namehint" style="display: none">请输入用户名</span>
                    <input type="text" id="name" placeholder="Name" onblur="displayNameError()" onfocus="hideNameError()">
                    <br />
                </li>

                <li>
                    <label class="control-label" for="inputPassword">密码</label>
                    <span class="field-validation-error" id="passwordhint" style="display: none">请输入密码</span>
                    <input type="password" id="password" placeholder="Password" onblur="displayPasswordError()" onfocus="hidePasswordError()">
                    <br />
                </li>

                <li>
                    <label>
                        <input type="checkbox" /> Remember me </label>
                    <br />
                    <button onclick="submit()">log in</button>
                    <br />
                </li>
            </ol>
        </fieldset>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
            if you don't have an account.
        </p>
    </section>
</asp:Content>
