<%@page import="fr.paris.lutece.portal.service.message.SiteMessageException"%>
<%@page import="fr.paris.lutece.portal.service.util.AppPathService"%>
<%@page errorPage="../../../../ErrorPagePortal.jsp" %>
<jsp:useBean id="followJspBean" scope="request" class="fr.paris.lutece.plugins.extend.modules.follow.web.FollowJspBean" />

<%
	try
	{
		followJspBean.doCancelFollow( request, response );
	}
	catch( SiteMessageException lme )
	{
		response.sendRedirect( AppPathService.getSiteMessageUrl( request ) );
	}
%>