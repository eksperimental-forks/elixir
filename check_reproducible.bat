@if defined ELIXIR_CLI_ECHO (@echo on) else (@echo off)

echo Diffing (Windows) ...
fc lib/elixir/ebin/* lib/elixir/tmp/ebin_reproducible/* &&
fc lib/eex/ebin/* lib/eex/tmp/ebin_reproducible/* &&
fc lib/ex_unit/ebin/* lib/ex_unit/tmp/ebin_reproducible/* &&
fc lib/iex/ebin/* lib/iex/tmp/ebin_reproducible/* &&
fc lib/logger/ebin/* lib/logger/tmp/ebin_reproducible/* &&
fc lib/mix/ebin/* lib/elixir/tmp/ebin_reproducible/* || exit /b
echo Builds are reproducible
echo ""
