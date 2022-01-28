resource "aws_db_instance" "rds_neo" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.22"
  instance_class       = "db.t3.micro"
  name                 = "mydb_neo"
  username             = "admin"
  password             = "cashew12345"
  parameter_group_name = "default.mysql5.7"
  multi_az             = true
  skip_final_snapshot  = true
     port                            = 3306
     db_subnet_group_name = var.out_rdssubnetgroup
     vpc_security_group_ids = [var.rdsmysqlsg]
     tags                            = {
            name                    = "MySQL neo"
    }

}