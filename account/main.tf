data "local_file" "config" {
  for_each = toset(var.environments)
  filename = "${path.module}/config/${each.key}.yaml"
}
