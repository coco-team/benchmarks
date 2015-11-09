function test_all(tool_path)

	execute_test(tool_path, 'AutoThrottle_Guide_100', {'constant'}, true);
	execute_test(tool_path, 'AutoThrottle_Guide_100_Env', {'constant'}, true);
	execute_test(tool_path, 'AutoThrottle_Guide_290', {'constant'}, true);
	execute_test(tool_path, 'Heading_Control_Guide_240', {'constant'}, true);
	execute_test(tool_path, 'Heading_Control_Guide_250', {'constant'}, true);
	execute_test(tool_path, 'Heading_Control_Guide_260', {'constant'}, true);
	execute_test(tool_path, 'Heading_Guide_110', {'constant'}, true);
	execute_test(tool_path, 'Longitudinal_Guide_120', {'constant'}, true);
	execute_test(tool_path, 'Longitudinal_Guide_130', {'constant'}, true);

end
