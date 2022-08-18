# -----------------------Practicing Reprex------------------------#


## NOT A REPREX
library(tidyverse)
library(palmerpenguins)


penguins |> 
  select(species, body_mass_g, flipper_length_mm, year) |> 
  filter(species == "Chinstrap") |> 
  str_to_lower(species) |> 
  group_by(island) |> 
  summarize(mean(body_mass_g, na.rm = TRUE), mean(flipper_length_mm, na.rm = TRUE))


## MAKING A REPREX
library(tidyverse)

warpbreaks |> 
  str_to_lower(wool)

## FIXING REPREX
library(tidyverse)

warpbreaks |> 
  mutate(wool = str_to_lower(wool))

## REPREX WITH A SYNTHESIZED DATA FRAME

library(tidyverse)

tr <- tribble(~A, ~B, ~C,
               "A", "B", "C",
               "B", "C", "D")
tr_lower <- tr |> 
  mutate(A = str_to_lower(A))

tr_lower

