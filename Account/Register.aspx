<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>注册页面：服务器端验证</h2>
    </hgroup>

    <asp:Label ID="Label1" runat="server">当前在线人数: </asp:Label> <br />
    <asp:Label runat="server" ID="onlineNum"></asp:Label> <br />
    <asp:Label ID="Label2" runat="server">总访问量： </asp:Label> <br />
    <asp:Label runat="server" ID="statNum"></asp:Label>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>用户注册</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">用户名</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="必须填写用户名" />
                            </li>

                            <li>
                                <asp:Label runat="server" AssociatedControlID="addressTextBox" Text="联系地址"></asp:Label>
                                <asp:TextBox runat="server" ID="addressTextBox" />
                                <asp:RequiredFieldValidator  runat="server" ControlToValidate="addressTextBox"
                                    CssClass="field-validation-error" ErrorMessage="必须填写联系地址" />
                            </li>

                            <li>
                                <asp:Label runat="server" AssociatedControlID="birthdayText">出生年份</asp:Label>
                                <asp:TextBox ID="birthdayText" runat="server" placeholder="1990"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" MinimumValue="0"
                                     MaximumValue="2014" runat="server" ControlToValidate="birthdayText" Type="Integer" ErrorMessage="出生年份错误！" ForeColor="Red">
                                </asp:RangeValidator>
                            </li>

                            <li>
                                <asp:Label  runat="server" Text="出生月份" AssociatedControlID="BirthMonth"></asp:Label>
                                <asp:TextBox ID="BirthMonth" runat="server" placeholder="11"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator2" MinimumValue="01" MaximumValue="12"
                                     runat="server" ControlToValidate="BirthMonth" Type="Integer"
                                     ErrorMessage="出生月份错误！" ForeColor="Red">
                                </asp:RangeValidator>
                            </li>
                            <li>
                                <asp:Label  runat="server" Text="出生日期" AssociatedControlID="BirthDay"></asp:Label>
                                <asp:TextBox ID="BirthDay" runat="server" placeholder="21"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator3" MinimumValue="1" MaximumValue="31"
                                     runat="server" ControlToValidate="BirthDay" Type="Integer"
                                     ErrorMessage="出生日期错误！" ForeColor="red" />
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Email" Text="电子邮箱"></asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" placeholder="guichyu@gmail.com" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="Email" runat="server"
                                    ValidationExpression="^\s*([A-Za-z0-9_-]+(\.\w+)*@([\w-]+\.)+\w{2,3})\s*$"
                                    ErrorMessage="邮件地址格式错误！" ForeColor="red">
                                </asp:RegularExpressionValidator>
                            </li>
                             <li>
                                <asp:Label runat="server" AssociatedControlID="PostNum">邮政编码</asp:Label>
                                <asp:TextBox runat="server" ID="PostNum" placeholder="519000"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PostNum" Display="Dynamic"
                                     ErrorMessage="格式错误(6位数字)" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                            </li>

                            <li>
                                <asp:Label runat="server" AssociatedControlID="PhoneNum">联系电话</asp:Label>
                                <asp:TextBox runat="server" ID="PhoneNum" placeholder="021-12345678"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhoneNum" Display="Dynamic"
                                    ErrorMessage="格式错误,格式应满足(021)12345678或021-12345678" ForeColor="Red" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"></asp:RegularExpressionValidator>
                            </li>
                           
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">密码</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="必须填写该密码" />
                            </li>

                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">确认密码</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="必须填写确认密码项" />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="" />
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="Register" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>