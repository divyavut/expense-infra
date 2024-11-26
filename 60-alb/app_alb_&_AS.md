#### Application Load Balancer
1. Here we use internal scheme to create a application load balancer
2. Requests come from user to Load balancer, lb forward it to listener. listener listens on port, protocol and  forward the reqeust to target group  based on rules that we configured.


#### How Auto scaling works when there is a change in the code (if infra is not  setup)
1. Create a Instance
2. Configure the ec2 using ansible pull
3. Existing instance will be stopped (this process will happen when new changes comes in code)
4. Take AMI
3. Delete AMI
4. Launch Template with updated version ---> with AMI
5. Auto scaling group ---> 1. launch template, 2. target group (new instacne will spin up)

#### How Auto scaling works when there is a change in the code (if infra is already setup)
1. Existing instance will be stopped 
2. Take AMI
3. Delete AMI
4. Launch Template with updated version ---> with AMI
5. Auto scaling group ---> 1. launch template, 2. target group (new instacne will spin up)




