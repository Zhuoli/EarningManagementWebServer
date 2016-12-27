package earningmanagementwebserver

class HelloWorldController {

    def index() {
        redirect(action: "current")
    }

    def current() {
//        Stock stockItems1 = new Stock(symbol: 'JD', shares: 50, reportDate: LocalDate.now(), sharedAverageCost: 12.5)
//        stockItems1.save()
//        def share = Stock.findBySymbolLike('JD');

        def shares = Stock.list()
        def heartBeat = Heartbeat.findByName("HeartBeat");

        [
                viewShares: shares,
                time      : heartBeat
        ]

    }

    def secondAction() {
        render "You were redirected from firstAction to secondAction"
    }


    def stockResult() {
        def share = Stock.findBySymbolLike(params.symbol);
        [viewShare: share]
    }
}
