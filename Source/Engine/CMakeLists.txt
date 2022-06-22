project(zombie-grinder-source-engine CXX)

find_package(libpng CONFIG REQUIRED)
find_package(ZLIB REQUIRED)
find_package(freetype CONFIG REQUIRED)
find_package(unofficial-libsquish CONFIG REQUIRED)
find_package(Vorbis CONFIG REQUIRED)
find_package(unofficial-theora CONFIG REQUIRED)

add_library(
        Engine
        STATIC

        Audio/AudioRenderer.cpp
        Audio/AudioRenderer.h
        Audio/Banks/AudioBankFactory.h
        Audio/FMod/FMod_AudioRenderer.cpp
        Audio/FMod/FMod_AudioRenderer.h
        Audio/FMod/FMod_Sound.cpp
        Audio/FMod/FMod_Sound.h
        Audio/FMod/FMod_SoundChannel.cpp
        Audio/FMod/FMod_SoundChannel.h
        Audio/FMod/FMod_SoundFactory.cpp
        Audio/FMod/FMod_SoundFactory.h

        Audio/Null/Null_AudioRenderer.h
        Audio/Null/Null_Sound.cpp
        Audio/Null/Null_Sound.h
        Audio/Null/Null_SoundChannel.cpp
        Audio/Null/Null_SoundChannel.h
        Audio/Null/Null_SoundFactory.cpp
        Audio/Null/Null_SoundFactory.h
        Audio/Sounds/Sound.cpp
        Audio/Sounds/Sound.h
        Audio/Sounds/SoundChannel.cpp
        Audio/Sounds/SoundChannel.h
        Audio/Sounds/SoundFactory.cpp
        Audio/Sounds/SoundFactory.h
        Audio/Sounds/SoundHandle.cpp
        Audio/Sounds/SoundHandle.h

        Config/ConfigFile.cpp
        Config/ConfigFile.h
        Config/XMLConfig.cpp
        Config/XMLFile.h

        Crypto/CryptoStream.h
        Crypto/CryptoStream.cpp

        Demo/DemoManager.h
        Demo/DemoManager.cpp

        Display/GfxDisplay.h
        Display/GfxDisplay.cpp
        Display/Linux/Linux_GfxDisplay.h
        Display/Linux/Linux_GfxDisplay.cpp
        Display/MacOS/MacOS_GfxDisplay.h
        Display/Null/Null_GfxDisplay.h
        Display/Null/Null_GfxDisplay.cpp
        Display/Win32/Win32_GfxDisplay.h
        Display/Win32/Win32_GfxDisplay.cpp
        Engine/EngineOptions.cpp
        Engine/EngineOptions.h
        Engine/EngineTagReplacer.cpp
        Engine/EngineTagReplacer.h
        Engine/FrameStats.cpp
        Engine/FrameStats.h
        Engine/FrameTime.cpp
        Engine/FrameTime.h
        Engine/GameEngine.cpp
        Engine/GameEngine.h
        Engine/GameRunner.cpp
        Engine/GameRunner.h
        GeoIP/GeoIPManager.h
        GeoIP/GeoIPManager.cpp

        Input/InputSource.h
        Input/JoystickState.h
        Input/InputBindings.h
        Input/InputBindings.cpp
        Input/MouseState.h
        Input/Input.h
        Input/OutputBindings.h
        Input/Input.cpp
        Input/KeyboardState.h
        Input/Linux/Linux_Input.cpp
        Input/Linux/Linux_Input.h
        Input/Linux/Linux_JoystickState.cpp
        Input/Linux/Linux_JoystickState.h
        Input/Linux/Linux_KeyboardState.cpp
        Input/Linux/Linux_KeyboardState.h
        Input/Linux/Linux_MouseState.cpp
        Input/Linux/Linux_MouseState.h
        Input/MacOS/MacOS_Input.cpp
        Input/MacOS/MacOS_Input.h
        Input/MacOS/MacOS_JoystickState.h
        Input/MacOS/MacOS_KeyboardState.h
        Input/MacOS/MacOS_MouseState.cpp
        Input/MacOS/MacOS_MouseState.h
        Input/Null/Null_Input.cpp
        Input/Null/Null_Input.h
        Input/Null/Null_JoystickState.cpp
        Input/Null/Null_JoystickState.h
        Input/Null/Null_KeyboardState.cpp
        Input/Null/Null_KeyboardState.h
        Input/Null/Null_MouseState.cpp
        Input/Null/Null_MouseState.h
        Input/Steam/Steam_Input.h
        Input/Steam/Steam_JoystickState.cpp
        Input/Steam/Steam_JoystickState.h
        Input/Steam/Steam_Input.cpp
        Input/Win32/Win32_Input.cpp
        Input/Win32/Win32_Input.h
        Input/Win32/Win32_JoystickState.cpp
        Input/Win32/Win32_JoystickState.h
        Input/Win32/Win32_KeyboardState.cpp
        Input/Win32/Win32_KeyboardState.h
        Input/Win32/Win32_MouseState.cpp
        Input/Win32/Win32_MouseState.h

        IO/CompressedStream.cpp
        IO/CompressedStream.h
        IO/DataFactory.cpp
        IO/DataFactory.h
        IO/FileWatcher.cpp
        IO/BitStream.h
        IO/BinaryStream.h
        IO/BinaryStream.cpp
        IO/PatchedBinaryStream.cpp
        IO/PatchedBinaryStream.h
        IO/Stream.cpp
        IO/Stream.h
        IO/StreamFactory.cpp
        IO/StreamFactory.h
        IO/FileWatcher.h
        IO/Linux/Linux_FileStream.h
        IO/Linux/Linux_FileStreamFactory.cpp
        IO/Linux/Linux_FileStreamFactory.h
        IO/Linux/Linux_FileStream.cpp
        IO/MacOS/MacOS_FileStream.h
        IO/MacOS/MacOS_FileStreamFactory.cpp
        IO/MacOS/MacOS_FileStreamFactory.h
        IO/MacOS/MacOS_FileStream.cpp
        IO/Win32/Win32_FileStream.h
        IO/Win32/Win32_FileStreamFactory.cpp
        IO/Win32/Win32_FileStreamFactory.h
        IO/Win32/Win32_FileStream.cpp

        Localise/Language.cpp
        Localise/Language.h
        Localise/LanguageFactory.cpp
        Localise/LanguageFactory.h
        Localise/LanguageHandle.cpp
        Localise/LanguageHandle.h
        Localise/Locale.cpp
        Localise/Locale.h

        Network/NetClient.cpp
        Network/NetClient.h
        Network/NetConnection.cpp
        Network/NetConnection.h
        Network/NetConnectionTypes.h
        Network/NetFileTransfer.cpp
        Network/NetAddress.h
        Network/NetManager.cpp
        Network/NetManager.h
        Network/NetPacket.cpp
        Network/NetPacket.h
        Network/NetServer.cpp
        Network/NetServer.h
        Network/NetUser.cpp
        Network/NetUser.h
        Network/NetWebRequest.cpp
        Network/NetWebRequest.h
        Network/NetAddress.cpp
        Network/NetFileTransfer.h
        Network/BSD/BSD_NetConnection.h
        Network/BSD/BSD_NetConnection.cpp
        Network/Packets/EnginePackets.cpp
        Network/Packets/EnginePackets.h
        Network/Packets/PacketDispatcher.cpp
        Network/Packets/PacketDispatcher.h
        Network/Steamworks/Steamworks_NetConnection.h
        Network/Steamworks/Steamworks_NetConnection.cpp

        Online/OnlineAchievements.h
        Online/OnlineClient.h
        Online/OnlineGameServerFinder.cpp
        Online/OnlineGameServerFinder.h
        Online/OnlineGlobalChat.cpp
        Online/OnlineGlobalChat.h
        Online/OnlineInventory.cpp
        Online/OnlineInventory.h
        Online/OnlineMatching.cpp
        Online/OnlineAchievements.cpp
        Online/OnlineMods.cpp
        Online/OnlineMods.h
        Online/OnlinePlatform.cpp
        Online/OnlinePlatform.h
        Online/OnlineRankings.cpp
        Online/OnlineRankings.h
        Online/OnlineServer.h
        Online/OnlineUser.cpp
        Online/OnlineUser.h
        Online/OnlineVoiceChat.cpp
        Online/OnlineVoiceChat.h
        Online/OnlineMatching.h
        Online/Steamworks_OnlineClient.h
        Online/Steamworks/Steamworks_OnlineAchievements.cpp
        Online/Steamworks/Steamworks_OnlineAchievements.h
        Online/Steamworks/Steamworks_OnlineClient.cpp
        Online/Steamworks/Steamworks_OnlineClient.h
        Online/Steamworks/Steamworks_OnlineGlobalChat.cpp
        Online/Steamworks/Steamworks_OnlineGlobalChat.h
        Online/Steamworks/Steamworks_OnlineInventory.cpp
        Online/Steamworks/Steamworks_OnlineInventory.h
        Online/Steamworks/Steamworks_OnlineMatching.cpp
        Online/Steamworks/Steamworks_OnlineMatching.h
        Online/Steamworks/Steamworks_OnlineMods.cpp
        Online/Steamworks/Steamworks_OnlineMods.h
        Online/Steamworks/Steamworks_OnlinePlatform.cpp
        Online/Steamworks/Steamworks_OnlinePlatform.h
        Online/Steamworks/Steamworks_OnlineRankings.cpp
        Online/Steamworks/Steamworks_OnlineRankings.h
        Online/Steamworks/Steamworks_OnlineServer.cpp
        Online/Steamworks/Steamworks_OnlineServer.h
        Online/Steamworks/Steamworks_OnlineUser.cpp
        Online/Steamworks/Steamworks_OnlineUser.h
        Online/Steamworks/Steamworks_OnlineVoiceChat.cpp
        Online/Steamworks/Steamworks_OnlineVoiceChat.h

        Options/Option.cpp
        Options/OptionCommandLineParser.h
        Options/OptionRegistry.cpp
        Options/OptionRegistry.h
        Options/OptionCommandLineParser.cpp
        Options/Option.h
        Options/Types/BoolOption.cpp
        Options/Types/BoolOption.h
        Options/Types/FloatOption.cpp
        Options/Types/FloatOption.h
        Options/Types/IntOption.cpp
        Options/Types/IntOption.h
        Options/Types/LongOption.cpp
        Options/Types/LongOption.h
        Options/Types/StringOption.cpp
        Options/Types/StringOption.h
        Options/Types/StructListOption.cpp
        Options/Types/StructListOption.h

        Particles/ParticleFX.cpp
        Particles/ParticleFX.h
        Particles/ParticleFXFactory.cpp
        Particles/ParticleFXFactory.h
        Particles/ParticleFXHandle.cpp
        Particles/ParticleFXHandle.h
        Particles/ParticleManager.cpp
        Particles/ParticleManager.h

        Platform/Platform.h
        Platform/Platform.cpp
        Platform/Linux/Linux_DwarfUtils.h
        Platform/Linux/Linux_EntryPoint.cpp
        Platform/Linux/Linux_EntryPoint.h
        Platform/Linux/Linux_Platform.cpp
        Platform/Linux/Linux_Platform.h
        Platform/Linux/Linux_DwarfUtils.cpp
        Platform/MacOS/MacOS_EntryPoint.h
        Platform/MacOS/MacOS_Platform.cpp
        Platform/MacOS/MacOS_Platform.h
        Platform/Win32/Win32_EntryPoint.h
        Platform/Win32/win32_platform.cpp
        Platform/Win32/Win32_Platform.h
        Platform/Win32/Win32_EntryPoint.cpp

        Profiling/ProfilingManager.h
        Profiling/ProfilingManager.cpp

        Renderer/Material.cpp
        Renderer/Material.h
        Renderer/Geometry.h
        Renderer/Drawable.h
        Renderer/PrimitiveRenderer.cpp
        Renderer/PrimitiveRenderer.h
        Renderer/Drawable.cpp
        Renderer/RenderBatch.h
        Renderer/Renderer.cpp
        Renderer/Renderer.h
        Renderer/RendererTypes.h
        Renderer/RenderPipeline.cpp
        Renderer/RenderPipeline.h
        Renderer/RenderPipelineTypes.h
        Renderer/RenderQuery.h
        Renderer/Canvas.h
        Renderer/Canvas.cpp
        Renderer/RenderBatch.cpp
        Renderer/Atlases/Atlas.cpp
        Renderer/Atlases/Atlas.h
        Renderer/Atlases/AtlasFactory.cpp
        Renderer/Atlases/AtlasFactory.h
        Renderer/Atlases/AtlasHandle.cpp
        Renderer/Atlases/AtlasHandle.h
        Renderer/Atlases/AtlasRenderer.cpp
        Renderer/Atlases/AtlasRenderer.h
        Renderer/Atlases/AtlasResourceCompiler.h
        Renderer/Null/Null_Geometry.cpp
        Renderer/Null/Null_Geometry.h
        Renderer/Null/Null_Renderer.cpp
        Renderer/Null/Null_Renderer.h
        Renderer/Null/Null_RenderTarget.cpp
        Renderer/Null/Null_RenderTarget.h
        Renderer/Null/Null_ShaderProgram.cpp
        Renderer/Null/Null_ShaderProgram.h
        Renderer/Null/Null_Texture.cpp
        Renderer/Null/Null_Texture.h
        Renderer/OpenGL/OpenGL_Geometry.cpp
        Renderer/OpenGL/OpenGL_Geometry.h
        Renderer/OpenGL/OpenGL_Light.cpp
        Renderer/OpenGL/OpenGL_Light.h
        Renderer/OpenGL/OpenGL_Renderer.cpp
        Renderer/OpenGL/OpenGL_Renderer.h
        Renderer/OpenGL/OpenGL_RenderQuery.cpp
        Renderer/OpenGL/OpenGL_RenderQuery.h
        Renderer/OpenGL/OpenGL_RenderTarget.cpp
        Renderer/OpenGL/OpenGL_RenderTarget.h
        Renderer/OpenGL/OpenGL_ShaderProgram.cpp
        Renderer/OpenGL/OpenGL_ShaderProgram.h
        Renderer/OpenGL/OpenGL_Texture.cpp
        Renderer/OpenGL/OpenGL_Texture.h
        Renderer/Shaders/Shader.cpp
        Renderer/Shaders/Shader.h
        Renderer/Shaders/ShaderFactory.cpp
        Renderer/Shaders/ShaderFactory.h
        Renderer/Shaders/ShaderProgram.cpp
        Renderer/Shaders/ShaderProgram.h
        Renderer/Shaders/ShaderProgramHandle.cpp
        Renderer/Shaders/ShaderProgramHandle.h
        Renderer/Text/Font.h
        Renderer/Text/FontBuffer.cpp
        Renderer/Text/FontBuffer.h
        Renderer/Text/Font.cpp
        Renderer/Text/FontFactory.h
        Renderer/Text/FontHandle.cpp
        Renderer/Text/FontHandle.h
        Renderer/Text/FontRenderer.cpp
        Renderer/Text/FontRenderer.h
        Renderer/Text/FontFactory.cpp
        Renderer/Text/MarkupFontRenderer.cpp
        Renderer/Text/MarkupFontRenderer.h
        Renderer/Text/TagReplacer.cpp
        Renderer/Text/TagReplacer.h
        Renderer/Text/TextBuffer.h
        Renderer/Text/TextManager.cpp
        Renderer/Text/TextManager.h
        Renderer/Text/TextModifier.h
        Renderer/Text/FreeType/FreeType_Font.h
        Renderer/Text/FreeType/FreeType_FontFactory.cpp
        Renderer/Text/FreeType/FreeType_FontFactory.h
        Renderer/Text/FreeType/FreeType_Font.cpp
        Renderer/Textures/PixelmapFactory.cpp
        Renderer/Textures/PixelmapFactory.h
        Renderer/Textures/PixelmapFormat.h
        Renderer/Textures/Pixelmap.h
        Renderer/Textures/Pixelmap.cpp
        Renderer/Textures/RawPixmapFactory.cpp
        Renderer/Textures/RawPixmapFactory.h
        Renderer/Textures/RenderTarget.cpp
        Renderer/Textures/RenderTarget.h
        Renderer/Textures/Texture.cpp
        Renderer/Textures/Texture.h
        Renderer/Textures/TextureAtlas.cpp
        Renderer/Textures/TextureAtlas.h
        Renderer/Textures/TextureFactory.cpp
        Renderer/Textures/TextureFactory.h
        Renderer/Textures/TextureFormat.h
        Renderer/Textures/TextureHandle.cpp
        Renderer/Textures/TextureHandle.h
        Renderer/Textures/PNG/PNGPixelmapFactory.h
        Renderer/Textures/PNG/PNGTexture.h
        Renderer/Textures/PNG/PNGPixelmapFactory.cpp

        Resources/PackageFile.cpp
        Resources/PackageFile.h
        Resources/PackageFileStream.cpp
        Resources/PackageFileStream.h
        Resources/Reloadable.cpp
        Resources/Reloadable.h
        Resources/ResourceCompiler.h
        Resources/ResourceFactory.cpp
        Resources/ResourceFactory.h
        Resources/ResourceLoadTask.cpp
        Resources/ResourceLoadTask.h
        Resources/Compiled/CompiledPixelmap.h
        Resources/Compiled/Atlases/CompiledAtlas.h
        Resources/Compiled/Audio/CompiledAudio.h
        Resources/Compiled/Fonts/CompiledFont.h
        Resources/Compiled/Languages/CompiledLanguage.h
        Resources/Compiled/Layouts/CompiledLayout.h
        Resources/Compiled/Maps/CompiledMap.h
        Resources/Compiled/ParticleFX/CompiledParticleFX.h
        Resources/Compiled/Raw/CompiledRaw.h
        Resources/Compiled/Scripts/CompiledScript.h
        Resources/Compiled/Shaders/CompiledShader.h

        Scene/Animation.h
        Scene/Animation.cpp
        Scene/Light.cpp
        Scene/Light.h
        Scene/Actor.h
        Scene/Actor.cpp
        Scene/Camera.h
        Scene/Camera.cpp
        Scene/Scene.cpp
        Scene/Scene.h
        Scene/Tickable.cpp
        Scene/Tickable.h
        Scene/Collision/CollisionHashTable.h
        Scene/Collision/CollisionManager.cpp
        Scene/Collision/CollisionManager.h
        Scene/Collision/CollisionHashTable.cpp
        Scene/Map/Map.cpp
        Scene/Map/Map.h
        Scene/Map/MapCache.cpp
        Scene/Map/MapCache.h
        Scene/Map/MapFile.cpp
        Scene/Map/MapFile.h
        Scene/Map/MapFileFactory.cpp
        Scene/Map/MapFileFactory.h
        Scene/Map/MapFileHandle.cpp
        Scene/Map/MapFileHandle.h
        Scene/Map/MapLoader.cpp
        Scene/Map/MapLoader.h
        Scene/Map/MapSaver.cpp
        Scene/Map/MapSaver.h
        Scene/Map/Blocks/MapFileBlock.cpp
        Scene/Map/Blocks/MapFileBlock.h

        Scene/Map/Blocks/MapFileHeaderBlock.cpp
        Scene/Map/Blocks/MapFileHeaderBlock.h
        Scene/Map/Blocks/MapFilePreviewBlock.cpp
        Scene/Map/Blocks/MapFilePreviewBlock.h
        Scene/Pathing/PathManager.h
        Scene/Pathing/PathManager.cpp
        Scene/PostProcess/PostProcessManager.h

        Scripts/EngineVirtualMachine.h
        Scripts/EngineVirtualMachine.cpp
        Scripts/Script.cpp
        Scripts/Script.h
        Scripts/ScriptFactory.cpp
        Scripts/ScriptFactory.h
        Scripts/ScriptHandle.cpp
        Scripts/ScriptHandle.h
        Scripts/Runtime/CRuntime_Audio.cpp
        Scripts/Runtime/CRuntime_Audio.h
        Scripts/Runtime/CRuntime_Audio_Channel.cpp
        Scripts/Runtime/CRuntime_Audio_Channel.h
        Scripts/Runtime/CRuntime_Canvas.cpp
        Scripts/Runtime/CRuntime_Canvas.h
        Scripts/Runtime/CRuntime_Display.cpp
        Scripts/Runtime/CRuntime_Display.h
        Scripts/Runtime/CRuntime_Locale.cpp
        Scripts/Runtime/CRuntime_Locale.h

        Storage/PersistentStorage.h
        Storage/PersistentStorage.cpp
        Storage/Steamworks/Steamworks_PersistentStorage.h
        Storage/Steamworks/Steamworks_PersistentStorage.cpp

        Tasks/GroupTask.h
        Tasks/Task.cpp
        Tasks/Task.h
        Tasks/TaskManager.cpp
        Tasks/TaskManager.h
        Tasks/GroupTask.cpp

        UI/UIElement.cpp
        UI/UIElement.h
        UI/UIEvent.cpp
        UI/UIEvent.h
        UI/UIEventList.inc
        UI/UIFrame.cpp
        UI/UIFrame.h
        UI/UIManager.cpp
        UI/UIManager.h
        UI/UIScene.cpp
        UI/UIScene.h
        UI/UITransition.cpp
        UI/UITransition.h
        UI/Elements/UIButton.cpp
        UI/Elements/UIButton.h
        UI/Elements/UICheckBox.cpp
        UI/Elements/UICheckBox.h
        UI/Elements/UIComboBox.cpp
        UI/Elements/UIComboBox.h
        UI/Elements/UICurveEditor.cpp
        UI/Elements/UICurveEditor.h
        UI/Elements/UIDropDownCombo.cpp
        UI/Elements/UIDropDownCombo.h
        UI/Elements/UIDropDownMenu.cpp
        UI/Elements/UIDropDownMenu.h
        UI/Elements/UIElementDefinitions.inc
        UI/Elements/UIFileBrowser.cpp
        UI/Elements/UIFileBrowser.h
        UI/Elements/UIGrid.cpp
        UI/Elements/UIGrid.h
        UI/Elements/UIGridTree.cpp
        UI/Elements/UIGridTree.h
        UI/Elements/UILabel.cpp
        UI/Elements/UILabel.h
        UI/Elements/UIListView.cpp
        UI/Elements/UIListView.h
        UI/Elements/UIMenuBar.cpp
        UI/Elements/UIMenuBar.h
        UI/Elements/UIMenuItem.cpp
        UI/Elements/UIMenuItem.h
        UI/Elements/UIPanel.cpp
        UI/Elements/UIPanel.h
        UI/Elements/UIProgressBar.cpp
        UI/Elements/UIProgressBar.h
        UI/Elements/UIPropertyGrid.cpp
        UI/Elements/UIPropertyGrid.h
        UI/Elements/UIResourceBrowser.cpp
        UI/Elements/UIResourceBrowser.h
        UI/Elements/UISimpleListView.cpp
        UI/Elements/UISimpleListView.h
        UI/Elements/UISlider.cpp
        UI/Elements/UISlider.h
        UI/Elements/UISplitContainer.cpp
        UI/Elements/UISplitContainer.h
        UI/Elements/UISplitContainerItem.cpp
        UI/Elements/UISplitContainerItem.h
        UI/Elements/UITextBox.cpp
        UI/Elements/UITextBox.h
        UI/Elements/UITextPanel.cpp
        UI/Elements/UITextPanel.h
        UI/Elements/UIToolbar.cpp
        UI/Elements/UIToolbar.h
        UI/Elements/UIToolbarItem.cpp
        UI/Elements/UIToolbarItem.h
        UI/Elements/UITreeView.cpp
        UI/Elements/UITreeView.h
        UI/Layouts/UILayout.h
        UI/Layouts/UILayoutFactory.cpp
        UI/Layouts/UILayoutFactory.h
        UI/Layouts/UILayoutHandle.cpp
        UI/Layouts/UILayoutHandle.h
        UI/Layouts/UILayout.cpp
        UI/Transitions/UIFadeInToNewTransition.cpp
        UI/Transitions/UIFadeInToNewTransition.h
        UI/Transitions/UIFadeInTransition.cpp
        UI/Transitions/UIFadeInTransition.h
        UI/Transitions/UIFadeOutToNewTransition.cpp
        UI/Transitions/UIFadeOutToNewTransition.h
        UI/Transitions/UIFadeOutTransition.cpp
        UI/Transitions/UIFadeOutTransition.h
        UI/Transitions/UIFadeTopLevelTransition.cpp
        UI/Transitions/UIFadeTopLevelTransition.h
        UI/Transitions/UIFadeTransition.cpp
        UI/Transitions/UIFadeTransition.h
        UI/Transitions/UISlideInTopLevelTransition.cpp
        UI/Transitions/UISlideInTopLevelTransition.h
        UI/Transitions/UISlideInTransition.cpp
        UI/Transitions/UISlideInTransition.h

        Video/Video.cpp
        Video/Video.h
        Video/VideoFactory.cpp
        Video/VideoFactory.h
        Video/VideoHandle.cpp
        Video/VideoHandle.h
        Video/VideoRecorder.cpp
        Video/VideoRecorder.h
        Video/VideoRenderer.cpp
        Video/VideoRenderer.h
        Video/Theora/Theora_VideoRenderer.h
        Video/Theora/Theora_VideoRenderer.cpp
        Version.cpp Version.h)

force_include(Engine ${CMAKE_SOURCE_DIR}/Source/Generic/Defines.h)

target_include_directories(
        Engine
        PRIVATE ${CMAKE_SOURCE_DIR}/ThirdParty
        PRIVATE ${CMAKE_SOURCE_DIR}/ThirdParty/libtheoraplayer/include
        PRIVATE ${CMAKE_SOURCE_DIR}/steamworks_sdk_154/sdk
)

target_link_libraries(
        Engine

        PRIVATE ZLIB::ZLIB
        PRIVATE png
        PRIVATE freetype
        PRIVATE unofficial::libsquish::squish
        PRIVATE Vorbis::vorbis Vorbis::vorbisenc Vorbis::vorbisfile
        PRIVATE unofficial::theora::theora unofficial::theora::theoradec unofficial::theora::theoraenc

        PRIVATE Generic
        PRIVATE XScript
        PRIVATE LibGeoIP
        PRIVATE libtheoraplayer
        PRIVATE cryptocpp
)

#target_link_libraries(Engine PRIVATE png)
#target_link_libraries(Engine PRIVATE freetype)
#target_link_libraries(Engine PRIVATE unofficial::libsquish::squish)
#target_link_libraries(Engine PRIVATE Vorbis::vorbis Vorbis::vorbisenc Vorbis::vorbisfile)
#target_link_libraries(Engine PRIVATE unofficial::theora::theora unofficial::theora::theoradec unofficial::theora::theoraenc)
#target_link_libraries(Engine PRIVATE unofficial::mongoose::mongoose)
