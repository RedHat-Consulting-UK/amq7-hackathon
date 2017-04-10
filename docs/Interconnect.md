# JBoss Interconnect (QPid Dispatch Router)
    http://qpid.apache.org/components/dispatch-router/

    A high-performance, lightweight AMQP 1.0 message router, written in C and built on Qpid Proton. It provides flexible and scalable interconnect between any AMQP endpoints, whether they be clients, brokers or other AMQP-enabled services
    
Docs and source:
- http://qpid.apache.org/releases/qpid-dispatch-0.7.0/book/book.html
- https://github.com/apache/qpid-dispatch

The below training was provided to the SA team internally. Its a good start for 10 to follow:
- https://github.com/rh-messaging/amq7-training

## Core take-aways
- The router does not take ownership of the message. It is up to the clients/brokers to acknowledge receipt of the payload.
- A network topology should be created when designing the router layout/setup.
- You can deploy 1 or many routers, depends on your topology.
- The router can be used in conjunction with AMQ7 broker or on its own. They are 2 different products that compliment each other but have no dependencies on each other - other than AMQP protocol.

## Concepts
    https://docs.google.com/a/redhat.com/presentation/d/1mu96BX6lmE808vBxDqYAQkqvoXcNvxi8hiyThQ-duTI/edit?usp=sharing

- Co-located router with AMQ7 broker; all connections to router, *"Connection concentrator"*
- Router in DMZ or public network which proxies to a broker on an internal network or bound to a private ip, *"Broker Isolation"*
- Separate the clients from the brokers by creating intelligent routers, *"Broker Virtualization"*
- Setup a router between AMQ6 and AMQ7 to ease migration by creating a bridge, *"Heterogeneous Broker Connectivity"*
- Replace Network of Brokers (NoB) with a Network of Routers. Simpler, reliable, easy to debug, *"Wide Area Message Bus"*
