do

local function run(msg, matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1] == 'الاوامر' then 
    local ghost = [[
  🔹أهلا وسهلا 🙇🏻💕

🔹توجد ثلاثة قوائم للاوامر    

🔹تستخدم الاوامر بدون [/!#]

🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹- م1 === اوامر ادارة المجموعة

🔹- م2 === اوامر حماية المجموعة

🔹- م المطور === الاوامر الخاصة بالمطور
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
المطور🙀مسـ❦ـتر⇣✥⇣ۗ✬اوسـہۣۙ❦➦ℳℜ.tt 😻👇
💯-Đєⱴ💀: @AOSEE_TH
معرف المطور 2😼👇
💯-Đєⱴ💀: @AOSEE_TH_1
بوت تواصل للمحظورين 😾👇
💯-Đєⱴ💀:  @AOSEE_BOT
 قناتي 🔪🌝👇
💯 Dev ☠ CH . @AOSEE_THT

    ]]
  reply_msg(reply_id, ghost, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) then 
local ghost = "Only Owner 🙂❌ !" 
reply_msg(reply_id, ghost, ok_cb, false) 
end 

end 
return { 
patterns ={ 
  "^(الاوامر)$", 
}, 
run = run 
} 
end
--[[ تم التعطيل والتعريب بواسطه @xXxDev_iqxXx

  _____              _           
|  ___|_ _  ___  __| | ___ _ __ 
| |_ / _` |/ _ \/ _` |/ _ \ '__|
|  _| (_| |  __/ (_| |  __/ |   
|_|  \__,_|\___|\__,_|\___|_|   
                    
--]]