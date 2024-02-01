# terraform
# Concept 1

1.  Create, modify, and destroy resources.
  
          Create a single Terraform script called network-main.tf containing the following:
              Provider and Terraform blocks
              Code to build the required infrastructure
          Validate, deploy, expand, analyze, and destroy infrastructure
    
2.  Parametrize Section 1 configuration

          Move resource values to a separate file as variable blocks
          Update main Terraform file to use variables
          Validate, deploy, expand, analyze, and destroy infrastructur
    
3.  Expand the parametrized configuration from Section 2 and add a Linux virtual machine to the landscape

          Use configuration from Section 2
          Define resource and variable blocks for virtual machine resources
          Validate, deploy, expand, analyze, and destroy infrastructure

# Concept 2

1.  Define and consume local values
   
          Define a locals block to assign tags to resources
          Validate, deploy, expand, analyze, and destroy infrastructur
    
2.  Define output blocks

          Define output blocks to display values
          Validate, deploy, expand, analyze, and destroy infrastructure  
   
3.  Add explicit lifecycle rules and dependencies

          Define lifecycle rules to prevent updates and resource deletions
          Define explicit dependency
          Validate, deploy, expand, analyze, and destroy infrastructure


  
# Concept 3

1.  Create multiple identical Linux VMs using count in one availability set
   
          Create parametrized, scalable Terraform code to build any number of identical resources using the count meta-argument
          Deploy all virtual machines in a single availability set
          Validate, deploy, expand, analyze, and destroy infrastructure
        
3.  Create multiple distinct Windows VMs using for_each in another availability set

          Create parametrized, scalable Terraform scripts to build any number of distinct resources using the for_each meta-argument
          Deploy all virtual machines in a single availability set
          Validate, deploy, expand, analyze, and destroy infrastructure
