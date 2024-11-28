### Database
#### stateful vs stateless
- stateful --> which has state --> i.e data ---> database
- stateless---> which don't have state ---> backend/frontend
### Database resposiblities
- backup --> daily backup
- restore --> test it.
- data replication --> High availability
- DB1 is connected to to appilcation --> In hyd region
- Db2 is not connected to application, but data will be replicated from DB1 ---> Db2 in mumbai region
- Storage incrementation
- load balancing 

#### RDS
- RDS is a relational database which provide load balancing, auto storage incrementation,backups/snapshot, data replication.

- when RDS is deleted a Final Snapshot will be created and attached it to the vpc.

####  Understanding the infra personally
- project infra : vpc,sg,bastion,db,lb
- application infra: ec2 insatnces, target group


