import Data.List
import System.IO

main :: IO ()

usuario = [ 
    [10, 20, 30], 
    [15, 25, 35, 45], 
    [20, 40, 60, 80, 100], 
    [150, 300] 
    ]

cashback = foldr (+) 0 (concat ((map.map) (/100) usuario))
consulta1 = (map.filter) (>=100) usuario
consulta2 = filter (>=100) (map sum usuario)
calculo = foldr (+) 0 (concat usuario)
fatura = if calculo < 5000 then calculo + 49 else calculo

main = print fatura
