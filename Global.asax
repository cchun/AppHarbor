<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite1" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        AuthConfig.RegisterOpenAuth();
        RouteConfig.RegisterRoutes(RouteTable.Routes);

        Application.Lock();
        Application["UserCount"] = 0;
        Application.UnLock();

        Application.Lock();
        Application["StatCount"] = 0;
        Application.UnLock();
    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }
    
    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session.Timeout = 1;
        Application.Lock();
        Application["StatCount"] = (int)Application["StatCount"] + 1;
        Application["UserCount"] = (int)Application["UserCount"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

        Application.Lock();
        Application["UserCount"] = (int)Application["UserCount"] - 1;
        Application.UnLock();
    }
</script>
