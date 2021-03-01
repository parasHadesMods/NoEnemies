ModUtil.RegisterMod("NoEnemies")

local config = {
  ModName = "No Enemies",
  DisableEnemySpawns = false,
  DisableTimedSpawns = false,
  SecondsToWait = 2
}

if ModConfigMenu then
  ModConfigMenu.Register(config)
end

ModUtil.WrapBaseFunction("HandleEnemySpawns", function(baseFunc, ...)
  if config.DisableEnemySpawns then
    if config.SecondsToWait > 0 then wait(config.SecondsToWait) end
    return
  else
    baseFunc(...)
  end
end)

ModUtil.WrapBaseFunction("HandleTimedSpawns", function(baseFunc, ...)
  if config.DisableTimedSpawns then
    if config.SecondsToWait > 0 then wait(config.SecondsToWait) end
    return
  else
    baseFunc(...)
  end
end)

