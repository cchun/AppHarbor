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
                        <legend>Registration Form</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">用户名</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">邮箱</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                            </li>

                            <li>
                                <asp:Label ID="LabelBirthday" runat="server" >出生年份</asp:Label>
                                <asp:TextBox ID="birthdayText" runat="server" placeholder="1991"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" MinimumValue="0"
                                     MaximumValue="2014" runat="server" ControlToValidate="birthdayText" Type="Integer" ErrorMessage="出生年份错误！" ForeColor="Red">
                                </asp:RangeValidator>
                            </li>

                            <li>
                                <asp:Label ID="Label8" runat="server" Text=" 出生月份："></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="05"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator2" MinimumValue="01" MaximumValue="12" runat="server" ControlToValidate="TextBox1" Type="Integer">
                        *出生月份错误！
                                </asp:RangeValidator>
                            </li>
                            <li>
                                <asp:Label ID="Label9" runat="server" Text=" 出生日期："></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="24"></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator3" MinimumValue="1" MaximumValue="31" runat="server" ControlToValidate="TextBox2" Type="Integer">
                        *出生日期错误！
                                </asp:RangeValidator>
                            </li>
                             <li>
                                <asp:Label ID="Label5" runat="server" Text=" 电子邮件："></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="jiangliwu.ipple@gmail.com"></asp:TextBox>

                                <asp:RegularExpressionValidator ID="v2" ControlToValidate="email" runat="server" ValidationExpression="^\s*([A-Za-z0-9_-]+(\.\w+)*@([\w-]+\.)+\w{2,3})\s*$">
                        *邮件地址格式错误！
                                </asp:RegularExpressionValidator>
                            </li>
                             <li>
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="PostNum">邮政编码</asp:Label>
                                <asp:TextBox runat="server" ID="PostNum"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PostNum" Display="Dynamic"
                                     ErrorMessage="格式错误(6位数字)" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="PhoneNum">联系电话</asp:Label>
                                <asp:TextBox runat="server" ID="PhoneNum"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhoneNum" Display="Dynamic"
                                    ErrorMessage="格式错误(3位数字区号横杠8位电话号码)" ForeColor="Red" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"></asp:RegularExpressionValidator>
                            </li>
                           

                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
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