local addonName, ns = ...

local HandyNotes = _G.HandyNotes
local LibStub = _G.LibStub
local GameTooltip = _G.GameTooltip
local UIParent = _G.UIParent

ns.locale = GetLocale()

ns.defaults = {
    profile = {
        iconScale = 1.2,
        iconAlpha = 1.0,
    }
}

ns.L = ns.L or setmetatable({}, {
    __index = function(t, k)
        return k
    end
})


local pluginHandler = {}

function pluginHandler:OnEnter(mapID, coord)
    if self:GetCenter() > UIParent:GetCenter() then
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
    else
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    end

    GameTooltip:SetText(ns.L["Trove of the Thunder King"])
    GameTooltip:AddLine(ns.L["Trove"], 1, 1, 1)

    local x, y = HandyNotes:getXY(coord)
    GameTooltip:AddLine(
        string.format("(%.2f, %.2f)", x * 100, y * 100),
        0.8, 0.8, 0.8
    )

    GameTooltip:Show()
end

function pluginHandler:OnLeave()
    GameTooltip:Hide()
end


local function iterator(t, prev)
    if not t then return end

    local coord = next(t, prev)
    if coord then
        return coord,
            nil,
            "Interface\\AddOns\\HandyNotes_Trove-Thunder-King\\img\\logo-hn-ttk",
            ns.db.iconScale,
            ns.db.iconAlpha
    end
end

function pluginHandler:GetNodes2(mapID)
    return iterator, ns.points[mapID]
end


local addon = LibStub("AceAddon-3.0"):NewAddon(
    "HandyNotes_TroveThunderKing",
    "AceEvent-3.0"
)

function addon:OnEnable()
    ns.db = LibStub("AceDB-3.0"):New(
        "HandyNotes_TroveThunderKingDB",
        ns.defaults,
        "Default"
    ).profile

    HandyNotes:RegisterPluginDB(
        "TroveThunderKing",
        pluginHandler,
        {
            type = "group",
            name = "Trove of the Thunder King",
            desc = "Trove of the Thunder King treasures",
            args = {}
        }
    )

    self:SendMessage("HandyNotes_NotifyUpdate", "Trove of the Thunder King")
end
