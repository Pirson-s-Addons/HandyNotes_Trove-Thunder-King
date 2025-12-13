local addonName, ns = ...

ns.L = ns.L or {}

local L = {}

if ns.locale == "deDE" then
    L["Trove"] = "Schatztruhe"
    L["Trove of the Thunder King"] = "Truhe des Donnerkönigs"
elseif ns.locale == "esES" or ns.locale == "esMX" then
    L["Trove"] = "Tesoro"
    L["Trove of the Thunder King"] = "Tesoro del Rey del Trueno"
elseif ns.locale == "frFR" then
    L["Trove"] = "Trésor"
    L["Trove of the Thunder King"] = "Trésor du Roi Tonnerre"
elseif ns.locale == "itIT" then
    L["Trove"] = "Tesoro"
    L["Trove of the Thunder King"] = "Tesoro del Re del Tuono"
elseif ns.locale == "koKR" then
    L["Trove"] = "보물 상자"
    L["Trove of the Thunder King"] = "번개의 왕 보물"
elseif ns.locale == "ptBR" or ns.locale == "ptPT" then
    L["Trove"] = "Tesouro"
    L["Trove of the Thunder King"] = "Tesouro do Rei do Trovão"
elseif ns.locale == "ruRU" then
    L["Trove"] = "Сундук"
    L["Trove of the Thunder King"] = "Сундук Короля Грома"
elseif ns.locale == "zhCN" then
    L["Trove"] = "宝箱"
    L["Trove of the Thunder King"] = "雷王宝藏"
elseif ns.locale == "zhTW" then
    L["Trove"] = "寶箱"
    L["Trove of the Thunder King"] = "雷王寶藏"
else
    L["Trove"] = "Trove"
    L["Trove of the Thunder King"] = "Trove of the Thunder King"
end

for k, v in pairs(L) do
    ns.L[k] = v
end
