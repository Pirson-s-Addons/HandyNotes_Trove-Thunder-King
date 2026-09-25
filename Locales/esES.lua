local ADDON_NAME, ns = ...

-- ==========================================
-- ESPAÑOL (esES / esMX)
-- ==========================================
local locale = GetLocale()
if locale ~= "esES" and locale ~= "esMX" then return end
local L = ns.L

L["Trove"] = "Tesoro"
L["Trove of the Thunder King"] = "Tesoro del Rey del Trueno"
