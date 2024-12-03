main :: IO ()
main = do
    putStrLn "Digite o primeiro número:"
    numero1Str <- getLine
    let numero1 = read numero1Str :: Integer
    putStrLn "Digite o segundo número:"
    numero2Str <- getLine
    let numero2 = read numero2Str :: Integer
    let soma = numero1 + numero2
    putStrLn ("A soma dos dois números é: " ++ show soma)
