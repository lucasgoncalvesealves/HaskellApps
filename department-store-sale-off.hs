import Data.List
import System.IO

main :: IO ()

produtos = [
    ("Camiseta", "Azul", 100),
    ("Camiseta", "Verde", 120),
    ("Bermuda", "Jeans", 200),
    ("Boné", "Preto", 150)
    ]
    
camisetas = filter (\(a,_,_) -> a == "Camiseta") produtos
camisetas_desconto = map(\(_,_,a) -> a*3/5) camisetas
menor_preco (a:as) = foldr min a as
camiseta_menor_preco = menor_preco camisetas_desconto

main = print camiseta_menor_preco
