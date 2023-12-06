save_penguins_bad_plot_svg <- function() {
  ggsave("Figures/penguin_bad_plot.svg", plot = penguins_bad_plot, width = 6, height = 6.8)
}

save_penguins_bad_plot_png <- function() {
ggsave("Figures/penguin_bad_plot.png", plot = penguins_bad_plot, width = 6, height = 6.8, dpi = 600)
}

save_penguins_better_plot_svg <- function() {
  ggsave("Figures/penguin_better_plot.svg", plot = penguins_better_plot, width = 6, height = 6)
}

save_penguins_better_plot_png <- function() {
  ggsave("Figures/penguin_better_plot.png", plot = penguins_better_plot, width = 6, height = 6, dpi = 600)
}

save_adelie_culmen_depth_body_mass_plot_svg <- function() {
  ggsave("Figures/adelie_culmen_depth_body_mass_plot.svg", plot = adelie_culmen_depth_body_mass_plot, width = 6, height = 6)
}

save_adelie_culmen_depth_body_mass_plot_png <- function() {
  ggsave("Figures/adelie_culmen_depth_body_mass_plot.png", plot = adelie_culmen_depth_body_mass_plot, width = 6, height = 6, dpi = 600)
}

save_adelie_culmen_depth_body_mass_plot_regression_svg <- function() {
  ggsave("Figures/adelie_culmen_depth_body_mass_plot_regression.svg", plot = adelie_culmen_depth_body_mass_plot_regression, width = 6, height = 6)
}

save_adelie_culmen_depth_body_mass_plot_regression_png <- function() {
  ggsave("Figures/adelie_culmen_depth_body_mass_plot_regression.png", plot = adelie_culmen_depth_body_mass_plot_regression, width = 6, height = 6, dpi = 600)
}