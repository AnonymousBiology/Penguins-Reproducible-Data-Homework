# Linear regression between culmen depth and body mass 
create_linear_model_culmen_depth_body_mass <- function(data) {
  model <- lm(body_mass_g ~ culmen_depth_mm, data = data)
  return(model)
}