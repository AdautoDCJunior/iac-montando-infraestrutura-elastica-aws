module "aws-dev" {
  source = "../../infra"
  regiao_aws = "us-east-2"
  instancia = "t2.micro"
  ami = "ami-0a695f0d95cefc163"
  chave = "iac-dev"
  grupo_seguranca = "dev"
}

output "ip" {
  value = module.aws-dev.ip_publico
}