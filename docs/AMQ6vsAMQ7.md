# Bullet point differences
    http://activemq.apache.org/artemis/migration/
    
- No more TCP vs NIO, everything is NIO.
- KahaDB is dead. Long live "append-only message journal".
- Journal is memory based (written to disk only when required), so depending on use case, settings might need to be tweaked but obviously, will have a performance hit.
- CLI to create broker; which lends its self to Ansible quite well.
- transportConnectors (AMQ6) vs acceptors (AMQ7)
- Topics is dead. Long live multi-cast queues - https://github.com/apache/activemq-artemis/blob/master/docs/user-manual/en/address-model.md
- Load balance via a single queue - think sharding
- Fully Qualified Queue names (FQQN) - seems the way to go for queues.
- Pre-create in config to fully control addresses.
- Filter messages at queue and consumer level.
- 
