package earningmanagementwebserver

class BootStrap {

    def init = { servletContext ->
        StockItems jd = new StockItems(symbol: 'jd', shares: 32)
    }
    def destroy = {
    }
}
