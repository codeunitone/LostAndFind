# Lost and Find('-')

This the Source Code to my "Lost and Find('-') blog bost on codeunitone.net

## Installation

Clone the repository and create `launch.json` in `.vscode` folder

Example:
```
{
	"version": "0.2.0",
	"configurations": [
		{
			"type": "al",
			"request": "launch",
			"name": "Your own server",
			"server": "<ReplaceWithYourServer>",
			"serverInstance": "<ReplaceWithCorrectServerInstance>",
			"authentication": "<ReplaceWithCorrectAuthentictionType>",
			"startupObjectId": 50100,
			"startupObjectType": "Page",
			"breakOnError": true,
			"launchBrowser": true,
			"enableLongRunningSqlStatements": true,
			"enableSqlInformationDebugger": true
		}
	]
}
```