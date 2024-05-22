import Data.List
import System.IO

main :: IO ()

data Aluno = Aluno { nome :: String , notaP1 :: Double , notaP2 :: Double } deriving (Show)

alunos :: [Aluno]
alunos = [
        Aluno {nome = "Naiade", notaP1 = 8.0 , notaP2 = 9.0},
        Aluno {nome = "Talassa", notaP1 = 9.5 , notaP2 = 8.3},
        Aluno {nome = "Despina", notaP1 = 6.7 , notaP2 = 7.1},
        Aluno {nome = "Galateia", notaP1 = 7.9 , notaP2 = 9.0},
        Aluno {nome = "Larissa", notaP1 = 10.0 , notaP2 = 9.5},
        Aluno {nome = "Hipocampo", notaP1 = 7.0 , notaP2 = 7.5},
        Aluno {nome = "Proteu", notaP1 = 7.0 , notaP2 = 9.0},
        Aluno {nome = "Tritao", notaP1 = 10.0 , notaP2 = 10.0},
        Aluno {nome = "Nereida", notaP1 = 6.0 , notaP2 = 9.0},
        Aluno {nome = "Halimede", notaP1 = 8.5 , notaP2 = 9.0},
        Aluno {nome = "Sao", notaP1 = 8.5 , notaP2 = 9.5},
        Aluno {nome = "Laomedeia", notaP1 = 6.5 , notaP2 = 6.0},
        Aluno {nome = "Psamata", notaP1 = 6.0 , notaP2 = 5.0},
        Aluno {nome = "Neso", notaP1 = 5.0 , notaP2 = 5.5}
        ]

getMedia :: Aluno -> Double
getMedia aluno = (notaP1 aluno + notaP2 aluno) / 2

nomes = map nome alunos
medias = map getMedia alunos

pares = zip nomes medias
aprovados = map (\(a,_) -> a) (filter (\(_,a) -> a >= 7.0) pares)

mediaTurma = (foldr (+) 0 medias) / (fromIntegral (length medias))
numeroAprovados = length (filter (>= 7.0) medias)

reprovados = filter (< 7.0) medias
mediaReprovados = (foldr (+) 0 reprovados) / (fromIntegral (length reprovados))

main = print numeroAprovados
