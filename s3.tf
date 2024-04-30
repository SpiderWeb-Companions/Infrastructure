resource "aws_s3_bucket" "spiderweb-bbd" {
  bucket = "spiderweb-bbd"

  tags = {
    Name          = "spiderweb-bbd"
    owner         = "adrian.hawkins@bbd.co.za"
    created-using = "terraform"
    
  }
}
