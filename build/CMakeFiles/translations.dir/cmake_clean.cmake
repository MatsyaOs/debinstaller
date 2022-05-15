file(REMOVE_RECURSE
  "../translations/en_US.ts"
  "../translations/fr_FR.ts"
  "../translations/zh_CN.ts"
  "CMakeFiles/translations"
  "en_US.qm"
  "fr_FR.qm"
  "zh_CN.qm"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/translations.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
