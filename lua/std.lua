local export = {}

function export.min(a, b)
    if a > b then
        return b
    end
    return a
end

function export.max(a, b)
    if a > b then
        return a
    end
    return b
end

function export.strsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end

function export.strjoin(list, delimiter)
    local len = #list
    if len == 0 then
        return "" 
    end
    local string = list[1]
    for i = 2, len do 
        string = string .. delimiter .. list[i] 
    end
    return string
end

return export
