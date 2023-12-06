# A function to make sure the column names are cleaned up, 
clean_column_names <- function(penguins_data) {
  penguins_data %>%
    clean_names()
}

# A function to make sure the species names are shortened
shorten_species <- function(penguins_data) {
  penguins_data %>%
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}

# A function to remove empty rows based on culmen depth 
remove_empty_columns_rows_culmen_depth <- function(penguins_data) {
  penguins_data %>%
    filter(!is.na(culmen_depth_mm)) %>%
    remove_empty(c("cols"))
}

# A function to remove empty rows based on body mass 
remove_empty_columns_rows_mass <- function(penguins_data) {
  penguins_data %>%
    filter(!is.na(body_mass_g)) %>%
    remove_empty(c("cols"))
}

# A function to remove empty rows based on sex
remove_empty_columns_rows_sex <- function(penguins_data) {
  penguins_data %>%
    filter(!is.na(sex)) %>%
    remove_empty(c("cols"))
}

# A function to remove all columns apart from species, body mass and culmen depth 
remove_non_essential_columns_culmen_mass <- function(penguins_data) {
  penguins_data %>%
    select(culmen_depth_mm, species, body_mass_g)
}

# A function to subset the species data to only show Adelie penguins 
subset_adelie_penguins <- function(data) {
  adelie_data <- data[data$species == "Adelie", ]
  return(adelie_data)
}





