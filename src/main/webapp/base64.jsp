<%@ page import="java.util.Base64"%><%@ page import="javax.xml.bind.DatatypeConverter"%><%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%
byte[] arr = null;
if (request.getParameter("h") != null) {
    arr = DatatypeConverter.parseHexBinary(request.getParameter("h"));
} else {
    arr = request.getParameter("d").getBytes();
}
%>
{
    "base64": "<%=new String(Base64.getEncoder().encode(arr))%>"
}