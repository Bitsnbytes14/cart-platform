resource "local_file" "cart_endpoint" {
  filename = "${path.module}/cart_endpoint.txt"
  content  = "PORT=30093\n"
}
