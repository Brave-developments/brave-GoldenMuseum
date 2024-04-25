Forked from IC7 https://github.com/ic71/ic7-GoldenMuseum

Golden Museum Robbery

You can edit everything from config.lua

Video: https://streamable.com/l7etc7

Requirements:

* [qb-core](https://github.com/qbcore-framework/qb-core)
* [Memorygame](https://github.com/pushkart2/memorygame)
* [qb-target](https://github.com/qbcore-framework/qb-target)
* [ps-dispatch](https://github.com/Project-Sloth/ps-dispatch)
* [qb-doorlock](https://github.com/qbcore-framework/qb-doorlock)

Installation Instructions:

Add this code to qb-core/shared/items.lua:


```lua
--brave
['burial'] = {['name'] = 'burial', ['label'] = 'Egyptian Artifact', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'burial-mask.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'An Egyptian artifact from the Golden Museum'},
['fishingchest'] = {['name'] = 'fishingchest', ['label'] = 'Artifact Chest', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'fishingchest.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Artifact chest from the Golden Museum'},
['greek'] = {['name'] = 'greek', ['label'] = 'Ancient Statue', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'greek-bust.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Ancient statue from the Golden Museum'},
['jadeite'] = {['name'] = 'jadeite', ['label'] = 'Green Diamond', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'jadeite-stone.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Green diamond from the Golden Museum'},
['mask'] = {['name'] = 'mask', ['label'] = 'Golden Mask', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'vip_mask.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Golden mask from the Golden Museum'},
['vanpogo'] = {['name'] = 'vanpogo', ['label'] = 'Golden Statue', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'vanpogo.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Golden statue from the Golden Museum'},
--brave

```
2.Add the img folder to qb-inventory/html/images.
3.Add this code to qb-doorlock/configs:
```lua
['brave'] = {
    locked = true,
    authorizedJobs = { ['police'] = 0 },
    doorType = 'double',
    doorLabel = 'brave',
    doors = {
        {objName = -881481405, objYaw = 0.0, objCoords = vec3(-554.572510, -617.887939, 35.073013)},
        {objName = -881481405, objYaw = 180.00001525879, objCoords = vec3(-556.532288, -617.896790, 35.078335)}
    },
    doorRate = 1.0,
    distance = 2,
    maxDistance = 2.5,
    lockpick = false,
    audioRemote = false,
    slides = false
      --oldMethod = true,
    --audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
    --audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
    --autoLock = 1000,
    --doorRate = 1.0,
    --showNUI = true
}

```


4. Add this code in ps-dispatch/client/cl_eventhandlers.lua
```lua
local function goldenmuseum()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local gender = GetPedGender()
    TriggerServerEvent("dispatch:server:notify",{
        dispatchcodename = "goldenmuseum", 
        dispatchCode = "10-90",
        firstStreet = locationInfo,
        gender = gender,
        model = nil,
        plate = nil,
        priority = 2, 
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = _U('Golden Museum Robbery'), 
        job = {"LEO", "police"} 
    })
end 
exports('goldenmuseum', goldenmuseum)

```
5. Add this code in ps-dispatch/server/sv_dispatchcodes.lua

```lua
["goldenmuseum"] =  {displayCode = '10-90', description = "Golden Museum Robbery In Progress", radius = 0, recipientList = {'LEO', 'police'}, blipSprite = 124, blipColour = 59, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false"},
```
rewritten By Brave

