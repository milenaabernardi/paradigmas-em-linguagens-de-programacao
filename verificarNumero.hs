main :: IO ()
main = do
    putStrLn "Digite um número:"
    numeroStr <- getLine
    let numero = read numeroStr :: Integer
    if numero `mod` 2 == 0
        then putStrLn "O número é par."
        else putStrLn "O número é ímpar."
