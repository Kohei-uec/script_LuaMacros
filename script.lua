lmc_assign_keyboard("MACROS")

down = 0

lmc_set_handler("MACROS", function(btn, dir)

    if(dir == 1) then
           if(down == 0) then
           down = dir
                  if(btn == 107) then lmc_send_input(16,0,0)
                  elseif(btn == 13) then lmc_send_input(17,0,0)
                  end
           end
           return
    end
    down = dir
    lmc_send_input(16,0,2)
    lmc_send_input(17,0,2)
    if(btn == 110) then lmc_send_keys("^s")
    elseif(btn == 9) then lmc_send_keys("^z")
    elseif(btn == 111) then lmc_send_keys("^y")
    elseif(btn == 103) then lmc_send_keys("^c")
    elseif(btn == 104) then lmc_send_keys("^v")
    elseif(btn == 105) then lmc_send_keys("^+v")
    elseif(btn == 109) then lmc_send_keys("^d")
    elseif(btn == 106) then lmc_send_keys("^g")
    elseif(btn == 8) then lmc_send_keys("^u")
    elseif(btn == 100) then lmc_send_keys("{F1}")
    elseif(btn == 97) then lmc_send_keys("{PGUP}")
    elseif(btn == 96) then lmc_send_keys("{PGDN}")
    elseif(btn == 101) then lmc_send_keys("{F2}")
    elseif(btn == 102) then lmc_send_keys("+{F6}")
    elseif(btn == 98) then lmc_send_keys("{DEL}")
    --else print('not assigned')
    end

end
)

print('close this window to free the keyboard')
