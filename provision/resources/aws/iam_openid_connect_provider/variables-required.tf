variable "thumbprint_list" {
  description = "A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s)."
  type        = list(string)
}

variable "url" {
  description = "The URL of the identity provider. Corresponds to the iss claim."
  type        = string
}

variable "name" {
  description = "Provider friendly name. Prefer kebab string."
  type        = string
}
