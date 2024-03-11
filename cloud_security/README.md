Using HashiCorp Terraform, I created the following: 


Created an IAM role
Created a granular appropriate that are used for ipolicy for my task. 
Associated this role with the created role. 
Using this role, created some AWS resources that are going to be used in my infrastructure. 
Disassociated the policy from the role. 
Removed the role. 


At the end, I have a running infrastructure with my AWS resources and no method of modifying them except the AWS root account. 
