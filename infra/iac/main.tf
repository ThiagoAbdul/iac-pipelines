module "image_repository"{
  source = "git::https://github.com/ThiagoAbdul/tf-templates.git//modules/image_repository"
  app_name = var.app_name
  namespace = var.namespace
  env = local.env
}