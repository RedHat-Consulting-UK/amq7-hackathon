# EnMasseProject
    https://enmasseproject.github.io/

    The EnMasse project that aims to create, as a community, an open source messaging platform that runs on Kubernetes and OpenShift, using open standards like AMQP and MQTT etc. EnMasse is based on other open source projects like Apache ActiveMQ Artemis, Apache Qpid Dispatch Router and finally the Vert.x toolkit.

Docs and source:
- https://enmasseproject.github.io/
- https://github.com/EnMasseProject

## Quick deploy on OCP
If you've got OCP/minishift installed, you can follow the below:

- git clone https://github.com/EnMasseProject/enmasse.git
- cd enmasse/scripts
- ./enmasse-deploy.sh

There are several templates that can be used for different scenarios:
- https://github.com/EnMasseProject/enmasse/tree/master/generated
