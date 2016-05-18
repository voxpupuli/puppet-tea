# Matching the definition of stdlib's is_absolute_path
type Tea::Absolutepath_compat = Variant[::Tea::Windowspath, Pattern[/^\//]]
