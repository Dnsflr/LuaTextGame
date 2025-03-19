print("Welcome in game \n options to chose: \n -go left (left) \n -go right (right) \n -stay (stay) \n -go back (back)")

function Move(choice)
    if choice == "left" then
        print("Going left...")
    elseif choice == "right" then
        print("Going right...")
    elseif choice == "stay" then
        print("Staying...")
    elseif choice == "back" then
        print("Going back...")
    end
end

function CreateMap(width, height)
    map = {}
    for y = 1, height do
        map[y] = {}  -- Tworzymy nowy wiersz
        for x = 1, width do
            -- Każde pole zawiera tablicę z współrzędnymi x, y i losową wartością terenu
            map[y][x] = {x = x, y = y, terrain = math.random(1, 3)}  
        end
    end

    -- Wyświetlenie mapy w konsoli
    for y = 1, height do
        for x = 1, width do
            io.write("(" .. map[y][x].x .. "," .. map[y][x].y .. ")[" .. map[y][x].terrain .. "]  ")
        end
        print()  -- Nowa linia po każdym wierszu
    end
end

CreateMap(3,2)

--[[
while true do
    print("Your choice: ")
    local choice = io.read()
    Move(choice)
end
]]
