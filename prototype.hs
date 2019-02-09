-- FILE: prototype.hs
-- AUTHOR: Nathan Robertson
-- PURPOSE: Prototypes a simple version of the cmd-kanban program

main = loop

loop = do
  putStr "> "
  input <- getLine
  putStrLn ((match input) input)

match "help" = help
match "version" = version
match "add" = add
match "rem" = rem
match "view" = view
match bad_cmd = defhandler

--eval unknowncmd args = (defhandler unknowncmd)

help args = "Help section for cmd-kanban."

version args = "Version command for cmd-kanban."

add args = "Add command"

rem args = "Remove command"

view args = "View command"

defhandler args = "Error: unrecognized command."

-- Keep reading input unless user enters quit.
--nextline "quit" = Nothing
--nextline cmd = Just loop