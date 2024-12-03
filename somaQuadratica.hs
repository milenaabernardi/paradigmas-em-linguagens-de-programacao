main :: IO ()
main = do
    let quadrado :: Integer -> Integer
        quadrado x = x * x
    putStrLn "Digite um número:"
    numeroStr <- getLine
    let numero = read numeroStr :: Integer
    putStrLn ("O quadrado do número é: " ++ show (quadrado numero))
