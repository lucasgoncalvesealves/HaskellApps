import Data.List
import System.IO

main :: IO ()

pessoas = [
    ("Homem", 40, 110.0, 1.77, True, 0),
    ("Mulher", 30, 80.0, 1.65, True, 0),
    ("Homem", 30, 75.0, 1.75, True, 0),
    ("Mulher", 40, 60.0, 1.60, True, 0)
    ]
    
imc = map(\(_,_,c,d,_,_) -> c/(d**2)) pessoas
semnocao = filter (\(_,_,_,_,e,f) -> (f > 27) && (e == True)) pessoas
comprimento = foldr (\ _ -> (+1)) 0
pessoas_length = comprimento pessoas
semnocao_length = comprimento semnocao

main = print pessoas