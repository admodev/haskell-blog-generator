main =
  putStrLn myhtml

// Typedefs
makeHtml :: String -> String -> String
title_ :: String -> String
head_ :: String -> String
html_ :: String -> String
body_ :: String -> String
el :: String -> String -> String

myhtml =
  makeHtml "My page title" "My page content"

makeHtml title content =
  html_ 
    (head_ 
      (title_ title) <> body_ content)

title_ content =
  "<title>" <> content <> "</title>"

head_ content =
  "<head>" <> content <> "</head>"

html_ = el "html"

body_ = el "body"

el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

