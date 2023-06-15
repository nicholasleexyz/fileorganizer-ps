# fileorganizer-ps

Personal powershell script for organizing desktop on windows.
Paths in script currently are specific to my setup but can be easily modified.
When ran, desktop shortcuts get deleted because I never use them and they add a lot of clutter. To remove global desktop shortcut admin permmision is needed.

## Usage

### _archive prefix

For project directories that are not actively being changed.

Add "#" to the start of a directory to tag it as archived

```
#DIRECTORY_NAME
```

### _util prefix

For directories that contain reference documents or assets.

Add "@" to the start of a directory to tag it as archived

```
@DIRECTORY_NAME
```

### _scripts prefix

For scripty projects. Such as this one.

Add "$" to the start of a directory to tag it as archived

```
$DIRECTORY_NAME
```

### _active prefix

For project directories currently being worked on.

Add "!" to the start of a directory to tag it as archived

```
!DIRECTORY_NAME
```

### _misc prefix

Anything not starting with a previously mentioned prefix or an underscore will be moved to this directory.

## Running (pretty simple)

### PowerShell
```
.\run.bat
```

### CMD
``` cmd
run.bat
```
