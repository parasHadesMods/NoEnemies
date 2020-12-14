ModUtil.RegisterMod("NoEnemies")

ModUtil.BaseOverride("HandleEnemySpawns", function(...) return end)
ModUtil.BaseOverride("HandleTimedSpawns", function(...) return end)

