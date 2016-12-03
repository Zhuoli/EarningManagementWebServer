<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Render Domain</title>
</head>
<body>
    <table border="1">
      <tr>
        <th>Symbol</th>
        <th>Shares</th>
        <th>Earning Report Date</th>
        <th>Average Cost</th>
      </tr>
        <g:each in="${viewShares}" var="viewShare">
            <tr>
                <td><g:fieldValue bean="${viewShare}" field="symbol"/></td>
                <td><g:fieldValue bean="${viewShare}" field="shares"/></td>
                <td><g:fieldValue bean="${viewShare}" field="reportDate"/></td>
                <td><g:fieldValue bean="${viewShare}" field="sharedAverageCost"/></td>
            </tr>
        </g:each>
    </table>
<g:form name="testForm" controller="HelloWorld" action="stockResult">
    <g:textField name="symbol" value="${Input1}">  </g:textField>
    <g:actionSubmit value="Send to controller"  action="stockResult"/>
</g:form>
</body>
</html>