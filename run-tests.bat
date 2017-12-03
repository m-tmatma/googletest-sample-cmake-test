@echo off
for /r %%i in (tests*.exe) do (
	echo %%i
	
	%%i --gtest_list_tests
	%%i
)
