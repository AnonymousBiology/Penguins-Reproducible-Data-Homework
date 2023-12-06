# A function to make sure the column names are cleaned up, 
# eg lower case and snake case
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

# A function to remove any empty columns or rows
remove_empty_columns_rows <- function(penguins_data) {
  penguins_data %>%
    remove_empty(c("rows", "cols"))
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

# A function to remove non-essential columns for question 1
remove_non_essential_columns_culmen_mass <- function(penguins_data) {
  penguins_data %>%
    select(culmen_depth_mm, species, body_mass_g)
}

# A function to remove non-essential columns for question 1
remove_non_essential_columns_question_2 <- function(penguins_data) {
  penguins_data %>%
    select(culmen_depth_mm, species, body_mass_g, sex)
}

# A function to subset the species data to only show Adelie penguins 
subset_adelie_penguins <- function(data) {
  adelie_data <- data[data$species == "Adelie", ]
  return(adelie_data)
}

# A function to subset the penguins data set based on species
filter_by_species <- function(penguins_data, selected_species) {
  penguins_data %>%
    filter(species == selected_species)
}

# A function to filter the penguins data set based on island
filter_by_island <- function(penguins_data, island_name) {
  if (!"Island" %in% colnames(penguins_data)) {
    stop("Dataset does not contain 'Island' column.")
  }
  filtered_data <- subset(penguins_data, Island == island_name)
  
  return(filtered_data)
}



