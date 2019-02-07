-- FILE: prototype.hs
-- AUTHOR: Nathan Robertson
-- PURPOSE: Prototypes a simple version of the cmd-kanban program

main = loop
    

loop = do
  putStr "> "
  input <- getLine
  putStrLn input