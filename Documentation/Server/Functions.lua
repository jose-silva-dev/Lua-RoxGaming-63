-- ### S63 SERVER FUNCTIONS ###
-- Verified on 2026-01-15 

-- ### MESSAGING & LOGS ###
LogAdd(str)
LogAddLua(str)
LogAddC(type, str)
SendMessage(str, aIndex, type) -- To specific user
SendMessageGlobal(str, type) -- To all online
SendMessageAllServer(str, type)
SendMessagePlayer(aIndex, str)
ChatTargetSend(aIndex, str, monster)

-- ### USER MANAGEMENT ###
GetIndex(str) -- Get User Index by Name
Teleport(aIndex, map, x, y)
TeleportMap(aIndex, range)
TeleportMapRange(aIndex, map, x, y, range)
CloseChar(aIndex, type)
KillPlayer(aIndex, TargetIndex)
RespawnUser(aIndex) -- (Bridge?)
MoveObject(aIndex, x, y)
MoveGate(aIndex, Gate)
gObjDel(aIndex)
gObjAdd(Type, x, y)
gObjSetPosition(aIndex, x, y)
gObjIsConnectedGP(aIndex)
gObjCheckOffAttack(aIndex)
gObjCheckOffStore(aIndex)
SearchIndex(Name)
GetMapObject(aIndex)
getNameObject(aIndex)
GetLanguageObject(aIndex)
GetAccountObject(aIndex)

-- ### CHARACTER STATS & CALCULATIONS ###
LevelUpSend(aIndex)
PkLevelSend(aIndex, Level)
MoneySend(aIndex)
LifeUpdate(aIndex)
ManaUpdate(aIndex)
SetBP(aIndex, value)
LevelExperience(aIndex)
NextExpCalc(aIndex)
AccountInfoSend(aIndex)
CharacterInfoSend(aIndex)
StateInfoSend(aIndex, state, view_skill_state)
ResetSkills(aIndex)
gObjRebuildMasterSkillTree(aIndex)
CheckUserIsMasterSkill(aIndex)
CheckBuffPlayer(aIndex, BuffIndex)
ClearAllBuff(aIndex)
CalCharacter(aIndex) -- Recalculate character stats
RefreshCharacter(aIndex) -- Refresh character viewport/stats

-- ### GUILD ###
UserGuildNumber(aIndex) -- Returns Guild Number
UserGuildName(aIndex) -- Returns Guild Name
GetGuildRelationShip(aIndex, TargetIndex)

-- ### PARTY ###
CreateParty(aIndex, bIndex)
DestroyParty(PartyNumber)
AddMemberParty(PartyNumber, aIndex)
GetMemberCountParty(PartyNumber)
GetMemberIndexParty(PartyNumber, slot)
IsLeaderParty(aIndex)
IsMemberParty(aIndex)
IsParty(aIndex)
GCPartyResultSend(aIndex, Result)
GCPartyDelMemberSend(aIndex)
GCPartyListSend(aIndex)

-- ### ITEMS & INVENTORY ###
ItemSerialCreate(aIndex, map, x, y, ItemIndex, ...)
ItemSerialCreatePeriodic(...)
ItemSerialCreateComplete(...)
CreateItemInventory(aIndex, ItemIndex, ...)
CreateItemInventory2(aIndex, ItemIndex, ...)
CreateItemMap(aIndex, Map, X, Y, ItemIndex, ...)
InventoryDeleteItem(aIndex, slot)
CreateInventoryItem(aIndex, ItemIndex, ...)
SendInventoryDeleteItem(aIndex, slot)
ItemListSend(aIndex)
GetWarehouseList(aIndex)
GetStackItem(aIndex, slot)
GetInventoryEmptySlotCount(aIndex)
GetInventoryItemCount(aIndex, ItemIndex)
DeleteItemCount(aIndex, ItemIndex, Count)
InventoryCheckSpaceByItem(aIndex, ItemIndex)
InventoryCheckSpaceBySize(aIndex, w, h)
DropEventItemBag(aIndex, SpecialValue)
PersonalShopBuyItem(aIndex, ...)

-- ### MONSTERS ###
AddMonster(map)
SetPositionMonster(aIndex, map)
SetMonster(aIndex, MonsterClass)
SetMapMonster(aIndex, map, x, y)
MonsterReload()
ReloadLuaMonster()
gObjMonsterTopHitDamageUser(aIndex) -- Check top hit damage?

-- ### QUESTS ###
CheckQuestListState(aIndex, QuestIndex, State)
AddQuestList(aIndex, QuestIndex, State)
InsertQuestReward(aIndex, RewardType, ...)
GCQuestInfoSend(aIndex)
SendQuestPrize(aIndex, Type, Count)
ResetQuest(aIndex, QuestIndex)

-- ### DATABASE (ASYNC) ###
-- Source: LuaDatabaseAsync.cpp
ConnectQueryAsync(ConStr, UID, PWD)
CreateAsyncQuery(name, query, aIndex, getResult)
QueryAsyncGetValue(name, column)
QueryAsyncDelete(name)

-- ### CHAOS BOX / MIX ###
ChaosMixSend(aIndex, Result, ItemInfo)
ChaosBoxInit(aIndex)
ChaosBoxSend(aIndex, type)
OpenChaosMachineGenesis(aIndex)
ChaosBoxGenesisInit(aIndex)
ChaosBoxGenesisMixSend(aIndex, ...)
ChaosBoxGenesisItemListSend(aIndex)
ChaosBoxGenesisCreateItem(aIndex, ...)
SaveChaosBoxGenesis(aIndex)

-- ### VISUALS / EFFECTS ###
ViewportCreate(aIndex)
ViewportDestroy(aIndex)
ClearViewPort(aIndex)
MakePreview(aIndex)
FireWorks(aIndex)
AddEffect(aIndex, EffectID, ...)
RemoveEffect(aIndex, EffectID)
SkillSend(aIndex, skill, TargetIndex, type)
DamageSend(aIndex, TargetIndex, damage, ...)

-- ### UTILS ###
GetTick()
GetTickGS()
GetRandomValue(min, max)
GetTimeDays()
InsertCounter(...)
DecreaseCounter(...)
UpdateCounter(...)
OpenFolder(path)
OpenFile(file)
SendPacketMain(aIndex, PacketData)
