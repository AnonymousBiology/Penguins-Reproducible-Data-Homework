# Plots for question 1

# Scatter plot for relationship between culmen depth and body mass 
create_penguins_bad_plot <- function(data) {
  ggplot(data, aes(x = culmen_depth_mm, y = body_mass_g, color = ..y..)) +
    geom_point(size = 0.55, alpha = 0.5) +
    geom_smooth(method = "lm", se = FALSE, aes(color = ..y..)) +
    scale_color_gradient(low = "red", high = "green") +
    labs(
      title = "Scatter Plot of Body Mass vs Culmen Depth in Palmer Penguins",
      x = "Culmen Depth (mm)",
      y = "Body Mass (g)"
    ) + 
    theme_linedraw() +
    theme_minimal() + 
    theme(legend.position = "none", 
          panel.background = element_rect(fill = "#F3F6E5", color = NA))
}

# Scatter plot for relationship between culmen depth and body mass, showing the individual linear relationships when separated by species
create_penguins_better_plot <- function(data) {
  color_palette <- viridis_pal()(3)
  ggplot(data, aes(x = culmen_depth_mm, y = body_mass_g, color = species)) +
    geom_point(size = 1.6, alpha = 0.5) +
    geom_smooth(method = "lm", se = FALSE, aes(group = species, color = species)) +
    labs(
      title = "Scatter Plot of Body Mass vs Culmen Depth by Species",
      x = "Culmen Depth (mm)",
      y = "Body Mass (g)"
    ) +
    scale_color_manual(values = setNames(color_palette, c("Adelie", "Chinstrap", "Gentoo"))) +
    theme_minimal()
}

# Plots for question 2

# Function to create scatter plot for teh relationship between culmen depth and body mass in just Adelie penguins 
create_adelie_culmen_depth_body_mass_scatter_plot <- function(data) {
  plot <- ggplot(data, aes(x = culmen_depth_mm, y = body_mass_g, color = sex)) +
    geom_point(color = viridis(1), alpha = 0.5, size = 2) +
    labs(title = "Scatter Plot of Culmen Depth vs. Body Mass",
         x = "Culmen Depth (mm)",
         y = "Body Mass (g)") +
    theme_bw()
  
  return(plot)
}

# Function to create scatter plot for teh relationship between culmen depth and body mass in just Adelie penguins 
create_adelie_culmen_depth_body_mass_scatter_plot_regression <- function(data) {
  plot <- ggplot(data, aes(x = culmen_depth_mm, y = body_mass_g, color = sex)) +
    geom_point(color = viridis(1), alpha = 0.5, size = 2) +
    geom_smooth(method = "lm", se = TRUE, color = viridis(1)) +
    labs(title = "Scatter Plot of Culmen Depth vs. Body Mass",
         x = "Culmen Depth (mm)",
         y = "Body Mass (g)") +
    theme_bw()
  
  return(plot)
}









