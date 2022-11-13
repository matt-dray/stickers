# Hex sticker: {quartostamp}
# Matt Dray, Aug 2022

# Learn how to use {magick} and {bunny} for making hex stickeres
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Font installed locally via https://webonastick.com/fonts/routed-gothic/
my_font <- "Routed Gothic"

# Read flower stamp emoji image
# Source: openmoji.com, CC BY-SA 4.0
stamp <- image_read_svg("img/stamp.svg", width  = 1700, height = 1700)

# Set colours
main_col <- "#000000"
red_col  <- "#D32B22"
blue_col <- "#729fd5"

# Build sticker
quartostamp_hex <-
  image_canvas_hex(
    border_color = blue_col,
    border_size = 5
  ) |>
  image_compose(stamp, gravity = "center") |> 
  image_annotate(
    text = "{quartostamp}",
    font = my_font,
    size = 50,
    color = red_col,
    gravity = "center",
    location = "-370-630",
    degrees = 330
  ) |> 
  image_annotate(
    text = "matt-dray.github.io/quartostamp",
    font = my_font,
    size = 50,
    color = red_col,
    gravity = "center",
    location = "+370+630",
    degrees = 330
  )

# Write the image to disk
image_write(quartostamp_hex, "output/quartostamp_hex.png")
