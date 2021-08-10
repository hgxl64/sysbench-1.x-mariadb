#!/usr/bin/env sysbench

-- you can run this script like this:
-- $ ./rand-test.lua --rand-type=gaussian run

sysbench.cmdline.options = {
    ["sleep"] = {"sleeptime [ms], argument to sysbench.rand.default()", 100}
}

function event()
    local s = sysbench.rand.default(0,sysbench.opt.sleep)
    os.execute("sleep " .. tonumber(s/1000))
end

