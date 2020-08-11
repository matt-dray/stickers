library(magick)
library(bunny)

my_font <- "Dosis ExtraLight"

box_filled <- image_read_svg(
  "img/chatbox.svg",
  width = 1450
)

image_canvas_hex(
  fill_color = "#00FFFF",
  border_color = "#000000",
  border_size = 5
) %>% 
  image_compose(
    box_filled,
    gravity = "center",
    offset = "+0+50"
  ) %>% 
  image_annotate(
    text = "r2eng",
    font = my_font,
    size = 450,
    color = "#00FFFF",
    gravity = "center",
    location = "+0-160"
  ) %>% 
  image_annotate(
    # "matt-dray.github.io/r2eng",
    "m a t t - d r a y . g i t h u b . i o / r 2 e n g",
    font = my_font,
    size = 58,
    color = "#00FFFF",
    gravity = "center",
    location = "+0+250"
  )

# image_annotate(
#   "m a t t - d r a y . g i t h u b . i o / r 2 e n g",
#   font = my_font,
#   size = 58,
#   color = "#000000",
#   gravity = "center",
#   location = "+370+650",
#   degrees = 330
# )