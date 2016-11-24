package earningmanagementwebserver

import java.time.LocalDate

class HelloWorldController {

    def index() {
        redirect(action: "secondAction")
    }

    def current() {
        StockItems stockItems1 = new StockItems(symbol: 'JD', shares: 50, reportDate: LocalDate.now(), sharedAverageCost: 12.5)
        stockItems1.save()
        def share = StockItems.findBySymbolLike('JD');

        [ share:share ]
    }

    def secondAction() {
        render "You were redirected from firstAction to secondAction"
    }
}
