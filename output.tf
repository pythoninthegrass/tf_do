output "ip_address" {
  description = "IPv4 address of the droplet"
  value       = digitalocean_droplet.www-1.ipv4_address
}

output "price_hourly" {
  description = "The hourly price of the droplet"
  value       = digitalocean_droplet.www-1.price_hourly
}

output "price_monthly" {
  description = "The monthly price of the droplet"
  value       = digitalocean_droplet.www-1.price_monthly
}
