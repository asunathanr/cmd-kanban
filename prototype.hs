-- FILE: prototype.hs
-- AUTHOR: Nathan Robertson
-- PURPOSE: Prototypes a simple version of the cmd-kanban program

main = loop
    

loop = do
  putStr "> "
  input <- getLine
  return (eval input)

eval "help" = help
eval unknowncmd = defhandler

help = "Help section for cmd-kanban."

defhandler = "Error: unrecognized command."

-- Keep reading input unless user enters quit.
--nextline "quit" = Nothing
--nextline cmd = Just loop