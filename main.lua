require "TextField"

TextField:new()
TextField:setFocus(true)


function teste()
    print'timeout'
end
print'###########################'
--print(TextField:isFocused())
table.foreach(os.date('*t'), print)

print'\n\n\n'

--function handler(evt)


--end

--handler.register(handler)
