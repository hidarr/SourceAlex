function ZhrfaGroup(msg)
if TypeForChat == ("ForSuppur") then
if text and (text:match('زخرفه عربي (.*)')) and not redis:get(bot_id..'Zhrfa:Group'..msg.chat_id_) then
local zhar = text:match('زخرفه عربي (.*)')
local zhrfar = http.request("http://teamstorm.tk/zht/?log=ar&Name="..zhar)
local Get_result = JSON.decode(zhrfar)
send(msg.chat_id_,msg.id_,'\n💢┇قائمة الزخرفه : \n ━━━━━━━━━━━━━\n'
..'1┇←  `'..Get_result.result.a..'`\n'
..'2┇←  `'..Get_result.result.b..'`\n'
..'3┇←  `'..Get_result.result.c..'`\n'
..'4┇←  `'..Get_result.result.d..'`\n'
..'5┇←  `'..Get_result.result.e..'`\n'
..'6┇←  `'..Get_result.result.g..'`\n'
..'7┇←  `'..Get_result.result.h..'`\n')
elseif text and (text:match('زخرفه انكلش (.*)')) and not redis:get(bot_id..'Zhrfa:Group'..msg.chat_id_) then
local zhen = text:match('زخرفه انكلش (.*)') 
local zhrfen = http.request("http://teamstorm.tk/zht/?log=en&Name="..zhen)
local Get_result = JSON.decode(zhrfen)
send(msg.chat_id_,msg.id_,'\n💢┇قائمة الزخرفه : \n ━━━━━━━━━━━━━\n'
..'1 ┇→  `'..Get_result.result.a..'`\n'
..'2 ┇→  `'..Get_result.result.b..'`\n'
..'3 ┇→  `'..Get_result.result.c..'`\n'
..'4 ┇→  `'..Get_result.result.d..'`\n'
..'5 ┇→  `'..Get_result.result.e..'`\n'
..'6 ┇→  `'..Get_result.result.f..'`\n'
..'7 ┇→  `'..Get_result.result.g..'`\n'
..'8 ┇→  `'..Get_result.result.h..'`\n'
..'9 ┇→  `'..Get_result.result.i..'`\n'
..'10┇→  `'..Get_result.result.j..'`\n'
..'11┇→  `'..Get_result.result.k..'`\n'
..'12┇→  `'..Get_result.result.l..'`\n'
..'13┇→  `'..Get_result.result.m..'`\n'
..'14┇→  `'..Get_result.result.n..'`\n'
..'15┇→  `'..Get_result.result.W..'`\n')
elseif text == ('تعطيل الزخرفه') and Constructor(msg) then
send(msg.chat_id_,msg.id_,'☑┇تم تعطيل الزخرفه في المجموعه ')
redis:set(bot_id..'Zhrfa:Group'..msg.chat_id_,true)
elseif text == ('تفعيل الزخرفه') and Constructor(msg) then
send(msg.chat_id_,msg.id_,'☑┇تم تفعيل الزخرفه في المجموعه ')
redis:del(bot_id..'Zhrfa:Group'..msg.chat_id_)
end
end
end
return {StormFile = ZhrfaGroup}
