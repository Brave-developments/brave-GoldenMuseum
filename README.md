Forked from IC7 https://github.com/ic71/ic7-GoldenMuseum

Updates made
Item Removal Verification:
Enhanced Error Handling
Nested Callback Optimization
Improved Player Notifications
Mini-Game Integration
Added Global cooldown
Minor Optimization

Golden Museum Robbery

You can edit everything from config.lua

Video: 

Requirements:

* [qb-core](https://github.com/qbcore-framework/qb-core)
* [Memorygame](https://github.com/pushkart2/memorygame)
* [qb-target](https://github.com/qbcore-framework/qb-target)
* [ps-dispatch](https://github.com/Project-Sloth/ps-dispatch)
* [qb-doorlock](https://github.com/qbcore-framework/qb-doorlock)

Installation Instructions:

Add this code to qb-core/shared/items.lua:


```lua
--brave GoldenMuseum robbery
['burial'] = {['name'] = 'burial', ['label'] = 'Egyptian Artifact', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'burial-mask.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'An Egyptian artifact from the Golden Museum'},
['fishingchest'] = {['name'] = 'fishingchest', ['label'] = 'Artifact Chest', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'fishingchest.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Artifact chest from the Golden Museum'},
['greek'] = {['name'] = 'greek', ['label'] = 'Ancient Statue', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'greek-bust.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Ancient statue from the Golden Museum'},
['jadeite'] = {['name'] = 'jadeite', ['label'] = 'Green Diamond', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'jadeite-stone.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Green diamond from the Golden Museum'},
['mask'] = {['name'] = 'mask', ['label'] = 'Golden Mask', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'vip_mask.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Golden mask from the Golden Museum'},
['vanpogo'] = {['name'] = 'vanpogo', ['label'] = 'Golden Statue', ['weight'] = 1000, ['type'] = 'item', ['image'] = 'vanpogo.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Golden statue from the Golden Museum'},


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
    audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
    audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
    --autoLock = 1000,
    --doorRate = 1.0,
    --showNUI = true
}

```


4. Add this code in ps-dispatch/client/alerts.lua
```lua
local function goldenmuseum()
    local coords = GetEntityCoords(cache.ped)  -- Ensure 'cache.ped' is defined or passed into this function

    local dispatchData = {
        message = "goldenmuseum", 
        codeName = 'goldenmuseum',
        code = '10-90',
        icon = 'fas fa-vault',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(),  -- Ensure this function is accessible
        street = GetStreetAndZone(coords),  -- Ensure this function is accessible
        camId = camId,  -- Ensure 'camId' is defined or passed into this function
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerServerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('goldenmuseum', goldenmuseum)

```
5. Add this code in ps-dispatch/shared/config.lia

```lua
  ['goldenmuseum'] = {
        radius = 0,
        sprite = 500,
        color = 2,
        scale = 1.5,
        length = 2,
        sound = 'robberysound',
        offset = false,
        flash = false
    },
```
rewritten By Brave

