﻿<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="digilib.web.Format" errorPage="/errorshandler.jsp" %>
<%
	response.setDateHeader("Expires", -1);
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
%>
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/1 Cols Base.dwt.jsp" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>D I G I L I B &gt; Thủ thư &gt; Quản lý Thư viện &gt; Danh sách Nhóm độc giả</title>
<script language="JavaScript" src="/digilib.js"></script>
<script language="JavaScript" src="/data.js"></script>
<script language="JavaScript" src="membergroups.js"></script>
<script language="JavaScript">
	DataForm = "MemberGroupInfoForm";
	DataFormAction = "/process/membergroups.jsp";
	DataSet = "MemberGroups";
</script>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<link href="/digilib.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="760" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150">
      <table width="760" height="150" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="150" rowspan="3" align="center" valign="middle"><img src="/images/logo.gif" width="150" height="150" /></td>
          <td height="75" colspan="2">
            <table width="610" height="75" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center" valign="middle">
                  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="500" height="75">
                    <param name="movie" value="/images/banner.swf" />
                     
                    <param name="quality" value="high" /><param name="SCALE" value="noborder">
                    <embed src="/images/banner.swf" width="500" height="75" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="noborder"></embed></object>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="25" colspan="2">
            <table width="100%" border="0" cellpadding="4" cellspacing="0" class="navigator">
              <tr align="center">
                <td><a href="/">digilib.com</a></td>
                <td>•</td>
                <td><a href="/search.jsp">Search</a></td>
                <td>•</td>
                <td><a href="/members/">Member</a></td>
                <td>•</td>
                <td><a href="/librarians/">Librarian</a></td>
                <td>•</td>
                <td><a href="/feedback.jsp">Feedback</a></td>
                <td>•</td>
                <td><a href="/contactus.jsp">Contact</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td width="300" height="50">
            <table width="300" height="50" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><!-- InstanceBeginEditable name="HeaderImage" --><img src="/images/header_membergrouplist.gif" width="300" height="50" /><!-- InstanceEndEditable --></td>
              </tr>
            </table>
          </td>
          <td width="310">
            <table width="310" height="50" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="right"><!-- InstanceBeginEditable name="Validation" --><!-- #BeginLibraryItem "/Library/Librarian's Validation.lbi" -->
                  <jsp:useBean id="curLibrarian" scope="session" class="digilib.web.Librarian"/>
<%
	if (curLibrarian.isValidated()) {
%>				  
                  <form name="LogoutForm" id="LogoutForm" method="post" action="/process/librarians.jsp?action=logout">
                    <table width="310" border="0" cellspacing="5" cellpadding="0">
                      <tr>
                        <td align="right">Thủ thư <strong>
                          <jsp:getProperty name="curLibrarian" property="Name" />
                          </strong></td><td width="75" align="center">
                          <input name="Logout" type="submit" class="button" id="Logout" value="Thoát" />
                        </td></tr>
                    </table></form><%
	} else {
		response.sendRedirect("/librarians/?src=" + request.getRequestURI());
	}
%>				  
                                    <!-- #EndLibraryItem --><!-- InstanceEndEditable --></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="100%" valign="top">
      <table width="760" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="160" height="100%" valign="top">
            <table width="160" height="100%" border="0" cellpadding="0" cellspacing="5">
              <tr>
                <td align="center" valign="top">
                  <!-- InstanceBeginEditable name="LeftMenu" -->
                  <table width="150" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Thủ 
                        thư</td>
                      <td valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/profile.jsp">Hồ sơ 
                        cá nhân</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10"><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Quản 
                        lý thư viện</td>
                      <td width="10" valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/registrations.jsp">Cấp 
                        thẻ độc giả</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/members.jsp">Danh 
                        sách Độc giả</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="#">Danh sách Nhóm 
                        độc giả</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/librarians.jsp">Danh 
                        sách Thủ thư</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/loans.jsp">Cho 
                        mượn tài liệu</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/confirmloans.jsp">Phiếu 
                        mượn đã lập</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/returns.jsp">Thu 
                        hồi tài liệu</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/confirmreturns.jsp">Phiếu 
                        trả đã lập</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/dayend.jsp">Xử 
                        lý cuối ngày</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10"><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Biên 
                        mục tài liệu</td>
                      <td width="10" valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/cataloging/">Biên 
                        mục tài liệu</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10"><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Báo 
                        cáo</td>
                      <td width="10" valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/reports/managements.jsp">Các 
                        báo cáo quản lý</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/reports/labeling.jsp">In 
                        nhãn tài liệu</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="bottom">&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="bottom">&nbsp;</td>
                    </tr>
                  </table>
                  <!-- InstanceEndEditable --></td>
              </tr>
            </table>
          </td>
          <td width="600" height="100%" valign="top">
            <table width="600" border="0" cellspacing="5" cellpadding="0">
              <tr>
                <td><!-- InstanceBeginEditable name="MainContent" -->
                  <table width="590" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="10"><img src="/images/lefttop_curve.gif" width="10" height="20" /></td>
                      <td width="430" bgcolor="#663300" class="headline">Danh sách Nhóm độc giả</td>
                      <td width="150"><img src="/images/headline_trailer.gif" width="150" height="20" /></td>
                    </tr>
                    <tr>
                      <td colspan="3">
                        <table width="590" border="0" cellspacing="5" cellpadding="0">
                          <tr>
                            <td>
                              <form name="MemberGroupInfoForm" id="MemberGroupInfoForm" method="post" action="/process/membergroups.jsp">
                                <table width="580" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="10"><img src="/images/news_leftcurve.gif" width="10" height="20" /></td>
                                    <td width="560" align="center" bgcolor="#083908" class="headline">Thông tin Nhóm độc giả</td>
                                    <td width="10"><img src="/images/news_rightcurve.gif" width="10" height="20" /></td>
                                  </tr>
                                      
                                  <jsp:useBean id="MemberGroups" scope="page" class="digilib.view.MemberGroup" />               
                                  <%
	boolean isAdmin = curLibrarian.getLibrarianID().trim().equalsIgnoreCase("ADMIN");
	int Page = 1;
	int PageSize = 20;
	String sPage = null;
	String sPageSize = null;
	try {
		sPage = request.getParameter("page");
		Page = Integer.parseInt(sPage);
	} catch (Exception e) {}
	try {
		sPageSize = request.getParameter("pagesize");
		PageSize = Integer.parseInt(sPageSize);
	} catch (Exception e) {}
	Page = (Page <= 0) ? 1 : Page;
	PageSize = (PageSize <= 0) ? 1 : PageSize;
	MemberGroups.setPageSize(PageSize);
	MemberGroups.setPage(Page);
	//MemberGroups.setCriteria(sCriteria);
	MemberGroups.open();
	int totalRecords = MemberGroups.getMaxRows();
	int totalPages, fromRecord, toRecord;
	if (totalRecords <= 0) {
		fromRecord = toRecord = Page = totalPages = 0;
	} else {
		totalPages = (totalRecords / PageSize) + ((totalRecords % PageSize != 0) ? 1 : 0);
		Page = (Page > totalPages) ? totalPages : Page;
		fromRecord = (Page-1) * PageSize + 1;
		fromRecord = (fromRecord < 0) ? 1 : fromRecord;
		toRecord = Page * PageSize;
		toRecord = (toRecord > totalRecords) ? totalRecords : toRecord;
	}
	int i = 0;
	while (MemberGroups.next()) {	
%>
                                                                        																	  
                                  <tr>
                                    <td colspan="3">
                                      <table width="580" bgcolor="<%= (i % 2 == 0) ? "#ffffff" : "#ffffcc" %>" border="0" cellpadding="0" cellspacing="5" class="data" id="divDisplay" style="display:inline; border-left: #999999 1px solid; border-right: #999999 1px solid; border-bottom: #999999 1px solid;">                                                                                                                        
                                        <tr>
                                          <td width="15" align="center"><img src="/images/edit_up.gif" width="10" height="10" class="picbutton" onclick="doEdit(<%= i %>);" /></td>
                                          <td width="15" align="center"><img src="/images/remove_up.gif" width="10" height="10" class="picbutton" onclick="doRemove(<%= i %>);" /></td>
                                          <td width="150">Mã Nhóm độc giả</td>
                                          <td colspan="4"><%= MemberGroups.getGroupID() %></td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Tên nhóm</td>
                                          <td colspan="4"><%= MemberGroups.getName()%></td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mức ưu tiên</td>
                                          <td width="50" align="right"><%= MemberGroups.getPriority() %></td>
                                          <td width="50">&nbsp;</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Đăng ký tối đa</td>
                                          <td width="50" align="right"><%= MemberGroups.getMaxBookings() %></td>
                                          <td width="50">bản</td>
                                          <td width="150">Thời hạn đăng ký</td>
                                          <td width="50" align="right"><%= MemberGroups.getBookingDuration() %></td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mượn tối đa</td>
                                          <td width="50" align="right"><%= MemberGroups.getMaxLoans() %></td>
                                          <td width="50">bản</td>
                                          <td width="150">Thời hạn mượn</td>
                                          <td width="50" align="right"><%= MemberGroups.getLoanDuration() %></td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Gia hạn tối đa</td>
                                          <td width="50" align="right"><%= MemberGroups.getMaxExpansions() %></td>
                                          <td width="50">lần</td>
                                          <td width="150">Thời hạn gia hạn</td>
                                          <td width="50" align="right"><%= MemberGroups.getExpansionDuration() %></td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mức phạt (trên 1 ngày trễ)</td>
                                          <td width="50" align="right"><%= MemberGroups.getChargeRate() %></td>
                                          <td width="50">đồng</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Thời hạn thẻ</td>
                                          <td width="50" align="right"><%= MemberGroups.getMembershipDuration() %></td>
                                          <td width="50">ngày</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Trạng thái</td>
                                          <td colspan="4"><%= (MemberGroups.getStatus().intValue() == 1) ? "Hoạt động" : "Ngưng" %></td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td><em>Cập nhật lần cuối</em></td>
                                          <td colspan="4"><em><%= Format.formatTimeStamp(MemberGroups.getAudTime()) %> - (<%= MemberGroups.getAudUser() %>)</em></td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                      </table>
                                      <table width="580" bgcolor="<%= (i % 2 == 0) ? "#ffffff" : "#ffffcc" %>" border="0" cellpadding="0" cellspacing="5" class="data" id="divEdit" style="display:none; border-left: #999999 1px solid; border-right: #999999 1px solid; border-bottom: #999999 1px solid;">
                                        <tr>
                                          <td width="15" align="center"><img src="/images/cancel_up.gif" width="10" height="10" class="picbutton" onclick="doCancel(<%= i %>);" /></td>
                                          <td width="15" align="center"><img src="/images/apply_up.gif" width="10" height="10" class="picbutton" onclick="doApply(<%= i %>, true);" /></td>
                                          <td width="150">Mã Nhóm độc giả</td>
                                          <td colspan="4">
                                            <input name="GroupID" type="hidden" id="GroupID" value="<%= MemberGroups.getGroupID() %>" />
                                            <%= MemberGroups.getGroupID() %>
                                          </td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Tên nhóm</td>
                                          <td colspan="4">
                                            <input name="Name" type="text" class="textbox" id="Name" value="<%= MemberGroups.getName() %>" maxlength="100" />
                                          </td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mức ưu tiên</td>
                                          <td width="50" align="right">
                                            <select name="Priority" class="listbox" id="Priority">
                                              <option value="0" <%= (0 == MemberGroups.getPriority().intValue()) ? "select=\"selected\"" : "" %>>0</option>
                                              <option value="1" <%= (1 == MemberGroups.getPriority().intValue()) ? "select=\"selected\"" : "" %>>1</option>
                                              <option value="2" <%= (2 == MemberGroups.getPriority().intValue()) ? "select=\"selected\"" : "" %>>2</option>
                                            </select>
                                            
                                                                                        
                                          </td>
                                          <td width="50">&nbsp;</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Đăng ký tối đa</td>
                                          <td width="50" align="right">
                                            <input name="MaxBookings" type="text" class="textbox-rightalign" id="MaxBookings" value="<%= MemberGroups.getMaxBookings() %>" maxlength="2" />
                                                                                        
                                          </td>
                                          <td width="50">bản</td>
                                          <td width="150">Thời hạn đăng ký</td>
                                          <td width="50" align="right">
                                            <input name="BookingDuration" type="text" class="textbox-rightalign" id="BookingDuration" value="<%= MemberGroups.getBookingDuration() %>" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mượn tối đa</td>
                                          <td width="50" align="right">
                                            <input name="MaxLoans" type="text" class="textbox-rightalign" id="MaxLoans" value="<%= MemberGroups.getMaxLoans() %>" maxlength="2" />
                                            
                                          </td>
                                          <td width="50">bản</td>
                                          <td width="150">Thời hạn mượn</td>
                                          <td width="50" align="right">
                                            <input name="LoanDuration" type="text" class="textbox-rightalign" id="LoanDuration" value="<%= MemberGroups.getLoanDuration() %>" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Gia hạn tối đa</td>
                                          <td width="50" align="right">
                                            <input name="MaxExpansions" type="text" class="textbox-rightalign" id="MaxExpansions" value="<%= MemberGroups.getMaxExpansions() %>" maxlength="2" />
                                            
                                          </td>
                                          <td width="50">lần</td>
                                          <td width="150">Thời hạn gia hạn</td>
                                          <td width="50" align="right">
                                            <input name="ExpansionDuration" type="text" class="textbox-rightalign" id="ExpansionDuration" value="<%= MemberGroups.getExpansionDuration() %>" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mức phạt (trên 1 ngày trễ)</td>
                                          <td width="50" align="right">
                                            <input name="ChargeRate" type="text" class="textbox-rightalign" id="ChargeRate" value="<%= MemberGroups.getChargeRate() %>" maxlength="6" />
                                            
                                          </td>
                                          <td width="50">đồng</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Thời hạn thẻ</td>
                                          <td width="50" align="right">
                                            <input name="MembershipDuration" type="text" class="textbox-rightalign" id="MembershipDuration" value="<%= MemberGroups.getMembershipDuration() %>" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Trạng thái</td>
                                          <td colspan="4">
                                            <select name="Status" class="listbox" id="Status">
                                              <option value="1" <%= (1 == MemberGroups.getStatus().intValue()) ? "selected=\"selected\"" : "" %>>Hoạt động</option>
                                              <option value="0" <%= (0 == MemberGroups.getStatus().intValue()) ? "selected=\"selected\"" : "" %>>Ngưng</option>
                                            </select>
                                            
                                          </td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td><em>Cập nhật lần cuối</em></td>
                                          <td colspan="4"><em><%= Format.formatTimeStamp(new Date()) %> - (<%= curLibrarian.getLibrarianID() %>)</em></td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                      </table>
                                    </td>
                                  </tr>
                                  <%
		i++;
	}
	MemberGroups.close();
%>								  
                                  <tr>
                                    <td colspan="3">
                                      <table width="580" bgcolor="<%= (i % 2 == 0) ? "#ffffff" : "#ffffcc" %>" border="0" cellpadding="0" cellspacing="5" class="data" id="divDisplay" style="display:inline; border-left: #999999 1px solid; border-right: #999999 1px solid; border-bottom: #999999 1px solid;">
                                        <tr>
                                          <td width="30" align="center"><img src="/images/add_up.gif" width="10" height="10" class="picbutton" onclick="doAdd(<%= i %>);" /></td>
                                          <td width="100">&nbsp;</td>
                                          <td>&nbsp;</td>
                                          <td width="100">&nbsp;</td>
                                        </tr>
                                      </table>                                      
                                      <table width="580" bgcolor="<%= (i % 2 == 0) ? "#ffffff" : "#ffffcc" %>" border="0" cellpadding="0" cellspacing="5" class="data" id="divEdit" style="display:none; border-left: #999999 1px solid; border-right: #999999 1px solid; border-bottom: #999999 1px solid;">
                                        <tr>
                                          <td width="15" align="center"><img src="/images/cancel_up.gif" width="10" height="10" class="picbutton" onclick="doCancel(<%= i %>);" /></td>
                                          <td width="15" align="center"><img src="/images/apply_up.gif" width="10" height="10" class="picbutton" onclick="doApply(<%= i %>, true);" /></td>
                                          <td width="150">Mã Nhóm độc giả</td>
                                          <td colspan="4">
                                            <input name="GroupID" type="text" class="textbox" id="GroupID" maxlength="12" onchange="checkGroupID(<%=i%>);" onblur="checkGroupID(<%=i%>);" />
                                                                                        
                                          </td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Tên nhóm</td>
                                          <td colspan="4">
                                            <input name="Name" type="text" class="textbox" id="Name" maxlength="100" />
                                          </td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mức ưu tiên</td>
                                          <td width="50" align="right">
                                            <select name="Priority" class="listbox" id="Priority">
                                              <option value="0" selected="selected">0</option>
                                              <option value="1">1</option>
                                              <option value="2">2</option>
                                            </select>
                                            
                                                                                        
                                          </td>
                                          <td width="50">&nbsp;</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Đăng ký tối đa</td>
                                          <td width="50" align="right">
                                            <input name="MaxBookings" type="text" class="textbox-rightalign" id="MaxBookings" maxlength="2" />
                                                                                        
                                          </td>
                                          <td width="50">bản</td>
                                          <td width="150">Thời hạn đăng ký</td>
                                          <td width="50" align="right">
                                            <input name="BookingDuration" type="text" class="textbox-rightalign" id="BookingDuration" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mượn tối đa</td>
                                          <td width="50" align="right">
                                            <input name="MaxLoans" type="text" class="textbox-rightalign" id="MaxLoans" maxlength="2" />
                                            
                                          </td>
                                          <td width="50">bản</td>
                                          <td width="150">Thời hạn mượn</td>
                                          <td width="50" align="right">
                                            <input name="LoanDuration" type="text" class="textbox-rightalign" id="LoanDuration" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Gia hạn tối đa</td>
                                          <td width="50" align="right">
                                            <input name="MaxExpansions" type="text" class="textbox-rightalign" id="MaxExpansions" maxlength="2" />
                                            
                                          </td>
                                          <td width="50">lần</td>
                                          <td width="150">Thời hạn gia hạn</td>
                                          <td width="50" align="right">
                                            <input name="ExpansionDuration" type="text" class="textbox-rightalign" id="ExpansionDuration" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Mức phạt (trên 1 ngày trễ)</td>
                                          <td width="50" align="right">
                                            <input name="ChargeRate" type="text" class="textbox-rightalign" id="ChargeRate" maxlength="6" />
                                            
                                          </td>
                                          <td width="50">đồng</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Thời hạn thẻ</td>
                                          <td width="50" align="right">
                                            <input name="MembershipDuration" type="text" class="textbox-rightalign" id="MembershipDuration" maxlength="3" />
                                            
                                          </td>
                                          <td width="50">ngày</td>
                                          <td width="150">&nbsp;</td>
                                          <td width="50" align="right">&nbsp;</td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td width="150">Trạng thái</td>
                                          <td colspan="4">
                                            <select name="Status" class="listbox" id="Status">
                                              <option value="1" selected="selected">Hoạt động</option>
                                              <option value="0">Ngưng</option>
                                            </select>
                                            
                                          </td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td colspan="2">&nbsp;</td>
                                          <td><em>Cập nhật lần cuối</em></td>
                                          <td colspan="4"><em>
                                            <%= Format.formatTimeStamp(new Date()) %>
                                             - (
                                            <%= curLibrarian.getLibrarianID() %>
                                            )</em></td>
                                          <td width="50">&nbsp;</td>
                                        </tr>
                                      </table>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td colspan="3">
                                      <table width="580" border="0" align="center" cellpadding="0" cellspacing="5" style="border-left: #999999 1px solid; border-right: #999999 1px solid; border-bottom: #999999 1px solid;">
                                        <tr>
                                          <td width="175">Mẩu tin 
                                            <%= fromRecord %>
                                             - 
                                            <%= toRecord %>
                                             / 
                                            <%= totalRecords %>
                                             mẩu tin<br />
Trang 
                                            <%= Page %>
                                             / 
                                            <%= totalPages %>
                                             trang</td>
                                          <td align="center">
                                            <input name="page" type="hidden" id="page" value="<%= Page %>" />
                                            Giới hạn 
                                            <select name="pagesize" class="listbox" id="pagesize" onchange="setPageSize();">
                                              <%
	for (int ps = 1; ps <= 50; ps++) {
%>
                                              											
												
                                              <option value="<%= ps %>" <%= (ps == PageSize) ? "selected=\"selected\"" : "" %>>
                                              <%= ps %>
                                              </option>
                                              <%
	}
%>
                                              												
                                            </select>
                                             mẩu tin / trang</td>
                                          <td width="175" align="right">
										  	<img src="/images/movefirst_up.gif" width="20" height="10" class="picbutton" onclick="<%= (Page > 1) ? "gotoPage(1);" : "" %>" /> 
											<img src="/images/moveprevious_up.gif" width="20" height="10" class="picbutton" onclick="<%= (Page > 1) ? "gotoPage(" + (Page-1) + ");" : "" %>" /> 
											<img src="/images/movenext_up.gif" width="20" height="10" class="picbutton" onclick="<%= (Page < totalPages) ? "gotoPage(" + (Page+1) + ");" : "" %>" /> 
											<img src="/images/movelast_up.gif" width="20" height="10" class="picbutton" onclick="<%= (Page < totalPages) ? "gotoPage(" + totalPages + ");" : "" %>" /></td>
                                        </tr>
                                      </table>
                                    </td>
                                  </tr>
                                </table>
                              </form>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                  <!-- InstanceEndEditable --></td>
              </tr>
            </table>
            </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="25">
      <table width="100%" border="0" cellpadding="0" cellspacing="5" class="copyright">
        <tr>
          <td>&copy; 2002 - 2003 Ami Company Limited - - Vuong Phuc Dinh (0540377)</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
<!-- InstanceEnd --></html>
