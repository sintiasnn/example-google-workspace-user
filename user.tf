module "your_user" {
  source = "git::https://github.com/sintiasnn/google-workspace-user-module.git//google-workspace-users"
  name = [{
    given_name  = "your_given_name"
    family_name = "your_family_name"
  }]

  emails = [{
    address = "yourname@yourdomain.id"
    primary = true
    type    = "work"
  }]

  primary_email  = "yourname@yourdomain.id"
  password       = "your_password"
  recovery_phone = "00122344556677"
  org_unit_path  = "your_org_unit_path"

  organizations = [{
    type        = "work"
    cost_center = "Your_cost_center"
    department  = "your_departement"
    description = "optional"
    primary     = true
    title       = "your_title"
  }]

  relations = [{
    type  = "manager"
    value = "yourmanagername@yourdomain.id"
  }]

  locations = [{
    area        = "desk"
    building_id = "Your_building_id"
    floor_name  = "your_floor"
    type        = "desk"
  }]

  change_password_at_next_login = true
  suspended                     = true
}
