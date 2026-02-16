-- ### S6.3 CLIENT FUNCTIONS ###
-- Documentação: funções Lua disponíveis no Main (cliente). Verified on 2026-02-15

-- =============================================================
-- INTERFACE & RENDERING
-- =============================================================

RenderText(x, y, text, width, sort)
-- Desenha texto na tela.
-- Example: RenderText(100, 100, "Hello", 0, 1)

RenderText2(x, y, text, width, sort)
-- Desenha texto (variação 2).
-- Example: RenderText2(100, 100, "Hello", 0, 1)

RenderText3(x, y, text, width, sort)
-- Desenha texto (variação 3).
-- Example: RenderText3(100, 100, "Hello", 0, 1)

RenderText4(x, y, text, sort)
-- Desenha texto (variação 4).
-- Example: RenderText4(100, 100, "Hello", 1)

RenderText5(x, y, text, width, sort)
-- Desenha texto (variação 5).
-- Example: RenderText5(100, 100, "Hello", 0, 1)

DrawBar(x, y, w, h)
-- Example: DrawBar(10, 10, 100, 20)

EndDrawBar()
-- Example: EndDrawBar()

RenderImage(ImageID, x, y, w, h)
-- Example: RenderImage(100, 0, 0, 100, 100)

RenderImage2(ImageID, x, y, w, h, u, v, uw, vh, Scale, StartScale, Alpha)
-- Example: RenderImage2(100, 0, 0, 32, 32, 0, 0, 1, 1, 1, 1, 1.0)

RenderImage3(ImageID, x, y, w, h, u, v, uw, vh, Alpha)
-- Example: RenderImage3(100, 0, 0, 32, 32, 0, 0, 1, 1, 1.0)

RenderImageScale(ImageID, x, y, w, h, u, v, uw, vh, Alpha)
-- Example: RenderImageScale(100, 0, 0, 32, 32, 0, 0, 1, 1, 1.0)

RenderImageAuto(ImageID, x, y, w, h)
-- Example: RenderImageAuto(100, 0, 0, 32, 32)

EnableAlphaTest()
-- Example: EnableAlphaTest()

DisableAlphaBlend()
-- Example: DisableAlphaBlend()

SetBlend()
-- Example: SetBlend()

GLSwitchBlend()
-- Example: GLSwitchBlend()

GLSwitch()
-- Example: GLSwitch()

glColor3f(r, g, b)
-- Example: glColor3f(1.0, 0.0, 0.0)

glColor4f(r, g, b, a)
-- Example: glColor4f(1.0, 1.0, 1.0, 0.8)

SetFontType(type)
-- Example: SetFontType(1) -- 0: Normal, 1: Bold, 2: Big, 3: Fix

SetTextBg(r, g, b, a)
-- Example: SetTextBg(0, 0, 0, 150)

SetTextColor(r, g, b, a)
-- Example: SetTextColor(255, 255, 255, 255)

GetTextPosY(font, text, y, height)
-- Example: local posy = GetTextPosY(1, "Text", 100, 20)

SetLockInterfaces()
-- Example: SetLockInterfaces()

SetUnlockInterfaces()
-- Example: SetUnlockInterfaces()

LockPlayerWalk()
-- Example: LockPlayerWalk()

UnlockPlayerWalk()
-- Example: UnlockPlayerWalk()

CheckClickClient()
-- Retorna estado do botão esquerdo do mouse.
-- Example: local clicked = CheckClickClient()

DisableClickClient()
-- Example: DisableClickClient()

CheckWindowOpen(WindowID)
-- Example: local isOpen = CheckWindowOpen(1)

CloseWindow(WindowID)
-- Example: CloseWindow(1)

OpenWindow(WindowID)
-- Example: OpenWindow(1)

ResetMouseL()
-- Example: ResetMouseL()

ResetMouseR()
-- Example: ResetMouseR()

ResetMouseM()
-- Example: ResetMouseM()

ShowItemDescription(x, y, ItemID, Level, Op1, Op2, Op3, Exc, Ancient, JoH, Socket, Sock1, Sock2, Sock3, Sock4, Sock5)
-- Example: ShowItemDescription(100, 100, 22, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255)

ShowDescriptionComplete(x, y, ItemID, Level, Op1, Op2, Op3, Exc, Ancient, JoH, Socket, Sock1, Sock2, Sock3, Sock4, Sock5)
-- Example: ShowDescriptionComplete(100, 100, ...)

CreateItem(x, y, w, h, Type, Level, Option1, ExtOption)
-- Renderiza item 3D.
-- Example: CreateItem(100, 100, 50, 50, 22, 0, 0, 0)

DrawTooltip(x, y, text)
-- Example: DrawTooltip(100, 100, "Tooltip text")

GetImageWidth(ImageID)
-- Example: local w = GetImageWidth(100)

GetImageHeight(ImageID)
-- Example: local h = GetImageHeight(100)

WindowGetWidth()
-- Example: local w = WindowGetWidth()

WindowGetWidthAdd()
-- Example: local w = WindowGetWidthAdd()

GetWideX()
-- Example: local x = GetWideX()

PlaySound(id)
-- Example: PlaySound(1)

StopSound(id)
-- Example: StopSound(1)

-- =============================================================
-- INPUT
-- =============================================================

MousePosX()
-- Retorna a posição X do mouse na tela.
-- Example: local x = MousePosX()

MousePosY()
-- Retorna a posição Y do mouse na tela.
-- Example: local y = MousePosY()

CheckRepeatKey(KeyCode)
-- Verifica se a tecla está pressionada (repetição). Retorno 1 = pressionada.
-- Example: if CheckRepeatKey(65) == 1 then end

CheckPressedKey(KeyCode)
-- Verifica se a tecla foi pressionada (um frame).
-- Example: if CheckPressedKey(65) == 1 then end

CheckReleasedKey(KeyCode)
-- Verifica se a tecla foi solta.
-- Example: if CheckReleasedKey(65) == 1 then end

-- =============================================================
-- CHARACTER & WORLD INFO (viewport)
-- =============================================================

CharacterGetName(Index)
-- Retorna o nome do personagem pelo índice no viewport.
-- Example: local name = CharacterGetName(aIndex)

CharacterGetIndex(Index)
-- Retorna o índice/chave do personagem no viewport.
-- Example: local key = CharacterGetIndex(aIndex)

CharacterGetIsLive(Index)
-- Example: local live = CharacterGetIsLive(aIndex)

CharacterGetType(Index)
-- Example: local type = CharacterGetType(aIndex)

CharacterGetX(Index)
-- Example: local x = CharacterGetX(aIndex)

CharacterGetY(Index)
-- Example: local y = CharacterGetY(aIndex)

CharacterGetPositionX(Index)
-- Example: local x = CharacterGetPositionX(aIndex)

CharacterGetPositionY(Index)
-- Example: local y = CharacterGetPositionY(aIndex)

CharacterGetPositionZ(Index)
-- Example: local z = CharacterGetPositionZ(aIndex)

CharacterGetLevel(Index)
-- Example: local lvl = CharacterGetLevel(aIndex)

CharacterGetClass(Index)
-- Example: local class = CharacterGetClass(aIndex)

CharacterGetFullClass(Index)
-- Example: local class = CharacterGetFullClass(aIndex)

GetClassName(ClassID)
-- Example: local cName = GetClassName(1)

CharacterGetGuild(Index)
-- Example: local guild = CharacterGetGuild(aIndex)

CharacterGuildGetName(Index)
-- Example: local gName = CharacterGuildGetName(aIndex)

CharacterGetGuildStatus(Index)
-- Example: local status = CharacterGetGuildStatus(aIndex)

CharacterGetVisible(Index)
-- Example: local vis = CharacterGetVisible(aIndex)

CharacterGetHelper(Index)
-- Example: local item = CharacterGetHelper(aIndex)

CharacterGetWing(Index)
-- Example: local item = CharacterGetWing(aIndex)

CharacterGetSword(Index)
-- Example: local item = CharacterGetSword(aIndex)

CharacterGetShield(Index)
-- Example: local item = CharacterGetShield(aIndex)

CharacterGetHelm(Index)
-- Example: local item = CharacterGetHelm(aIndex)

CharacterGetArmor(Index)
-- Example: local item = CharacterGetArmor(aIndex)

CharacterGetPants(Index)
-- Example: local item = CharacterGetPants(aIndex)

CharacterGetGloves(Index)
-- Example: local item = CharacterGetGloves(aIndex)

CharacterGetBoots(Index)
-- Example: local item = CharacterGetBoots(aIndex)

CharacterGetAngleX(Index), CharacterGetAngleY(Index), CharacterGetAngleZ(Index)
-- Example: local ax = CharacterGetAngleX(aIndex)

CharacterSetAngleX(Index, value), CharacterSetAngleY(Index, value), CharacterSetAngleZ(Index, value)
-- Example: CharacterSetAngleX(aIndex, 1.0)

CharacterSetPositionX(Index, value), CharacterSetPositionY(Index, value), CharacterSetPositionZ(Index, value)
-- Example: CharacterSetPositionX(aIndex, 100.0)

CharacterSetScale(Index, value)
-- Example: CharacterSetScale(aIndex, 1.0)

SetCharacterAction(Index, AnimationID)
-- Example: SetCharacterAction(aIndex, 12)

GetPosFromPlayer(Index)
-- Example: local pos = GetPosFromPlayer(aIndex)

GetTargetCharacter()
-- Example: local target = GetTargetCharacter()

SetTargetCharacter(value)
-- Example: SetTargetCharacter(0)

GetSelectedHero()
-- Example: local hero = GetSelectedHero()

SetSelectedHero(value)
-- Example: SetSelectedHero(0)

FindCharacterStack(Index)
-- Example: local stackIdx = FindCharacterStack(Index)

-- =============================================================
-- USER (jogador local)
-- =============================================================

UserGetMap()
-- Example: local map = UserGetMap()

UserGetName()
-- Example: local name = UserGetName()

UserGetIndex()
-- Example: local idx = UserGetIndex()

UserPositionX()
-- Example: local x = UserPositionX()

UserPositionY()
-- Example: local y = UserPositionY()

UserGetHelper(), UserGetWing(), UserGetSword(), UserGetShield()
UserGetHelm(), UserGetArmor(), UserGetPants(), UserGetGloves(), UserGetBoots()
-- Example: local item = UserGetSword()

UserGetLevel()
-- Example: local lvl = UserGetLevel()

UserGetClass()
-- Example: local class = UserGetClass()

UserGetGuild()
-- Example: local guild = UserGetGuild()

GuildGetName()
-- Example: local gName = GuildGetName()

-- =============================================================
-- ACTIONS & PACKETS
-- =============================================================

SendPlayerChat(Message)
-- Envia mensagem no chat (como se o jogador tivesse digitado).
-- Example: SendPlayerChat("Hello World")

SendTradePlayer(Index)
-- Envia pedido de trade ao jogador alvo.
-- Example: SendTradePlayer(TargetIndex)

SendPartyPlayer(Index)
-- Example: SendPartyPlayer(TargetIndex)

SendGuildPlayer(Index)
-- Example: SendGuildPlayer(TargetIndex)

SendShopPlayer(Index)
-- Example: SendShopPlayer(TargetIndex)

SendMessageClient(msg)
-- Envia mensagem no chat do cliente (tipo sistema).
-- Example: SendMessageClient("Info")

-- =============================================================
-- PACKET SYSTEM (cliente)
-- =============================================================

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
-- Example: local b = GetBytePacket("MyPkt", 0)

GetWordPacket(PacketName, Offset)
-- Example: local w = GetWordPacket("MyPkt", 0)

GetDwordPacket(PacketName, Offset)
-- Example: local dw = GetDwordPacket("MyPkt", 0)

GetCharPacket(PacketName, Offset)
-- Example: local c = GetCharPacket("MyPkt", 0)

GetCharPacketLength(PacketName, Offset, Length)
-- Example: local s = GetCharPacketLength("MyPkt", 0, 5)

SendPacket(PacketName)
-- Envia pacote ao servidor.
-- Example: SendPacket("MyPkt")

ClearPacket(PacketName)
-- Example: ClearPacket("MyPkt")

-- =============================================================
-- IMAGE LOADING (LoadImages.lua)
-- =============================================================

LoadImage(path, textureID)
-- Carrega imagem BMD no textureID.
-- Example: LoadImage("Interface\\image.bmd", 40000)

LoadImageByDir(path)
-- Carrega imagem e retorna ID auto-incrementado (começa em 200000).
-- Example: local id = LoadImageByDir("Interface\\image.bmd")

UnloadImage(id)
-- Descarrega imagem (apenas no contexto LoadImages).
-- Example: UnloadImage(40000)

-- =============================================================
-- UTILS & FILE SYSTEM
-- =============================================================

OpenFolder(FolderName)
-- Carrega pasta de scripts (Data\Settings\Lua\Manager\FolderName\).
-- Example: OpenFolder("MyFolder")

OpenFile(FilePath)
-- Carrega arquivo Lua (Data\Settings\Lua\FilePath).
-- Example: OpenFile("MyScript")

LogDebug(Message)
-- Example: LogDebug("Debug info")

Console(Message)
-- Example: Console("Log to console")

-- =============================================================
-- REGISTRY (Windows)
-- =============================================================

getValueRegKey(keyValue)
-- Example: local v = getValueRegKey("Key")

setValueRegKey(keyValue, value)
-- Example: setValueRegKey("Key", 1)

getStringRegKey(keyValue, keySize)
-- Example: local s = getStringRegKey("Key", 256)

setStringRegKey(keyValue, value)
-- Example: setStringRegKey("Key", "Value")

-- =============================================================
-- GLOBAL / MISC
-- =============================================================

GetLanguage()
-- Example: local lang = GetLanguage()

SetLanguage(value)
-- Example: SetLanguage("Por")

GetWindowWidth()
-- Example: local w = GetWindowWidth()

GetWindowHeight()
-- Example: local h = GetWindowHeight()

GetFontValue(), SetFontValue(value)
-- Example: local f = GetFontValue()

GetResolution()
-- Example: local r = GetResolution()

GetVolume(), SetVolume(value)
-- Example: GetVolume()

SetHealthBarSwitch(value), SetGlowSwitch(value), SetWingSwitch(value)
-- Example: SetHealthBarSwitch(0)

GetNameByIndex(index)
-- Example: local name = GetNameByIndex(0)

GetCompleteNameByIndex(index, level, exc)
-- Example: local name = GetCompleteNameByIndex(0, 0, 0)

GetWidthByIndex(index), GetHeightByIndex(index), GetSlotByIndex(index)
-- Example: local w = GetWidthByIndex(0)

GetInventoryMouseSlot(), GetInventoryMouseItemSlot(), GetInventoryMouseItemIndex()
GetInventoryMouseItemLevel(), GetInventoryMouseItemExc()
-- Example: local slot = GetInventoryMouseSlot()

GetGlobalText(index)
-- Example: local text = GetGlobalText(100)

GetMapName(map)
-- Example: local name = GetMapName(0)

GetCountParty()
-- Example: local n = GetCountParty()

GetMonsterName(Class)
-- Example: local name = GetMonsterName(0)

getFPS()
-- Example: local fps = getFPS()

-- =============================================================
-- EFFECTS (CreateSprite, CreateParticle - via BMD class)
-- =============================================================
-- BMD class: CreateSprite, CreateParticle, RenderBody, RenderMesh, etc.
-- Item class: getLevel(), getOption1(), getExc()
-- Object class: Alpha(), Mesh(), getAction(), getTime(), setTime()
-- CapeStack class: Create(), SetWindMinMax(), Collision()
