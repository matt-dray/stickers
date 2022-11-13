# Hex sticker: {quartostamp}
# Matt Dray, Aug 2022

# Learn how to use {magick} and {bunny} for making hex stickeres
# https://www.ddrive.no/post/making-hex-and-twittercard-with-bunny-and-magick/

# Attach packages 
# Note that {ggforce} should be installed
library(magick) # CRAN v2.3
library(bunny)  # [github::dmi3kno/bunny] v0.0.0.9000

# Font installed locally via https://google-webfonts-helper.herokuapp.com/fonts
my_font <- "Dosis ExtraLight"

# Read chatbox image
# Source: ionicons.com, released under MIT license (https://ionicons.com/)
stamp <- image_read_svg(
  "img/stamp.svg",
  width  = 1600,
  height = 1600
)

# Set colours
main_col <- "#000000"
# accent_col <- "#D32B22"
accent_col <- "#729fd5"

# Build sticker
quartostamp_hex <-
  image_canvas_hex(  # add hex canvas
    border_color = accent_col,
    border_size = 5
  ) %>% 
  image_compose(  # add svg image
    stamp,
    gravity = "center",
    offset = "+0+50"
  ) %>% 
  image_annotate(  # add package name
    text = "quartostamp",
    font = my_font,
    size = 450,
    color = accent_col,
    gravity = "center",
    location = "+0-100"
  ) %>% 
  image_annotate(  # add angled url in bottom right
    "matt-dray.github.io/quartostamp",
    font = my_font,
    size = 90,
    color = accent_col,
    gravity = "center",
    location = "+370+630",
    degrees = 330
  )

# Write the image to disk
image_write(quartostamp_hex, "output/quartostamp_hex.png")
