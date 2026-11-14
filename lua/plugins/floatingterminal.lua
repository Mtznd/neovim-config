local state = {
  floating = {
    buf = -1,
    win = -1,
  },
}

--- Creates a floating terminal window with optional width height and state
--- @param opts table containing "width" "height" and "buf"
local function create_floating_terminal(opts)
  local editor_width = vim.o.columns
  local editor_height = vim.o.lines

  local width = opts.width or math.floor(editor_width * 0.85)
  local height = opts.height or math.floor(editor_height * 0.85)

  -- Center the window
  local col = math.floor((editor_width - width) / 2)
  local row = math.floor((editor_height - height) / 2)

  local buf = nil

  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true)
  end

  -- Open floating window
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    col = col,
    row = row,
    style = 'minimal',
    border = 'rounded',
  })

  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_terminal { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= 'terminal' then vim.cmd.terminal() end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

vim.api.nvim_create_user_command('Floaterminal', toggle_terminal, {})
vim.keymap.set({ 'n', 't' }, '<C-\\>', toggle_terminal)
