# Spring Framework Overview

# Introduction

At its core, **Spring** is an open-source framework that provides infrastructure support for developing Java applications. It simplifies common tasks like dependency injection, transaction management, and security. Spring promotes **Inversion of Control (IoC)**, allowing the framework to manage dependencies and configurations, reducing manual wiring.

# Core Modules
![spring-overview.png](images%2Fspring-overview.png)

## Spring Core:
Provides IoC and Dependency Injection (DI).

The **Core Container** is divided into several sub-modules, each serving specific purposes:

- **Beans**: Manages the configuration, instantiation, and lifecycle of application beans at runtime.

- **Core**: Contains essential components for the Spring framework’s runtime operation, including the IoC container.

- **Context**: Enhances the runtime capabilities of the core container, providing additional features such as event propagation, resource loading, and internationalization.

- **Expression Language (SpEL)**: Allows querying and manipulation of objects at runtime through a powerful expression language.

## Spring AOP
Enables Aspect-Oriented Programming at runtime, allowing developers to define and apply cross-cutting concerns such as logging, security, and transaction management.

## Spring Data Access/Integration
Facilitates data access and integration with various data sources at runtime, enabling seamless communication with databases and message brokers.

- **JDBC**: Simplifies the execution of SQL statements and retrieval of results during runtime.

- **ORM**: Provides runtime integration with Object-Relational Mapping frameworks (e.g., Hibernate, JPA) for database interactions.

- **JMS**: Offers support for messaging at runtime, allowing applications to communicate through Java Message Service.

- **Transactions**: Manages transactional behavior during runtime, ensuring data consistency and integrity.

## Spring Web
Provides runtime capabilities for building web applications, including handling HTTP requests and responses.

- **Web**: Offers basic web features, including multipart file uploads and session management at runtime.

- **Web MVC**: Implements the Model-View-Controller (MVC) design pattern at runtime, facilitating the separation of concerns in web applications.

- **Web Websocket**: Supports WebSocket communication at runtime, enabling real-time, bidirectional communication between clients and servers.

## Spring Test
Provides utilities and frameworks for testing Spring components at runtime, enabling developers to validate functionality and behavior.

# Inversion of Control (IoC)

Inversion of Control (IoC) is a fundamental concept indeed promotes keeping your business logic clean by externalizing the configuration and management of dependencies.

Inversion of Control (IoC) is highly useful for low-level code and configuration management, allowing developers to focus on the core business logic rather than the boilerplate or infrastructure code. It achieves this by delegating the responsibility for managing object creation, configuration, and dependencies to an external IoC container or framework, such as Spring.

## IoC Container
The IoC container uses the principle of Inversion of Control to shift the responsibility of object creation and management from the application code to the container itself.

## Bean Lifecycle Management

Understanding the lifecycle of beans managed by the **IoC container** can provide insight into how your application behaves:

1. **Instantiation**: The container creates a new instance of the bean.
2. **Dependency Injection**: The container injects dependencies into the bean.
3. **Post-processing**: If you define any post-processors (like `@PostConstruct`), they will be executed after the dependencies are injected.
4. **Destruction**: When the application context is closed, the container will call any destroy methods annotated with `@PreDestroy`.

### 2. Dependency Injection (DI)

- **Dependency Injection** is a technique used to achieve IoC by providing the dependencies of a class (its required components) from an external source rather than the class itself.
- Spring supports multiple DI methods:
    - **Constructor Injection**: Dependencies are provided through a class constructor.
    - **Setter Injection**: Dependencies are provided through setter methods.
    - **Field Injection**: Dependencies are injected directly into fields (though not recommended for testability).

### Dependency
- **Class A has a dependency on Class B, it means that Class A requires an instance of Class B to function properly. In other words, Class A depends on Class B to perform its tasks.**


## Dependency Injection Examples

````
public class PaymentService {
private PaymentGateway paymentGateway = new PaymentGateway(); // Hard dependency
private Logger logger = new Logger(); // Hard dependency

    public void processPayment(Payment payment) {
        paymentGateway.process(payment);
        logger.log("Payment processed: " + payment);
    }
}
````


### Example with Dependency Injection

```java
public class PaymentService {
    private final PaymentGateway paymentGateway; // Dependency injected
    private final Logger logger; // Dependency injected



[Link Text](path/to/another/README.md)

````

## What is Spring Data?
[Click here !](TechNova-Spring-app/springData.md)
