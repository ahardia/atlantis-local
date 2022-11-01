terraform {
  source = "../../modules/test/"

}

include {
  path = "${find_in_parent_folders()}"
}

# include {
#   path = "${find_in_parent_folders()}"
# }

inputs = {
  # ami = "ami-0fb653ca2d3203ac1"
  # type = "t2.micro"

  cidr_block = "0.0.0.0/16"
}
