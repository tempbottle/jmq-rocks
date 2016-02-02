{
    "targets": [{
      "target_name": "junglemq-rocksdb"
    , "conditions": [
          ["OS == 'win'", {
              "defines": [
                  "_HAS_EXCEPTIONS=0"
              ]
            , "msvs_settings": {
                  "VCCLCompilerTool": {
                      "RuntimeTypeInfo": "false"
                    , "EnableFunctionLevelLinking": "true"
                    , "ExceptionHandling": "2"
                    , "DisableSpecificWarnings": [ "4355", "4530" ,"4267", "4244", "4506" ]
                  }
              }
          }, { # OS != "win"
              'cflags': [
                  '-std=gnu++0x'
                , '-fno-omit-frame-pointer'
                , '-momit-leaf-frame-pointer'
                , '-Woverloaded-virtual'
                , '-Wno-ignored-qualifiers'
                , '-Wno-type-limits'
                , '-Wno-unused-variable'
                , '-fPIC'
              ]
            , 'cflags!': [
                  '-fno-exceptions'
                , '-fno-rtti'
              ]
            , 'cflags_cc!': [
                  '-fno-exceptions'
                , '-fno-rtti'
              ]
          }]
        , ['OS == "linux"', {
              'cflags': [
                  '-Wno-unused-local-typedefs'
              ]
          }]
        , ['OS == "mac"', {
              'xcode_settings': {
                  'WARNING_CFLAGS': [
                     '-Wno-ignored-qualifiers'
                  ]
                , 'OTHER_CPLUSPLUSFLAGS': [
                      '-mmacosx-version-min=10.7'
                    , '-std=c++11'
                    , '-stdlib=libc++'
                  ]
                , 'GCC_ENABLE_CPP_EXCEPTIONS': 'YES'
                , 'MACOSX_DEPLOYMENT_TARGET': '10.7'
              }
          }]
        ]
      , "dependencies": [
            "<(module_root_dir)/deps/rocksdb/rocksdb.gyp:rocksdb"
        ]
      , "include_dirs"  : [
            "<!(node -e \"require('nan')\")"
        ]
      , "sources": [
            "src/test.cc"
        ]
    }]
}
