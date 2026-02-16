-- ### S6.3 SERVER EVENTS (BRIDGES) ###
-- Documentação: callbacks Lua chamados pelo GameServer. Verified on 2026-02-15

-- =============================================================
-- SYSTEM & MAIN LOOPS
-- =============================================================

GameServer()
-- Chamado quando o servidor termina de carregar.
-- Example: function GameServer() LogAdd("Server loaded.") end

CloseLua()
-- Chamado ao fechar/descarregar o Lua do servidor.
-- Example: function CloseLua() end

TimerSystem()
-- Executado a cada ~900ms (loop de timer).
-- Example: function TimerSystem() LogAddTD("Tick") end

UpdateTopKill(a, b)
-- Chamado para atualizar ranking de kills (parâmetros internos).
-- Example: function UpdateTopKill(a, b) end

-- =============================================================
-- CHARACTER MANAGEMENT
-- =============================================================

EnterCharacter(aIndex)
-- Chamado quando o personagem entra no jogo (antes de aparecer no mundo).
-- Example: function EnterCharacter(aIndex) SendMessage("Bem-vindo!", aIndex, 1) end

PlayerLogout(aIndex, Name, Account)
-- Chamado quando o jogador desconecta.
-- Example: function PlayerLogout(aIndex, Name, Account) LogAdd(Name .. " saiu.") end

DeleteCharacter(aIndex, Name)
-- Chamado ao deletar personagem. Retorno 1 = permite, 0 = bloqueia.
-- Example: function DeleteCharacter(aIndex, Name) return 1 end

RespawnUser(aIndex)
-- Chamado ao respawnar o jogador.
-- Example: function RespawnUser(aIndex) end

AutoResetPlayerProc(aIndex)
-- Chamado na lógica de auto-reset.
-- Example: function AutoResetPlayerProc(aIndex) end

CharacterSet(aIndex)
-- Chamado quando os dados do personagem são definidos.
-- Example: function CharacterSet(aIndex) end

LevelUpPointAdd(aIndex, Type)
-- Chamado ao adicionar ponto de level up. Retorno 0 = bloqueia, outro = permite.
-- Example: function LevelUpPointAdd(aIndex, Type) return 0 end

-- =============================================================
-- COMBAT & DAMAGE
-- =============================================================

PlayerAttack(aIndex, TargetIndex)
-- Chamado no ataque jogador vs jogador. Retorno 1 = permite, 0 = bloqueia.
-- Example: function PlayerAttack(aIndex, TargetIndex) return 1 end

OnUserDamage(aIndex, TargetIndex, damage, DamageType, skill)
-- Chamado quando o jogador causa dano. Retornar outro valor altera o dano aplicado.
-- Parâmetros: aIndex=atacante, TargetIndex=alvo, damage=valor, DamageType=tipo, skill=skill ID.
-- Example: function OnUserDamage(aIndex, TargetIndex, damage, DamageType, skill) return damage end

PlayerDie(aIndex, TargetIndex)
-- Chamado quando o jogador morre (atacante = TargetIndex).
-- Example: function PlayerDie(aIndex, TargetIndex) end

PlayerAttackFenrirSkill(aIndex, TargetIndex)
-- Chamado no ataque de skill Fenrir. Retorno 1 = permite.
-- Example: function PlayerAttackFenrirSkill(aIndex, TargetIndex) return 1 end

-- =============================================================
-- ITEMS & INVENTORY
-- =============================================================

PlayerDropItem(aIndex, x, y, Slot)
-- Chamado ao dropar item. Retorno 0 = bloqueia o drop.
-- Example: function PlayerDropItem(aIndex, x, y, Slot) return 1 end

PlayerUseItem(aIndex, SourceSlot, TargetSlot)
-- Chamado ao usar item. Retorno 1 = permite.
-- Example: function PlayerUseItem(aIndex, SourceSlot, TargetSlot) return 1 end

PlayerMoveItem(aIndex, SourceSlot, TargetSlot, Type)
-- Chamado ao mover item no inventário (Type = tipo de movimento).
-- Example: function PlayerMoveItem(aIndex, SourceSlot, TargetSlot, Type) end

PlayerSellItem(aIndex, Slot)
-- Chamado ao vender item. Retorno 1 = permite.
-- Example: function PlayerSellItem(aIndex, Slot) return 1 end

PlayerRepairItem(aIndex, Slot)
-- Chamado ao reparar item. Retorno 1 = permite.
-- Example: function PlayerRepairItem(aIndex, Slot) return 1 end

PlayerCanEquipItem(aIndex, SourceSlot, TargetSlot)
-- Chamado ao equipar item. Retorno 1 = permite, 0 = bloqueia.
-- SourceSlot = slot do inventário, TargetSlot = slot de equipamento.
-- Example: function PlayerCanEquipItem(aIndex, SourceSlot, TargetSlot) return 1 end

CanEquipElementSlot(aIndex)
-- Chamado ao equipar no slot elemental. Retorno 1 = permite.
-- Example: function CanEquipElementSlot(aIndex) return 1 end

PlayerRingEquiped(aIndex)
-- Chamado ao equipar anel.
-- Example: function PlayerRingEquiped(aIndex) end

-- =============================================================
-- MOVEMENT
-- =============================================================

PlayerMove(aIndex, Map, X, Y, TargetX, TargetY)
-- Chamado quando o jogador se move.
-- Example: function PlayerMove(aIndex, Map, X, Y, TX, TY) end

CharacterMove(aIndex, Map, X, Y)
-- Chamado no movimento do personagem (gate/teleporte). Retorno 0 = bloqueia.
-- Example: function CharacterMove(aIndex, Map, X, Y) return 0 end

-- =============================================================
-- NPC & MONSTERS
-- =============================================================

NpcTalk(NpcIndex, PlayerIndex)
-- Chamado quando o jogador fala com NPC. Retorno 0 = bloqueia diálogo.
-- Example: function NpcTalk(NpcIndex, PlayerIndex) return 0 end

MonsterDie(aIndex, TargetIndex)
-- Chamado quando monstro morre (aIndex = monstro, TargetIndex = jogador que matou).
-- Example: function MonsterDie(aIndex, TargetIndex) end

MonsterDieGiveItem(aIndex, TargetIndex)
-- Chamado ao dar item do monstro ao jogador.
-- Example: function MonsterDieGiveItem(aIndex, TargetIndex) end

MonsterReload()
-- Chamado ao recarregar monstros.
-- Example: function MonsterReload() end

ReloadLuaMonster()
-- Chamado ao recarregar Lua de monstros.
-- Example: function ReloadLuaMonster() end

-- =============================================================
-- TRADE, SHOPS & WAREHOUSE
-- =============================================================

PlayerSendTrade(aIndex, TargetIndex)
-- Chamado ao enviar pedido de trade. Retorno 1 = permite.
-- Example: function PlayerSendTrade(aIndex, TargetIndex) return 1 end

PlayerTradeOk(aIndex, TargetIndex)
-- Chamado ao aceitar trade. Retorno 1 = permite.
-- Example: function PlayerTradeOk(aIndex, TargetIndex) return 1 end

PlayerSendTradeX(aIndex, TargetIndex)
-- Chamado ao enviar trade com moedas (WC/WP/GP). Retorno 1 = permite.
-- Example: function PlayerSendTradeX(aIndex, TargetIndex) return 1 end

PlayerTradeXOk(aIndex, TargetIndex)
-- Chamado ao aceitar trade com moedas. Retorno 1 = permite.
-- Example: function PlayerTradeXOk(aIndex, TargetIndex) return 1 end

TradeXReceiveCoins(aIndex, Type, Value)
-- Chamado quando o jogador recebe moedas no trade.
-- Example: function TradeXReceiveCoins(aIndex, Type, Value) end

PlayerOpenShop(aIndex)
-- Chamado ao abrir loja pessoal. Retorno 1 = permite.
-- Example: function PlayerOpenShop(aIndex) return 1 end

PlayerCloseShop(aIndex)
-- Chamado ao fechar loja pessoal.
-- Example: function PlayerCloseShop(aIndex) end

PlayerVaultOpen(aIndex)
-- Chamado ao abrir o baú.
-- Example: function PlayerVaultOpen(aIndex) end

PlayerVaultClose(aIndex)
-- Chamado ao fechar o baú.
-- Example: function PlayerVaultClose(aIndex) end

CheckPersonalShopValue(aIndex, ItemIndex, Coin1, Coin2, Coin3, Coin4)
-- Chamado ao verificar valor do item na loja. Retorno 1 = permite.
-- Example: function CheckPersonalShopValue(aIndex, ItemIndex, Coin1, Coin2, Coin3, Coin4) return 1 end

PersonalShopDecreaseValue(aIndex, Coin1, Coin2, Coin3, Coin4)
-- Chamado ao diminuir valor (venda na loja).
-- Example: function PersonalShopDecreaseValue(aIndex, Coin1, Coin2, Coin3, Coin4) end

PersonalShopAddValue(aIndex, Coin1, Coin2, Coin3, Coin4)
-- Chamado ao adicionar valor (venda na loja).
-- Example: function PersonalShopAddValue(aIndex, Coin1, Coin2, Coin3, Coin4) end

ItemBuyCheckCoins(aIndex, coin1, coin2, coin3)
-- Chamado ao comprar item (verificação de moedas). Retorna 3 valores: coin1Val, coin2Val, coin3Val.
-- Example: function ItemBuyCheckCoins(aIndex, c1, c2, c3) return coin1Val, coin2Val, coin3Val end

ItemBuyBuyError(aIndex, coinVal, type)
-- Chamado quando há erro na compra.
-- Example: function ItemBuyBuyError(aIndex, coinVal, type) end

ItemBuyDecreaseCoins(aIndex, Coin1, Coin2, Coin3)
-- Chamado ao descontar moedas na compra.
-- Example: function ItemBuyDecreaseCoins(aIndex, Coin1, Coin2, Coin3) end

ItemSellAddCoins(aIndex, Coin1, Coin2, Coin3)
-- Chamado ao adicionar moedas na venda.
-- Example: function ItemSellAddCoins(aIndex, Coin1, Coin2, Coin3) end

-- =============================================================
-- CHAOS BOX
-- =============================================================

CheckCustomChaosBox(aIndex)
-- Chamado na verificação da Chaos Box custom.
-- Example: function CheckCustomChaosBox(aIndex) end

ChaosMachineGenesisMix(aIndex)
-- Chamado na mix da Chaos Machine Genesis.
-- Example: function ChaosMachineGenesisMix(aIndex) end

-- =============================================================
-- PARTY & GUILD
-- =============================================================

PlayerSendParty(aIndex, TargetIndex)
-- Chamado ao enviar convite de party. Retorno 1 = permite.
-- Example: function PlayerSendParty(aIndex, TargetIndex) return 1 end

GuildWarProc(Guild1, GuildPoints1, Guild2, GuildPoints2)
-- Chamado no processo de guerra de guild (strings = nomes das guilds).
-- Example: function GuildWarProc(G1, P1, G2, P2) end

DeclareWar(aIndex)
-- Chamado ao declarar guerra. Retorno 1 = permite.
-- Example: function DeclareWar(aIndex) return 1 end

-- =============================================================
-- OTHER SYSTEM EVENTS
-- =============================================================

QueryAsyncProcess(QueryName, Identification, aIndex)
-- Chamado no processamento assíncrono de queries.
-- Example: function QueryAsyncProcess(QueryName, Identification, aIndex) end

ChatProc(aIndex, Message)
-- Chamado ao processar mensagem de chat. Retorno 0 = bloqueia a mensagem.
-- Example: function ChatProc(aIndex, Message) return 0 end

MacAddressPlayer(aIndex, MacAddress)
-- Chamado quando o MAC do jogador é recebido.
-- Example: function MacAddressPlayer(aIndex, MacAddress) end

GameServerProtocol(aIndex, Head, PacketName)
-- Chamado ao processar pacote custom (Head + PacketName).
-- Example: function GameServerProtocol(aIndex, Head, PacketName) end

ReceiveEventReward(aIndex, EventID)
-- Chamado quando o jogador recebe recompensa de evento.
-- Example: function ReceiveEventReward(aIndex, EventID) end
