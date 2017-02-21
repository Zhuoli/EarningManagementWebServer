<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Render Domain</title>
        <meta name="viewport" content="main, width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
        <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
        <asset:javascript src="jquery.tablesorter/jquery.tablesorter.min.js"/>
        <asset:javascript src="jquery.tablesorter/jquery-2.2.0.min.js"/>
        <style>
        th {
            border-bottom: 1px solid #d6d6d6;
            cursor: pointer; cursor: hand;
        }

        tr:nth-child(even) {
            background: #e9e9e9;
        }
        </style>
    </head>

    <body>
        <div data-role="main" class="ui-content">
            <p>Last update time:   <g:fieldValue bean="${time}" field="heartbeat"/></p>

            <form>
                <input id="filterTable-input" data-type="search" placeholder="Search...">
            </form>

            <table id="keywords" data-role="table" data-mode="columntoggle" class="ui-responsive ui-shadow tablesorter"
                   data-filter="true" data-input="#filterTable-input">
                <thead>
                     <tr>
                        <th data-priority="1">Symbol</th>
                        <th data-priority="2">Shares</th>
                        <th data-priority="3">Current price</th>
                        <th data-priority="4">Earning Report Date</th>
                        <th data-priority="5">Average Cost</th>
                     </tr>
                </thead>
                <tbody>
                <g:each in="${viewShares}" var="viewShare">
                    <tr>
                        <td><a href="http://www.nasdaq.com/symbol/${viewShare.symbol}">${viewShare.symbol}</a></td>
                        <td><g:fieldValue bean="${viewShare}" field="shares"/></td>
                        <td><g:fieldValue bean="${viewShare}" field="currentPrice"/></td>
                        <td><g:fieldValue bean="${viewShare}" field="reportDate"/></td>
                        <td><g:fieldValue bean="${viewShare}" field="sharedAverageCost"/></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

        <g:form name="testForm" controller="HelloWorld" action="stockResult">
            <g:textField name="symbol" value="${Input1}"></g:textField>
            <g:actionSubmit value="Send to controller" action="stockResult"/>
        </g:form>
        <script type="text/javascript">
            $(function () {
                $('#keywords').tablesorter();
            });
        </script>
    </body>
</html>