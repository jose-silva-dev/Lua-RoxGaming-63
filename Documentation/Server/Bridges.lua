-- ### S63 SERVER EVENTS (BRIDGES) ###
-- Generated on 2026-01-15 based on GameServer/GameServer/LuaGameServer.cpp

Init() -- Called on GameServer Initialization
InitReload() -- Called on Reload
Reload() -- Called on Reload?
GameServer() -- Main loop?
TimerSystem() -- Global Timer
CloseLua() -- Called on shutdown/reload
UpdateTopKill() -- Called to update top kill?

-- Player Interaction
PlayerAttack(aIndex, TargetIndex, IsSlap) -- Called when player attacks
PlayerDie(aIndex, TargetIndex) -- Called when player dies
MonsterDie(aIndex, TargetIndex) -- Called when monster dies
MonsterDieGiveItem(aIndex, TargetIndex) -- Called to determine drop?
PlayerLogout(aIndex, name, account) -- Called on logout
PlayerDropItem(aIndex, x, y, pos) -- Called on drop item
PlayerMove(aIndex, Map, ax, ay, sx, sy) -- Called on movement
CharacterMove(aIndex, map, x, y) -- Called on character movement?
CharacterSet(aIndex) -- Called when setting character?
EnterCharacter(aIndex) -- Called when entering world
RespawnUser(aIndex) -- Called on respawn
DeleteCharacter(aIndex, name) -- Called on delete
NpcTalk(NpcIndex, PlayerIndex) -- Called on NPC talk
ChatProc(index, text) -- Called on chat message

-- Trade & Party
PlayerSendTrade(aIndex, TargetIndex) -- Request Trade
PlayerTradeOk(aIndex, TargetIndex) -- Trade Accepted?
PlayerTradeXOk(aIndex, TargetIndex) -- ?
PlayerSendTradeX(aIndex, TargetIndex) -- ?
PlayerSendParty(aIndex, TargetIndex) -- Request Party

-- Items
PlayerSellItem(aIndex, Position) -- Selling item
PlayerRepairItem(aIndex, Position) -- Repairing item
PlayerMoveItem(aIndex, Source, Target, Type) -- Moving item
PlayerUseItem(aIndex, Source, Target) -- Using item (Right click)
PlayerRingEquiped(aIndex) -- Ring equipped?

-- Warehouse
PlayerVaultOpen(aIndex)
PlayerVaultClose(aIndex)

-- Monster
MonsterReload()
ReloadLuaMonster()

-- Guild / War
GuildWarProc(Guild1, Points1, Guild2, Points2)
DeclareWar(aIndex)

-- Level Up
LevelUpPointAdd(aIndex, Type) -- Called to add points on level up
