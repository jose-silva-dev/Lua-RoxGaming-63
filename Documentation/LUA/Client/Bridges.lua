-- ### S6.3 CLIENT EVENTS (BRIDGES) ###
-- Documentação: callbacks Lua chamados pelo Main (cliente). Verified on 2026-02-15

-- =============================================================
-- CORE INTERFACE LOOPS
-- =============================================================

MainProc()
-- Loop principal da interface (chamado a cada frame).
-- Example: function MainProc() end

UpdateProc()
-- Loop de atualização da interface.
-- Example: function UpdateProc() end

BeforeMainProc()
-- Chamado antes do MainProc (NewUINameWindow).
-- Example: function BeforeMainProc() end

AfterMainProc()
-- Chamado após o render principal (após as janelas).
-- Example: function AfterMainProc() end

AfterScriptLoad()
-- Chamado após carregar Interface.lua e registrar funções.
-- Example: function AfterScriptLoad() end

FinalBoot()
-- Chamado após o jogo carregar completamente (ZzzScene).
-- Example: function FinalBoot() end

LoadImages()
-- Chamado ao carregar imagens (BMD, etc.) - Data\Settings\Lua\Controller\LoadImages.lua.
-- Usa LoadImage(path, textureID), LoadImageByDir(path), UnloadImage(id).
-- Example: function LoadImages() LoadImage("Interface\\image.bmd", 40000) end

UnloadImages()
-- Chamado ao descarregar imagens (reload Lua).
-- Example: function UnloadImages() UnloadImage(40000) end

-- =============================================================
-- INPUT EVENTS
-- =============================================================

InterfaceClickEvent()
-- Chamado ao clicar com botão esquerdo na interface.
-- Example: function InterfaceClickEvent() return 1 end

InterfaceClickRightEvent()
-- Chamado ao clicar com botão direito na interface.
-- Example: function InterfaceClickRightEvent() return 1 end

UpdateMouse()
-- Chamado na atualização do mouse.
-- Example: function UpdateMouse() end

UpdateKey()
-- Chamado na atualização do teclado.
-- Example: function UpdateKey() end

MainProcWorldKey(Key)
-- Chamado ao pressionar tecla no mundo (Key = código VK: A-Z, 0-9, F1-F12).
-- Example: function MainProcWorldKey(Key) if Key == 65 then end end

ScrollMouse(Value)
-- Chamado ao usar scroll do mouse (Value = delta).
-- Example: function ScrollMouse(Value) end

-- =============================================================
-- RENDER MODEL (3D) - Helper System
-- =============================================================

RenderHelper(bmd, obj, itemType)
-- Chamado ao renderizar helper (ZzzObject).
-- Example: function RenderHelper(bmd, obj, itemType) end

-- =============================================================
-- ITEM DESCRIPTION
-- =============================================================

SetDescriptions(Line, ItemIndex, ItemObject)
-- Callback ao montar linhas da tooltip do item. Retorna Line (modificado).
-- Example: function SetDescriptions(Line, ItemIndex, ItemObject) return Line end

-- =============================================================
-- CUSTOM SYSTEM: CHAOS MACHINE GENESIS
-- =============================================================

ChaosMachineRender()
-- Chamado ao renderizar a Chaos Machine Genesis.
-- Example: function ChaosMachineRender() end

ChaosMachineUpdate()
-- Chamado na atualização da Chaos Machine Genesis.
-- Example: function ChaosMachineUpdate() end

ChaosMachineUpdateMouse()
-- Chamado na atualização do mouse na Chaos Machine Genesis.
-- Example: function ChaosMachineUpdateMouse() end

ChaosMachineScrolling(Value)
-- Chamado ao fazer scroll na Chaos Machine Genesis.
-- Example: function ChaosMachineScrolling(Value) end

ChaosMachineOpenning()
-- Chamado ao abrir a Chaos Machine Genesis.
-- Example: function ChaosMachineOpenning() end

ChaosMachineCheckCanMoveItem(ItemIndex)
-- Chamado para verificar se item pode ser movido na Genesis. Retorno 1 = permite.
-- Example: function ChaosMachineCheckCanMoveItem(ItemIndex) return 1 end

ChaosMachineMixResult(State)
-- Chamado ao exibir resultado do mix na Genesis.
-- Example: function ChaosMachineMixResult(State) end

-- =============================================================
-- NETWORK
-- =============================================================

ClientProtocol(Head, PacketName)
-- Chamado ao processar pacote custom no cliente (Head + PacketName).
-- Example: function ClientProtocol(Head, PacketName) end
