module "image_repository"{
  source = "git::https://github.com/ThiagoAbdul/tf-templates.git//modules/image_repository"
  app_name = "app-demo"
  namespace = "pipelines"
  env = local.env
}