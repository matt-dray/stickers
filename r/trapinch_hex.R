# Hex sticker: {trapinch}
# Matt Dray, Jan 2023

# Learn how to use {magick} and {bunny} for making hex stickers
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Font installed locally via https://www.dafont.com/pkmn-rbygsc.font
my_font <- "PKMN RBYGSC"

# Set colours
main_col <- "#DB9B7B"
accent_col <- "#CFD2D9"
text_col <- "#000000"

# Read 'trapinch 'image placeholder' image
# Made using {pixeltrix} (github.com/matt-dray/pixeltrix)
img <- image_read("img/trapinch.png") %>% 
  image_resize("1610x") %>% 
  image_transparent(color = "#DB9B7B", fuzz = 20)

# Build sticker
trapinch_hex <- 
  image_canvas_hex(  # add hex canvas
    fill_color = main_col,
    border_color = accent_col,
    border_size = 5
  ) %>% 
  image_compose(  # add trapinch mouth
    img,
    gravity = "center",
    offset = "+0-200"
  ) %>%
  image_annotate(  # add text
    text = "trapinch",
    font = my_font,
    size = 200,
    color = text_col,
    gravity = "center",
    location = "+0+200"
  ) %>% 
  image_annotate(  # add text
    text = "R interface to PokéAPI",
    font = my_font,
    size = 70,
    color = text_col,
    gravity = "center",
    location = "+0+400"
  )

# Write the image to disk
image_write(trapinch_hex, "output/trapinch_hex.png")
  
  