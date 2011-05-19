<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Generated by NCL Eclipse -->
<ncl id="main" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase>
			<region id="rgLua" width="100%" height="100%" left="0" top="0" zIndex="1">
				
			</region>
			<region id="rgVideo" width="100%" height="100%" zIndex="0">
				
			</region>
		</regionBase>
		
		<descriptorBase>
			<descriptor id="dLua" region="rgLua" focusIndex="luaIdx">
				
			</descriptor>
			
			<descriptor id="dVideo" region="rgVideo">
				
			</descriptor>
		</descriptorBase>
		
		<connectorBase>
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd"/>
				<simpleAction role="start"/>
			</causalConnector>	
			
			<causalConnector id="onKeySelectionStop">
				<connectorParam name="key"/>
				<simpleCondition role="onSelection" key="$key"/>
				<simpleAction role="stop"/>
			</causalConnector>
			
			<causalConnector id="onBeginStop">
				<simpleCondition role="onBegin"/>
				<simpleAction role="stop"/>
			</causalConnector>
		</connectorBase>			
	</head>

	<body>
<!--		<port id="pVideo" component="video1"/>-->
		<port id="pLua" component="lua"/>
		
		<media id="settings" type="application/x-ginga-settings">
			<property name="service.currentKeyMaster" value="luaIdx"/>
		</media>
		
<!--		<media id="video1" src="sbtvd-ts://0" descriptor="dVideo"> -->
<!--		</media>-->
		  
		<media id="lua" src="main.lua" descriptor="dLua">
			
		</media>
	</body>
</ncl>