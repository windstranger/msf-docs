workspace {
    model {
        user = person "User"
        system = softwareSystem "Online Shop" {
            webapp = container "WebApp"
            api = container "REST API"
            db = container "PostgreSQL"

            user -> webapp "uses"
            webapp -> api "calls"
            api -> db "reads/writes"
        }
    }

    views {
        systemContext system {
            include *
        }
        container system {
            include *
        }
    }
}
