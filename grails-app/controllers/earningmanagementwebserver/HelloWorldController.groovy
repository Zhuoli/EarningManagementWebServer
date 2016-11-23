package earningmanagementwebserver

class HelloWorldController {

    def index() {

        def share = StockItems.findBySymbolLike('JD');

        [ share:share ]}
}
