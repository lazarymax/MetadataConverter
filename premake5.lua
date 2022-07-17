outdir = "%{cfg.system}/%{cfg.longname}/%{prj.name}"

workspace "MetadataBuilder"
    configurations {
        "Debug-x64", "Release-x64", "Dist-x64",
        "Debug-x86", "Release-x86", "Dist-x86"
    }

    filter "configurations:*86"
        architecture "x86"
        defines { "GE_X86" }
    filter "configurations:*64"
        architecture "x86_64"
        defines { "GE_X64" }

include "./crypto/Crypto"
include "./tool/Tool"