-- ### S6.3 SERVER FUNCTIONS & CLASSES ###
-- Documentação: funções Lua disponíveis no GameServer. Verified on 2026-02-15

-- =============================================================
-- MESSAGING & LOGS
-- =============================================================

LogAdd(str)
-- Escreve no log do servidor (usa LOG_BLACK).
-- Example: LogAdd("Normal Log")

LogAddLua(str)
-- Escreve no log Lua.
-- Example: LogAddLua("Lua Log")

LogAddC(type, str)
-- Escreve no log com cor (type = 1-14, cores diferentes).
-- Example: LogAddC(2, "Red Log")

LogAddTD(str)
-- Escreve no log com data/hora.
-- Example: LogAddTD("Time/Date Log")

SendMessage(str, aIndex, type) -- Alias: SendMessageUser
-- Envia mensagem ao jogador (type = tipo de exibição).
-- Example: SendMessage("Welcome", aIndex, 1)

SendMessageGlobal(str, type)
-- Envia mensagem global no mapa.
-- Example: SendMessageGlobal("Server Event!", 0)

SendMessageAllServer(str, type)
-- Envia mensagem para todo o servidor.
-- Example: SendMessageAllServer("Global Announcement", 0)

SendMessagePlayer(aIndex, Type, msg)
-- Envia mensagem ao jogador.
-- Example: SendMessagePlayer(aIndex, 1, "Hello")

ChatTargetSend(aIndex, str, monster)
-- Envia mensagem como se viesse de um monstro/NPC.
-- Example: ChatTargetSend(aIndex, "Hello from Monster", MonsterIndex)

-- =============================================================
-- PLAYER UTILITIES & INFO
-- =============================================================

GetIndex(Name)
-- Retorna o índice do jogador pelo nome.
-- Example: local idx = GetIndex("PlayerName")

MoneySend(aIndex)
-- Example: MoneySend(aIndex) -- Refresh Money

LevelUpSend(aIndex)
-- Example: LevelUpSend(aIndex) -- Refresh Level

PkLevelSend(aIndex, Level)
-- Example: PkLevelSend(aIndex, 3)

LifeUpdate(aIndex)
-- Example: LifeUpdate(aIndex) -- Refresh HP

ManaUpdate(aIndex)
-- Example: ManaUpdate(aIndex) -- Refresh Mana

SetBP(aIndex)
-- Example: SetBP(aIndex) -- Refresh AG/BP

NextExpCalc(aIndex)
-- Example: NextExpCalc(aIndex) -- Recalc Exp for next level

CharacterInfoSend(aIndex, Name)
-- Example: CharacterInfoSend(aIndex, "Name")

AccountInfoSend(aIndex, Account, Pass)
-- Example: AccountInfoSend(aIndex, "Acc", "Pass")

RefreshCharacter(aIndex)
-- Example: RefreshCharacter(aIndex)

StateInfoSend(aIndex, state, effect)
-- Example: StateInfoSend(aIndex, 1, 1)

ClearAllBuff(aIndex)
-- Example: ClearAllBuff(aIndex)

CheckBuffPlayer(aIndex, BuffIndex)
-- Example: local active = CheckBuffPlayer(aIndex, 10)

AddEffect(aIndex, type, index, count, value1, value2, value3, value4)
-- Example: AddEffect(aIndex, 0, 10, 0, 0, 0, 0, 0)

RemoveEffect(aIndex, index)
-- Example: RemoveEffect(aIndex, 10)

CalCharacter(aIndex)
-- Example: CalCharacter(aIndex) -- Recalculate stats

SkillSend(aIndex, skill, TargetIndex, type)
-- Example: SkillSend(aIndex, 1, Target, 0)

ResetSkills(aIndex)
-- Example: ResetSkills(aIndex)

CheckUserIsMasterSkill(aIndex)
-- Example: local isMaster = CheckUserIsMasterSkill(aIndex)

gObjRebuildMasterSkillTree(aIndex)
-- Example: gObjRebuildMasterSkillTree(aIndex)

UserGuildNumber(aIndex)
-- Example: local gNum = UserGuildNumber(aIndex)

UserGuildName(aIndex)
-- Example: local gName = UserGuildName(aIndex)

GetGuildRelationShip(aIndex, TargetIndex)
-- Example: local rel = GetGuildRelationShip(aIndex, Target)

GetMapObject(aIndex)
-- Example: local map = GetMapObject(aIndex)

GetLanguageObject(aIndex)
-- Example: local lang = GetLanguageObject(aIndex)

GetNameObject(aIndex)
-- Example: local name = GetNameObject(aIndex)

GetAccountObject(aIndex)
-- Example: local acc = GetAccountObject(aIndex)

gObjAdd(socket, ipAddr, aIndex)
-- Example: gObjAdd(sock, "127.0.0.1", aIndex)

gObjDel(aIndex)
-- Example: gObjDel(aIndex)

gObjIsConnectedGP(aIndex)
-- Example: local connected = gObjIsConnectedGP(aIndex)

gObjCheckOffAttack(aIndex)
-- Example: local isOff = gObjCheckOffAttack(aIndex)

gObjCheckOffStore(aIndex)
-- Example: local isOff = gObjCheckOffStore(aIndex)

KillPlayer(aIndex)
-- Example: KillPlayer(aIndex)

DamageSend(aIndex, TargetIndex, reflet, damage, type, shieldDamage)
-- Example: DamageSend(aIndex, Target, 0, 100, 0, 10)

MakePreview(aIndex)
-- Example: MakePreview(aIndex)

ClearViewPort(aIndex)
-- Example: ClearViewPort(aIndex)

CloseChar(aIndex, type)
-- Example: CloseChar(aIndex, 0)

FireWorks(aIndex, map, x, y)
-- Example: FireWorks(aIndex, 0, 125, 125) -- aIndex=-1 para broadcast no mapa

ViewportCreate(aIndex)
-- Example: ViewportCreate(aIndex)

ViewportDestroy(aIndex)
-- Example: ViewportDestroy(aIndex)

-- =============================================================
-- MOVEMENT & WORLD
-- =============================================================

Teleport(aIndex, map, x, y)
-- Teleporta o jogador para o mapa e coordenadas.
-- Example: Teleport(aIndex, 0, 125, 125)

TeleportMap(aIndex, range)
-- Teleporta o jogador dentro do mapa (range).
-- Example: TeleportMap(aIndex, 5)

TeleportMapRange(aIndex, map, x, y, range)
-- Teleporta o jogador para mapa/x/y com range de posição.
-- Example: TeleportMapRange(aIndex, 0, 125, 125, 10)

MoveObject(aIndex)
-- Example: MoveObject(aIndex)

MoveGate(aIndex, gate)
-- Example: MoveGate(aIndex, 1)

gObjSetPosition(aIndex, x, y)
-- Example: gObjSetPosition(aIndex, 125, 125)

SetMapMonster(aIndex, map, x, y)
-- Example: SetMapMonster(aIndex, 0, 125, 125)

GetMapAttr(map, x, y, attr)
-- Example: local val = GetMapAttr(0, 125, 125, 1)

-- =============================================================
-- ITEMS & INVENTORY
-- =============================================================

ItemSerialCreate(aIndex, map, x, y, ItemID, Level, Dur, Op1, Op2, Op3, Exc)
-- Example: ItemSerialCreate(aIndex, 0, 125, 125, 30, 0, 0, 0, 0, 0, 0)

ItemSerialCreatePeriodic(aIndex, map, ...args...)
-- Example: ItemSerialCreatePeriodic(aIndex, map, ...)

ItemSerialCreateComplete(aIndex, map, x, y, ItemIndex, level, dur, op1, op2, op3, ownerIndex, exc, ancient, timer)
-- Example: ItemSerialCreateComplete(...)

CreateItemInventory(aIndex, ItemID, Level, Op1, Op2, Op3, Exc, Ancient, JoH, SockBonus, Sock1, Sock2, Sock3, Sock4, Sock5, Timer)
-- Cria item no inventário do jogador (parâmetros completos).
-- Example: CreateItemInventory(aIndex, 22, 15, 1, 1, 1, 63, 0, 0, 0, 255, 255, 255, 255, 255, 0)

CreateItemInventory2(aIndex, ItemID, Level, Op1, Op2, Op3, Exc, Ancient, JoH, socket, Timer)
-- Example: CreateItemInventory2(...)

CreateItemMap(aIndex, Map, X, Y, ItemIndex, level, op1, op2, op3, exc, Ancient, JoH, socket, Timer)
-- Example: CreateItemMap(aIndex, 0, 125, 125, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0)

InventoryDeleteItem(aIndex, slot)
-- Example: InventoryDeleteItem(aIndex, 0)

SendInventoryDeleteItem(aIndex, slot)
-- Example: SendInventoryDeleteItem(aIndex, 0)

CreateInventoryItem(aIndex, ItemIndex, level, dur, op1, op2, op3, exc)
-- Example: CreateInventoryItem(aIndex, 22, 0, 0, 0, 0, 0, 0)

ItemListSend(aIndex)
-- Example: ItemListSend(aIndex)

GetWarehouseList(aIndex, string)
-- Example: GetWarehouseList(aIndex, "ListData")

InventoryCheckSpaceByItem(aIndex, ItemIndex)
-- Example: local ok = InventoryCheckSpaceByItem(aIndex, 22)

InventoryCheckSpaceBySize(aIndex, width, height)
-- Example: local ok = InventoryCheckSpaceBySize(aIndex, 2, 2)

GetStackItem(ItemIndex)
-- Example: local stack = GetStackItem(7181)

GetInventoryEmptySlotCount(aIndex)
-- Example: local count = GetInventoryEmptySlotCount(aIndex)

GetInventoryItemCount(aIndex, ItemIndex, level)
-- Example: local count = GetInventoryItemCount(aIndex, 22, 0)

DeleteItemCount(aIndex, ItemIndex, level, count)
-- Example: DeleteItemCount(aIndex, 22, 0, 5)

PersonalShopBuyItem(aIndex, TargetIndex, name, slot)
-- Example: PersonalShopBuyItem(aIndex, Target, "ItemName", 0)

DropEventItemBag(aIndex, SpecialValue)
-- Example: DropEventItemBag(aIndex, 1)

SaveChaosBoxGenesis(aIndex)
-- Example: SaveChaosBoxGenesis(aIndex)

-- =============================================================
-- MONSTERS & NPCS
-- =============================================================

AddMonster(map)
-- Example: local idx = AddMonster(0)

SetPositionMonster(aIndex, map) -- Alias: SetPositionMonsterLua
-- Example: SetPositionMonster(aIndex, 0)

SetMonster(aIndex, MonsterClass)
-- Example: SetMonster(aIndex, 0)

gObjMonsterTopHitDamageUser(aIndex)
-- Example: local topHitter = gObjMonsterTopHitDamageUser(aIndex)

-- =============================================================
-- PARTY
-- =============================================================

CreateParty(aIndex)
-- Example: CreateParty(aIndex)

DestroyParty(aIndex)
-- Example: DestroyParty(aIndex)

GetMemberCountParty(index)
-- Example: local count = GetMemberCountParty(PartyIndex)

AddMemberParty(PartyNumber, TargetIndex)
-- Example: AddMemberParty(pNum, Target)

IsLeaderParty(index, aIndex)
-- Example: local isLeader = IsLeaderParty(PartyIndex, aIndex)

IsMemberParty(index, aIndex)
-- Example: local isMember = IsMemberParty(PartyIndex, aIndex)

IsParty(index)
-- Example: local isP = IsParty(index)

GetMemberIndexParty(index, number)
-- Example: local pIdx = GetMemberIndexParty(PartyIndex, 0)

GCPartyResultSend(aIndex, result)
-- Example: GCPartyResultSend(aIndex, 1)

GCPartyDelMemberSend(aIndex)
-- Example: GCPartyDelMemberSend(aIndex)

GCPartyListSend(aIndex)
-- Example: GCPartyListSend(aIndex)

-- =============================================================
-- QUESTS & EVENTS
-- =============================================================

CheckQuestListState(Value1, Value2, Value3)
-- Example: local state = CheckQuestListState(aIndex, 1, 1)

AddQuestList(Value1, Value2, Value3)
-- Example: AddQuestList(aIndex, 1, 1)

InsertQuestReward(Value1, Value2)
-- Example: InsertQuestReward(aIndex, 1)

GCQuestInfoSend(Value1)
-- Example: GCQuestInfoSend(aIndex)

ResetQuest(aIndex)
-- Example: ResetQuest(aIndex)

SendQuestPrize(aIndex, reward, amount)
-- Example: SendQuestPrize(aIndex, 1, 100)

-- =============================================================
-- CHAOS MACHINE GENESIS (se CHAOS_MACHINE_GENESIS definido)
-- =============================================================

OpenChaosMachineGenesis(aIndex)
-- Example: OpenChaosMachineGenesis(aIndex)

ChaosBoxGenesisInit(aIndex)
-- Example: ChaosBoxGenesisInit(aIndex)

ChaosBoxGenesisMixSend(aIndex, state)
-- Example: ChaosBoxGenesisMixSend(aIndex, 1)

ChaosBoxGenesisItemListSend(aIndex)
-- Example: ChaosBoxGenesisItemListSend(aIndex)

ChaosBoxGenesisCreateItem(aIndex, type, level, dur, op1, op2, op3, exc, op380, ancient, joh, socket, timer, serial)
-- Example: ChaosBoxGenesisCreateItem(aIndex, ...)

-- =============================================================
-- CHAOS BOX
-- =============================================================

ChaosMixSend(aIndex, result)
-- Example: ChaosMixSend(aIndex, 1)

ChaosBoxInit(aIndex)
-- Example: ChaosBoxInit(aIndex)

ChaosBoxSend(aIndex, type)
-- Example: ChaosBoxSend(aIndex, 1)

-- =============================================================
-- SYSTEM & SERVER INFO
-- =============================================================

GetTick()
-- Example: local t = GetTick()

GetTickGS()
-- Example: local t = GetTickGS()

GetTimeDays(dayOfWeek, day, hour, minute, second)
-- Example: local diff = GetTimeDays(0, 1, 12, 0, 0)

SearchIndex(ssocket, ipaddr)
-- Example: local idx = SearchIndex(sock, "127.0.0.1")

LevelExperience(Level)
-- Example: local exp = LevelExperience(400)

GetRandomValue(min, max)
-- Retorna valor aleatório entre min e max (inclusive).
-- Example: local r = GetRandomValue(1, 100)

-- =============================================================
-- COUNTER / DEATH SYSTEM (InsertCounter, DecreaseCounter, UpdateCounter)
-- =============================================================

InsertCounter(Value1, Value2, Value3)
-- Example: InsertCounter(aIndex, 1, 1)

DecreaseCounter(Value1, Value2, Value3)
-- Example: DecreaseCounter(aIndex, 1, 1)

UpdateCounter(aIndex)
-- Example: UpdateCounter(aIndex)

-- =============================================================
-- PACKET SYSTEM
-- =============================================================

SendPacketMain(aIndex, packet, size)
-- Example: SendPacketMain(aIndex, pkt, size)

CreatePacket(PacketName, PacketID)
-- Example: CreatePacket("MyPkt", 0xF1)

SetBytePacket(PacketName, Value)
-- Example: SetBytePacket("MyPkt", 0x01)

SetWordPacket(PacketName, Value)
-- Example: SetWordPacket("MyPkt", 0x100)

SetDwordPacket(PacketName, Value)
-- Example: SetDwordPacket("MyPkt", 123456)

SetCharPacket(PacketName, String)
-- Example: SetCharPacket("MyPkt", "Hello")

SetCharPacketLength(PacketName, String, Length)
-- Example: SetCharPacketLength("MyPkt", "Hello", 5)

GetBytePacket(PacketName, Offset)
-- Example: local b = GetBytePacket("MyPkt", 0) -- Offset -1 = auto-increment

GetWordPacket(PacketName, Offset)
-- Example: local w = GetWordPacket("MyPkt", 0)

GetDwordPacket(PacketName, Offset)
-- Example: local dw = GetDwordPacket("MyPkt", 0)

GetCharPacket(PacketName, Offset)
-- Example: local c = GetCharPacket("MyPkt", 0)

GetCharPacketLength(PacketName, Offset, Length)
-- Example: local s = GetCharPacketLength("MyPkt", 0, 5)

SendPacket(PacketName, aIndex)
-- Example: SendPacket("MyPkt", aIndex)

ClearPacket(PacketName)
-- Example: ClearPacket("MyPkt")

-- =============================================================
-- FILE SYSTEM
-- =============================================================

OpenFolder(FolderName)
-- Carrega pasta de scripts Lua (Data\Settings\Lua\Manager\FolderName\).
-- Example: OpenFolder("MyFolder")

OpenFile(FilePath)
-- Carrega arquivo Lua (Data\Settings\Lua\FilePath).
-- Example: OpenFile("MyScript")

-- =============================================================
-- SQL (LuaSQL)
-- =============================================================

SQLConnect(DataSource, User, Password)
-- Example: SQLConnect("DSN", "user", "pass")

SQLDisconnect()
-- Example: SQLDisconnect()

ExecuteQuery(Query)
-- Example: ExecuteQuery("SELECT * FROM Table")

SQLQuery(Query)
-- Example: SQLQuery("SELECT * FROM Table")

SQLClose()
-- Example: SQLClose()

SQLFetch()
-- Example: local ok = SQLFetch()

SQLGetResult(index)
-- Example: local val = SQLGetResult(0)

SQLGetNumber(ColName)
-- Example: local n = SQLGetNumber("Column")

SQLGetString(ColName)
-- Example: local s = SQLGetString("Column")

SQLGetFloat(ColName)
-- Example: local f = SQLGetFloat("Column")

-- =============================================================
-- QUERY ASYNC (LuaDatabaseAsync)
-- =============================================================

ConnectQueryAsync(ConStr, UID, PWD)
-- Example: ConnectQueryAsync("DSN", "user", "pass")

CreateAsyncQuery(name, query, aIndex, getResult)
-- Example: CreateAsyncQuery("job1", "SELECT * FROM T", aIndex, 1)

QueryAsyncGetValue(name, column)
-- Example: local val = QueryAsyncGetValue("job1", "Column")

QueryAsyncDelete(name)
-- Example: QueryAsyncDelete("job1")

-- =============================================================
-- CLASSES (User, Command, Inventory, Trade, Warehouse, ChaosBoxGenesis)
-- =============================================================
-- User: User.new(aIndex) - métodos get/set para atributos do jogador
-- Command: Command.getNumber(), Command.getString() - comandos registrados
-- Inventory, Trade, Warehouse: classes para manipulação de itens
-- ChaosBoxGenesis: se CHAOS_MACHINE_GENESIS definido
