output "private_key" {
  value       = tls_private_key.example_ssh
  description = "Content of the generated private key"
  sensitive   = true
}