output "rendered" {
  value = data.template_file.domain.rendered
}

output "fqdn" {
  value = element(
    compact(
      concat(
        aws_route53_record.dns_record.*.fqdn,
        aws_route53_record.alb_alias.*.fqdn,
      ),
    ),
    0,
  )
}
