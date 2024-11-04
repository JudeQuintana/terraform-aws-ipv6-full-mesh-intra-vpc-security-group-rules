/*
* # IPv6 Full Mesh Intra VPC Secuity Group Rules Description
* - This allowing inbound protocols across regions based on rules (ie ssh, icmp, etc) that
*   were used in each ipv6_intra_vpc_security_group_rules modules for all vpcs in each region while in a TGW full mesh configuration.
* - Rule sets for one, two and three Intra VPC Security Group Rules should be the same. also enforced by validation
*
* `v1.0.0`
* - ipv6 network cidrs
* - ipv6 secondary cidrs
*
* `v1.0.0`
* ```
* module "ipv6_full_mesh_intra_vpc_security_group_rules" {
*   source  = "JudeQuintana/ipv6-full-mesh-intra-vpc-security-group-rules/aws"
*   version = "1.0.0"
*
*   providers = {
*     aws.one   = aws.use1
*     aws.two   = aws.use2
*     aws.three = aws.usw2
*   }
*
*   env_prefix       = var.env_prefix
*   region_az_labels = var.region_az_labels
*   ipv6_full_mesh_intra_vpc_security_group_rules = {
*     one = {
*       ipv6_intra_vpc_security_group_rules = module.ipv6_intra_vpc_security_group_rules_use1
*     }
*     two = {
*       ipv6_intra_vpc_security_group_rules = module.ipv6_intra_vpc_security_group_rules_use2
*     }
*     three = {
*       ipv6_intra_vpc_security_group_rules = module.ipv6_intra_vpc_security_group_rules_usw2
*     }
*   }
* }
* ```
*
*/

