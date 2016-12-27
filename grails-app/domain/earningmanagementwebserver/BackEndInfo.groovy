package earningmanagementwebserver

class Heartbeat {

    String name
    Date heartbeat

    static constraints = {
        name blank: false, nullable: false
        heartbeat blank: false, nullable: false
    }
    static mapping = {
        version false
        id generator:'assigned', name:'name'
    }
}
