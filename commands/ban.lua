

return {
    description = "bans a member from the server.",
    args = {{"user","Please specify a user."},{"string","Please state the ban reason."}},
    permissions = {roles = {"Bot Commander"}},
    category = "mod"
},
function(message,args,flags)
    local member = args.myArgs[1]
    local result = member:ban(7)
    if result then
        respond:success("Successfully banned **"..member.username.."**")
    else
        respond:error("Failed to ban **"..member.username.."**")
    end
end