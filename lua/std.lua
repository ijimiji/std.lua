local export = {}

local function export.min(a, b)
    if a > b then
        return b
    end
    return a
end

local function export.max(a, b)
    if a > b then
        return a
    end
    return b
end

return export
