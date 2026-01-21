project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.h",
        "*.cpp",
        "backends/imgui_impl_glfw.*",
        "backends/imgui_impl_opengl3.*"
    }

    includedirs {
        "./",
        "backends",
        "../glfw/include"
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "Off"

    filter { "configurations:Debug" }
        runtime "Debug"

    filter { "configurations:Release" }
        runtime "Release"

    filter { "configurations:Dist" }
        runtime "Release"
