 # terraform_aws
 ```
Create VPC 
	neo_vpc
	
Create IG
	aws_internet_gateway
```
```
Create Subnets
		aws_subnet
			publicsubnet1
			publicsubnet2
			privatesubnet3
			privatesubnet4
		aws_db_subnet_group
			rdsubnetgroup
		
Create Route Table:
		Public RT
			aws_route_table
			aws_route_table_association
		Private RT
			aws_route_table
			aws_route_table_association
		
Create the NAT Gateway
	aws_eip
	aws_nat_gateway
```

```
Create Security Grouo
	bastion_ssh_all_sg_neo
	bastion_ssh_from_nat
	external_alb_sg
	internal_alb_sg
	web_outbound_sg
	web_from_nat_prv_sg
	databasesg

Create Elastic Load Balancer: 
	Web-Application-Load-Balancer
	aws_lb_target_group
	aws_lb_listener	
	App-Network-Load-Balancer
	internaltg
	internal_listener_app

config: 

	aws_launch_configuration
		for app and web
	user_data
	aws_autoscaling_group
		for app and web
	
aws_db_instance
```
 
