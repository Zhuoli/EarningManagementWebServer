<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Render Domain</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>Symbol: <g:fieldValue bean="${viewShare}" field="symbol"/></td>
            <td>Date: <g:fieldValue bean="${viewShare}" field="reportDate"/></td>
            <td>Average Cost: <g:fieldValue bean="${viewShare}" field="sharedAverageCost"/></td>
        </tr>
    </table>
<g:form name="testForm" controller="HelloWorldController" action="current">
    <g:textField name="symbol" value="${Input1}">  </g:textField>
    <g:actionSubmit value="Send to controller"  action="current"/>
</g:form>
</body>
</html>