-- FILE: prototype.hs
-- AUTHOR: Nathan Robertson
-- PURPOSE: Prototypes a simple version of the cmd-kanban program

main = loop

loop = do
  putStr "> "
  input <- getLine
  putStrLn ((match (head (words input))) (tail (words input)))

match "help" = help
match "version" = version
match "add" = add
match "del" = del
match "view" = view
match bad_cmd = defhandler

--eval unknowncmd args = (defhandler unknowncmd)

help args = "Help section for cmd-kanban."

version args = "Version 0.01"

add args = "Add command"

del args = "Remove command"

view args = "View command"

defhandler args = "Error: unrecognized command."

-- Keep reading input unless user enters quit.
--nextline "quit" = Nothing
--nextline cmd = Just loop