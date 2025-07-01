workspace {

    model {
        user    = person         "User"            "Конечный пользователь"
        webApp  = softwareSystem "Web Application" "Веб-интерфейс"
        backend = softwareSystem "Software System" "Бэкенд-система" {
            gatewayApi  = container "GateWayApi" "Апи бекенда"
            orderService   = container "Order Service"      "Обрабатывает заказы"      "Java, Spring Boot"
            paymentService = container "Payment Service"    "Обрабатывает оплату"      "Java, Spring Boot"
            menuService    = container "Menu Service"       "Управляет меню"           "Java, Spring Boot"
            userService    = container "User Service"       "Управляет пользователями" "Keycloak"
            truckService   = container "Truck Service"      "Управляет фудтраками"     "Java, Spring Boot"
            promoService   = container "Promotions Service" "Управляет промоакциями"   "Java, Spring Boot"
        }

        user   -> webApp   "Использует"
        webApp -> backend  "Вызывает API бэкенда"

        gatewayApi -> orderService   "REST API"
        gatewayApi -> paymentService "REST API"
        gatewayApi -> menuService    "REST API"
        gatewayApi -> userService    "REST API"
        gatewayApi -> truckService   "REST API"
        gatewayApi -> promoService   "REST API"
    }

    views {
        container backend "ContainerView" {
            include *
            autolayout lr
        }
        systemContext webApp "SystemContext" {
            include *
            autolayout lr
        }

    }

}
