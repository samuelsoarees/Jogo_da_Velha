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


function tabuleiro:main()
--[[Esse metodo é o executavel]]










print(tabuleiro:desenharTabuleiro())



repeat 





until(vencedor~=true)

end

print(tabuleiro:main())