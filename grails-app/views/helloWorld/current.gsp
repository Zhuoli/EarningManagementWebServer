<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Render Domain</title>
</head>
<body>
    <p>Last update time:   <g:fieldValue bean="${time}" field="heartbeat"/></p>
    <table border="1">
      <tr>
        <th>Symbol</th>
        <th>Shares</th>
        <th>Current price</th>
        <th>Earning Report Date</th>
        <th>Average Cost</th>
      </tr>
        <g:each in="${viewShares}" var="viewShare">
            <tr>

                <td><a href="http://www.nasdaq.com/symbol/${viewShare.symbol}">${viewShare.symbol}</a></td>
                <td><g:fieldValue bean="${viewShare}" field="shares"/></td>
                <td><g:fieldValue bean="${viewShare}" field="currentPrice"/></td>
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