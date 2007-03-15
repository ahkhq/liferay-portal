<%
/**
 * Copyright (c) 2000-2007 Liferay, Inc. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
%>

<%@ include file="/html/portlet/init.jsp" %>

<%@ page import="com.liferay.portal.AccountNameException" %>
<%@ page import="com.liferay.portal.CompanyHomeURLException" %>
<%@ page import="com.liferay.portal.CompanyPortalURLException" %>
<%@ page import="com.liferay.portal.events.StartupAction" %>
<%@ page import="com.liferay.portal.kernel.plugin.PluginPackage" %>
<%@ page import="com.liferay.portal.kernel.search.Document" %>
<%@ page import="com.liferay.portal.kernel.search.Hits" %>
<%@ page import="com.liferay.portal.plugin.PluginPackageException" %>
<%@ page import="com.liferay.portal.plugin.PluginPackageImpl" %>
<%@ page import="com.liferay.portal.plugin.PluginPackageUtil" %>
<%@ page import="com.liferay.portal.plugin.RepositoryReport" %>
<%@ page import="com.liferay.portal.service.impl.ThemeLocalUtil" %>
<%@ page import="com.liferay.portal.servlet.PortalSessionContext" %>
<%@ page import="com.liferay.portal.util.LiveUsers" %>
<%@ page import="com.liferay.portal.util.comparator.UserTrackerModifiedDateComparator" %>
<%@ page import="com.liferay.portlet.admin.util.OmniadminUtil" %>
<%@ page import="com.liferay.util.License" %>
<%@ page import="com.liferay.util.Screenshot" %>
<%@ page import="com.liferay.util.Version" %>

<%@ page import="org.apache.log4j.Level" %>
<%@ page import="org.apache.log4j.Logger" %>
<%@ page import="org.apache.log4j.LogManager" %>

<%
DateFormat dateFormatDateTime = DateFormats.getDateTime(locale, timeZone);
%>

<%!
public String getNoteIcon(ThemeDisplay themeDisplay, String message) {
	StringMaker sm = new StringMaker();

	sm.append("&nbsp;<img align=\"absmiddle\" border=\"0\" src='");
	sm.append(themeDisplay.getPathThemeImages());
	sm.append("/document_library/page.png");
	sm.append("' onmousemove='ToolTip.show(event, this, \"");
	sm.append(message);
	sm.append("\")'>");

	return sm.toString();
}
%>