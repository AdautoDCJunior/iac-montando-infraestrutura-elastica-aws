module "aws-dev" {
  source = "../../infra"
  regiao_aws = "us-east-1"
  instancia = "t2.micro"
  ami = "ami-0aa2b7722dc1b5612"
  chave = "iac-prod"
  grupo_seguranca = "prod"
}

output "ip" {
  value = module.aws-dev.ip_publico
}