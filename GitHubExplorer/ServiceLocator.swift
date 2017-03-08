import Swinject

/// Service locator based on [Swinject](https://github.com/Swinject/Swinject)
struct ServiceLocator {

    private static let container = Container()

    static func register<Service>(_ factory: @escaping @autoclosure () -> Service,
                                  forType serviceType: Service.Type? = nil) {
        container.register(serviceType ?? Service.self) { _ in factory() } .inObjectScope(.container)
    }

    static func resolve<Service>() -> Service? {
        return container.resolve(Service.self)
    }

}

extension ServiceLocator {

    /// Register most of services, excpet:
    ///   - `AppUI` in `RootController`
    ///   - `Router` in `RootController`
    static func config() {

    }

}
