package earningmanagementwebserver

class BootStrap {

    def init = { servletContext ->
        Stock jd = new Stock(symbol: 'jd', shares: 32)
    }
    def destroy = {
    }
}
