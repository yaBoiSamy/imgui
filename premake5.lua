project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.h",
        "*.cpp",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_opengl3.h"
    }

    includedirs {
        "./",
        "backends",
        "../glfw/include"
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter { "configurations:Debug" }
        runtime "Debug"

    filter { "configurations:Release" }
        runtime "Release"

    filter { "configurations:Dist" }
        runtime "Release"
