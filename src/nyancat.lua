local monitor = peripheral.find("monitor")
monitor.clear()
require('animation')

local palette = {}
palette[',']  = colors.blue  -- Blue background */
palette['.']  = colors.white -- White stars */
palette['\''] = colors.black  -- Black border */
palette['@']  = colors.brown -- Tan poptart */
palette['$']  = colors.pink -- Pink poptart */
palette['-']  = colors.red -- Red poptart */
palette['>']  = colors.red -- Red rainbow */
palette['&']  = colors.orange -- Orange rainbow */
palette['+']  = colors.yellow -- Yellow Rainbow */
palette['#']  = colors.green -- Green rainbow */
palette['=']  = colors.lightBlue  -- Light blue rainbow */
palette[';']  = colors.blue  -- Dark blue rainbow */
palette['*']  = colors.gray -- Gray cat face */
palette['%']  = colors.pink -- Pink cheeks */

local old_monitor = term.redirect(monitor)
for i, frame in ipairs(frames) do
    for y, row_str in ipairs(frame) do
        for x, #row_str do
            paintutils.drawPixel(x, y, palette[row_str:sub(x, x)]) 
        end
    end
end
term.redirect(old_monitor)
