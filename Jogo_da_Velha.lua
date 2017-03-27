tabuleiro = {	
	
	{" "," "," "}, 
	{" "," "," "}, 
	{" "," "," "}
}


function tabuleiro:desenharTabuleiro()
--[[Esse metodo pega uma e desenhar um tabuleiro nela]]
local visualizaTab = ""

for i = 1, #tabuleiro, 1 do

	for s=1, 3 , 1 do
	
	if s == 3 then
	visualizaTab = visualizaTab.. tabuleiro[i][s]
	
	else
	
	
	visualizaTab = visualizaTab.. tabuleiro[i][s] .. "|"
	
	end
	
	end
	
	visualizaTab = visualizaTab .." ".. i
	
	if i ~= 3 then 
	
	visualizaTab =  visualizaTab .. "\n" .. "-----" .. "\n"
	
	end
	
	

end

visualizaTab = visualizaTab .. "\n" .. "1" .. " 2" .. " 3"


return visualizaTab

end


function tabuleiro:vencedor()
	
	--[[Esse metodo verifica se há algum vencedor]]
	
	
	
	if tabuleiro[2][2] =="x" or tabuleiro[2][2] =="o" then
	
		--[[Verifica se a segunda linha na vertical é um .equals()]]
		if tabuleiro[1][2] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][2] then
	
			return true
	
		end
	
		--[[Verifica se a segunda linha na horizontal é um .equals()]]
	
		if tabuleiro[2][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[2][3] then
	
			return true
	
		end
	
		--[[Verifica se a diagonal em formato de \ é um .equals()]]
	
		if tabuleiro[1][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][3] then
	
			return true
		
		end
	
		--[[Verifica se a diagonal em formato de / é um .equals()]]
	
		if tabuleiro[3][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[1][3] then 
	
			return true
		
		end
	
	end
	
	
	if tabuleiro[1][1] == "x" or tabuleiro[1][1] == "o" then
	--[[Verifica se a primeira linha na horizontal é um .equals()]]
	
		if tabuleiro[1][1] == tabuleiro[1][2] and tabuleiro[1][2] == tabuleiro[1][3] then
	
			return true
	
		end
	
	
		--[[Verifica se a primeira linha na vertical é um .equals()]]
		if tabuleiro[1][1] == tabuleiro[2][1] and tabuleiro[2][1] == tabuleiro[3][1] then
		
			return true
	
		end
	end
	
	
	
	if tabuleiro[3][3] == "x" or tabuleiro[3][3] == "o" then
	
		--[[Verifica se a terceira linha na vertical é um .equals()]]
		if tabuleiro[1][3] == tabuleiro[2][3] and tabuleiro[2][3] == tabuleiro[3][3] then
	
			return true
	
		end
	
		--[[Verifica se a terceira linha na horizontal é um .equals()]]
		if tabuleiro[3][1] == tabuleiro[3][2] and tabuleiro[3][2] == tabuleiro[3][3] then
	
			return true
	
		end
	end
	
	
	return false
	
end


function tabuleiro:empate()
	local cont = 0 
	
	for i=1 , #tabuleiro , 1 do
	
		for	s = 1 , 3 , 1 do
		
		if tabuleiro[i][s] == "x"  or tabuleiro[i][s] == "o"  then
		
			cont = cont + 1 
			
		end
		
		
		
		end

	end
	
	if(cont == 9) then
	
		return true
	
	else 
	
		return false
	
	end
	
end

function tabuleiro:main()
--[[Esse metodo é o executavel]]

 local	contador = 1;

print(tabuleiro:desenharTabuleiro())

repeat 
	
	local saida = false
	
	
	repeat
		local b =  false
		
		print("Digite a linha:")
	
		linha = io.read("number")
	
		print("Digite a coluna")
	
		coluna = io.read("number")
		
		if linha > 3 or linha < 1 or coluna > 3 or coluna < 1  then
		print("Linhas ou colunas invalidas, digite novamente:")
		
		else if tabuleiro[linha][coluna] ==  "x" or tabuleiro[linha][coluna] ==  "o" then
		print("Linhas ou colunas já preenchidas, digite novamente:")
		
		else
		
		b = true
		
		end
		end

	until(b==true)
		
		
		
		if(contador%2 == 0) then
		
		tabuleiro[linha][coluna] = "o"
	
		else
		
		tabuleiro[linha][coluna] = "x"
		
		end
	
	contador = contador + 1
	
	if tabuleiro:vencedor()== true or tabuleiro:empate()== true  then
	
	saida = true
	
	end
	
	
	print(tabuleiro:desenharTabuleiro())
until(saida==true)

end

tabuleiro:main()