--[[ 
-- تم التعطيل والتعريب بواسطه @xXxDev_iqxXx

  _____              _           
|  ___|_ _  ___  __| | ___ _ __ 
| |_ / _` |/ _ \/ _` |/ _ \ '__|
|  _| (_| |  __/ (_| |  __/ |   
|_|  \__,_|\___|\__,_|\___|_|   
                    

]]-- 
do 
function run(msg, matches) 
local reply_id = msg['id'] 

local info = '🈷 - ٱيـۧډيک : '..msg.from.id..'\n'
..'🈶 - مۘعرفک : @'..msg.from.username..'\n'
..'🈸 - ٱسـۧمـک ٲلٲول : '..(msg.from.first_name or '')..'\n'
..'🈸 - ٱسـۧمـک ٲلثـآنيَ : '..(msg.from.lastname or '')..'\n'
..'🈚️ - ٱيډي ٱڵمجـمۄعة : '..msg.to.id..'\n'
..'📳 - ٱسـۨم ٱڵمجـمۄعة : '..msg.to.title..'\n'
..'📴 - رقــۖـمــۗـک : '..(msg.from.phone or " لُايَوَجْدِ ⛔️‼️"..'\n'
..'📨 - ٱڵـرسـآلـةٌ : '..msg.text..'\n'
..'🗣 - ٱنـۧت فـۖي : ' ..msg.to.type..'\n'
..'⏱ - ٲڵـوقـت : '..os.date(' %T', os.time()))..'\n'
..'📆 - ٱڵـتاريـخ : '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n' 
reply_msg(reply_id, info, ok_cb, false) 
end 

return { 
patterns = { 
"^معلوماتي" 
}, 
run = run 
} 

end 
