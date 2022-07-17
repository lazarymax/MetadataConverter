project "Crypto"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    systemversion "latest"
    location "%{wks.location}/crypto"
    systemversion "latest"

    debugdir("%{wks.location}/bin/"..outdir)
    targetdir("%{wks.location}/bin/"..outdir)
    objdir("%{wks.location}/bin-int/"..outdir)

    files {
        "%{prj.location}/**.c",
        "%{prj.location}/**.cpp",
        "%{prj.location}/**.h",
        "%{prj.location}/**.hpp"
    }