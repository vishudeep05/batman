<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result </title>
<link href="NewFile.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
String c = request.getParameter("c");
String j = request.getParameter("java");
String n = request.getParameter("net");
String v = request.getParameter("vb");
String d = request.getParameter("dbms");
if(!(c == null || c.isEmpty()))
{
    int cmarks = Integer.parseInt(c);
    int jmarks = Integer.parseInt(j);
    int nmarks = Integer.parseInt(n);
    int vmarks = Integer.parseInt(v);
    int dmarks = Integer.parseInt(d);

    int total = cmarks+jmarks+nmarks+vmarks+dmarks;
    int avg = (total)/5;
    int percent = avg;
    int max=0,min=0;
    String grade ="";
    int[] numbers = {cmarks, jmarks, nmarks, vmarks, dmarks};
   
    
    java.util.Arrays.sort(numbers);
    
    min=numbers[0];
    max=numbers[4];

    if(percent < 40){
        grade = "E";
        //request.setAttribute("grade", grade);
    }
    else if(percent >= 40 && percent <=44){
        grade = "D";
    }
    else if(percent >=45 && percent <=49){
        grade = "D+";
    }
    else if(percent >=50 && percent <=54){
        grade = "C-";
    }
    else if(percent >=55 && percent<=59){
        grade = "C";
    }
    else if(percent >=60 && percent <=64){
        grade = "C+";
    }
    else if(percent >=65 && percent<=69){
        grade = "B-";
    }
    else if(percent >=70 && percent <=74){
        grade = "B";
    }
    else if(percent >=75 && percent <=79){
        grade = "B+";
    }
    else if(percent >=80 && percent <=84){
        grade = "A";
    }
    else if (percent >=85 && percent <=100){
        grade = "A+";
    }
    request.setAttribute("Grade", grade);
    request.setAttribute("Min", min);
    request.setAttribute("Max", max);
    %>    
    <table>
    <tr>
    <td><b>Course</b></td><td></td>
    <td align="center"><%=request.getParameter("course") %>
    </tr>
    <tr>
    <td><b>Aggregate Marks</b></td><td></td>
    <td align="center"><%=total %></td>
    </tr>
    <tr>
    <td><b>Grade</b></td><td></td>
    <td align="center"><%=grade %></td>    
    </tr>
    <td><b>Maximum Marks</b></td><td></td>
    <td align="center" name="max"><%=max %></td>    
    </tr>
    <td><b>Minimum Marks</b></td><td></td>
    <td align="center" name="min"><%=min %></td>    
    </tr>
    </table>
      <h3>Grade System</h3>
     <table width="50%">
    <%    
}
%>
</body>
</html>