resource "aws_key_pair" "tf_key" {
  key_name   = "tf_key"
  public_key = tls_private_key.rsa.public_key_openssh
}
resource "tls_private_key" "rsa" {
  algorithm   = "RSA"
  rsa_bits    =  "4096"
}

resource "local_file" "my_key" {
  content = tls_private_key.rsa.private_key_pem
  filename = "tf_key.pem"
}
