<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='js/semi2joToto.js'></script>
<link rel='stylesheet' type='css/text' href='css/semi2joToto.css'>
</head>
<body>
	<div id="chart12"></div>
	<script>
		var options = {
			'legend':{
				names: ['Rating', 'Shooting', 'Passing', 'Dribbling', 'Speed', 'Heading'],
				hrefs: []
					},
			'dataset': {
				title: 'Web accessibility status',
				values: [[99, 99, 78, 55, 45, 89]], 
				bgColor: '#f9f9f9',
				fgColor: '#cc79a7'
			},
			'chartDiv': 'chart12',
			'chartType': 'radar',
			'chartSize': {width:600, height:300}
		};

		Nwagon.chart(options);
	</script>
</body>
</html>