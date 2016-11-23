package earningmanagementwebserver

import java.time.LocalDate

import grails.rest.*

@Resource(uri='/StockItems')
class StockItems {

    String symbol
    int shares
    LocalDate reportDate
    Float sharedAverageCost

    static constraints = {
        symbol blank: false, nullable: false
        shares blank: false, nullable: false
        reportDate blank: false, nullable: true
        sharedAverageCost blank: false, nullable: true
    }
    static mapping = {
        version false
        id generator:'assigned', name:'symbol'
    }
}
