<%@ page import="com.ubnt.data.Voucher" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ubnt.ace.view.JspHelper" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%

List vouchers = (List) request.getAttribute("vouchers");

%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="x-ua-compatible" content="IE=Edge;chrome=1" />
	<title>Vouchers</title>
<style type="text/css">
<%=JspHelper.renderTemplate(request, "bundle/voucher.css", null)%>
</style>
</head>
<body onload="self.focus(); window.print()">
	<% for (int i=0; i<vouchers.size(); i++) {
		Voucher voucher = (Voucher) vouchers.get(i);
		String code = voucher.getString("code");
		code = code.substring(0, 5)+"-"+code.substring(5);
		voucher.put("code", code);

		int duration = voucher.getInt("duration");
		int days = duration / 1440;
		int hours = (duration % 1440) / 60;
		int minutes = duration % 60;
		voucher.put("hasDays", days > 0 ? "days_enabled" : "days_disabled");
		voucher.put("hasHours", hours > 0 ? "hours_enabled" : "hours_disabled");
		voucher.put("hasMinutes", minutes > 0 ? "minutes_enabled" : "minutes_disabled");
		voucher.put("days", "" + days);
		voucher.put("hours", "" + hours);
		voucher.put("minutes", "" + minutes);
		String valid = (days > 0 ? days + " days" : "") + (hours > 0 ? hours + " hours" : "") + (minutes  > 0 ? minutes  + " minutes" : "");
		voucher.put("valid", valid);

		int down = voucher.getInt("qos_rate_max_down");
		voucher.put("hasDown", down > 0 ? "downrate_enabled" : "downrate_disabled");
		voucher.put("down", "" + down);
		int up = voucher.getInt("qos_rate_max_up");
		voucher.put("hasUp", up > 0 ? "uprate_enabled" : "uprate_disabled");
		voucher.put("up", "" + up);
		int qos_usage_quota = voucher.getInt("qos_usage_quota");
		voucher.put("hasData", qos_usage_quota > 0 ? "quota_enabled" : "quota_disabled");
		voucher.put("data", "" + qos_usage_quota);

		String notes = voucher.getString("note");
		voucher.put("notes", notes);

		int quota = voucher.getInt("quota");
		voucher.put("voucher_type", quota > 0 ? "multiple" : "one_time");

		out.print(JspHelper.renderTemplate(request, "bundle/voucher.html", voucher));
	} %>
</body>
</html>
