--[[pod_format="raw",created="2025-10-14 11:40:50",modified="2025-10-14 11:40:50",revision=0]]
-- before release do:
--   cp -f /desktop/projects/[project_name]/src /ram/cart/src
--   cp -f /desktop/projects/[project_name]/lib /ram/cart/lib
-- and comment the next 3 lines before release
local projects_dir = "/desktop/projects/"
local project_name = "template"
local full_path = projects_dir..project_name

CARTPATH = ""

if not fetch("src/main.lua") then
	cd(full_path)
	CARTPATH = "template.p64/"
end


include("src/main.lua")
