ModUtil.RegisterMod("NoEnemies")

local config = {
  ModName = "No Enemies",
  DisableEnemySpawns = false,
  DisableTimedSpawns = false
}

if ModConfigMenu then
  ModConfigMenu.Register(config)
end

ModUtil.WrapBaseFunction("HandleEnemySpawns", function(baseFunc, ...)
  if config.DisableEnemySpawns then
    return
  else
    baseFunc(...)
  end
end)

ModUtil.WrapBaseFunction("HandleTimedSpawns", function(baseFunc, ...)
  if config.DisableTimedSpawns then
    return
  else
    baseFunc(...)
  end
end)

