package earningmanagementwebserver

import grails.rest.*


@Resource(uri='/Stock')
class Stock {

    String symbol
    int shares
    Float sharedAverageCost
    Float currentPrice
    Date currentPriceLatestUpdateTime
    Date reportDate
    Float targetPrice
    Date timestamp

    static constraints = {
        symbol blank: false, nullable: false
        shares blank: false, nullable: false
        sharedAverageCost blank: false, nullable: false
        currentPrice blank:false, nullable: true
        reportDate blank: false, nullable: true
        targetPrice blank: false, nullable: true
    }
    static mapping = {
        version false
        id generator:'assigned', name:'symbol'
    }
}
