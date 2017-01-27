--[[ 
-- تم التعطيل والتعريب بواسطه @xXxDev_iqxXx

  _____              _           
|  ___|_ _  ___  __| | ___ _ __ 
| |_ / _` |/ _ \/ _` |/ _ \ '__|
|  _| (_| |  __/ (_| |  __/ |   
|_|  \__,_|\___|\__,_|\___|_|   
                    

]]-- 
do 

local function pre_process(msg) 
    --Checking mute 
    local hash = 'mate:'..msg.to.id 
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg)  then 
            delete_msg(msg.id, ok_cb, true) 
            send_large_msg(get_receiver(msg), '🚷❗️ عـۛزيـۛزي : '..msg.from.first_name..'\nمٌمٌنوع عمل اعآدة توجية مۧن آلُقنواة هناا..\nألتزم بـٲڵـقوۧانيۧن لتجنب الـطرد⛔️🎣\n🕴 #user : @'..msg.from.username) 
            return "done" 
        end 
        return msg 
    end 

local function iq_abs(msg, matches) 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "" 
  elseif is_momod(msg) and matches[1] == 'فتح' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:del(hash) 
                    return "" 
end 

end 

return { 
    patterns = { 
        '^(قفل) التوجية$', 
        '^(فتح) التوجية$' 
    }, 
    run = iq_abs, 
    pre_process = pre_process 
} 
end 
