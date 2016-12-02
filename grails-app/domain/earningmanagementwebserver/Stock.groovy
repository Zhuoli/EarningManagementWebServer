package earningmanagementwebserver

import java.time.LocalDate

import grails.rest.*

@Resource(uri='/Stock')
class Stock {

    String symbol
    int shares
    LocalDate reportDate
    Float sharedAverageCost
    Float targetPrice

    static constraints = {
        symbol blank: false, nullable: false
        shares blank: false, nullable: false
        sharedAverageCost blank: false, nullable: false
        reportDate blank: false, nullable: true
        targetPrice blank: false, nullable: true
    }
    static mapping = {
        version false
        id generator:'assigned', name:'symbol'
    }
}
