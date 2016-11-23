package earningmanagementwebserver

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/helloworld"(view:"/helloworld/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
