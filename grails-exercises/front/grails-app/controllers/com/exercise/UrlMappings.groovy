package com.exercise

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "customer", view:"/index", action: 'index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
