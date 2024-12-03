import Data.List (foldl')

atribuirPontos :: String -> Int
atribuirPontos evento
    | evento == "acertou alvo" = 10
    | evento == "bonus"        = 5
    | evento == "errou alvo"   = 0
    | otherwise                = 0  

calculaPontuacao :: [String] -> Int
calculaPontuacao eventos = 
    let pontuacoes = map atribuirPontos eventos     
        eventosValidos = filter (> 0) pontuacoes    
    in foldl' (+) 0 eventosValidos                    

main :: IO ()
main = do
    let eventos = ["acertou alvo", "errou alvo", "bonus", "bonus", "acertou alvo", "acertou alvo", "bonus", "errou alvo"]
    print ("Eventos: " ++ show eventos)
    let pontuacaoFinal = calculaPontuacao eventos
    print ("Pontuacao final: " ++ show pontuacaoFinal)
