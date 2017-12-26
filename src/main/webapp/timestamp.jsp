<%@ page contentType="application/json;charset=UTF-8" language="java" %>
{
    "timestamp": "<%=request.getQueryString()!=null&&request.getQueryString().startsWith("n")?System.nanoTime():System.currentTimeMillis()%>"
}