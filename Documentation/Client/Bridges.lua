-- ### S63 CLIENT EVENTS (BRIDGES) ###
-- Generated on 2026-01-15 based on Main/source Generic_Call

-- Initialization / Loading
LoadImages() -- Called to load custom images
UnloadImages() -- Called to unload custom images
AfterScriptLoad() -- Called after Lua scripts are loaded

-- Protocol
ClientProtocol(head, packetName) -- Called when receiving data from server? (LuaSocket)

-- Main Loop / System
MainProc() -- Called in main frame loop
BeforeMainProc() -- Called before main processing
AfterMainProc() -- Called after main processing
FinalBoot() -- Called at end of booting?
UpdateMouse() -- Called to update mouse input
UpdateKey() -- Called to update key input
UpdateProc() -- Called for general updates

-- Input
MainProcWorldKey(vk) -- Called when a key is pressed in the world (vk = Virtual Key?)
InterfaceClickEvent() -- Called on Left Click?
InterfaceClickRightEvent() -- Called on Right Click?
ScrollMouse(MouseWheel) -- Called on Mouse Wheel scroll

-- Rendering / Helper
RenderHelper(b, o, Type) -- Called to render helper visual? (ZzzObject)

