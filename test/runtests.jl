using RegressionTables

tests = ["RegressionTables.jl"
		 ]

println("Running tests:")

for test in tests
	try
		include(test)
		println("\t\033[1m\033[32mPASSED\033[0m: $(test)")
	 catch e
	 	println("\t\033[1m\033[31mFAILED\033[0m: $(test)")
	 	showerror(STDOUT, e, backtrace())
	 	rethrow(e)
	 end
end
