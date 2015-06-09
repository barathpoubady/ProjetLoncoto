<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edition matériel</title>
</head>
<body>
<jsp:include page="/menu.html" />
<fieldset>
<legend><h3>Ajout/Modification de matériels</h3></legend>

<center>
<s:form action="saveMateriel" >
<s:hidden name="idMateriel"/>
<s:textfield name="nomMateriel" label="Nom" />
<s:textfield name="serialNumberMateriel" label="Num de série"  />

<%-- 		<s:property value="SalleMateriel"/> --%>
		<s:select list="salles" value="salleMateriel.id" name="salleMateriel.id" listKey="id" listValue="nom" label="Salle"/>
<%-- 		<s:select list="sujets" name="seminaireSujetID" label="sujet" listKey="id" listValue="nom" /> --%>

<s:submit />
</s:form>

</center>
</fieldset>
</body>
</html>